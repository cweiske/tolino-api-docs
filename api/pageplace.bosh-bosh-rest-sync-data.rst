=======================================================
``PATCH https://bosh.pageplace.de/bosh/rest/sync-data``
=======================================================
Send changes to the server and get changes since last sync back.
This is the main API method for synchronization.

Part of the `Sync process`_.

Request
=======
Header
  Similar to `bosh v1 header set`_, but not exactly the same.
  Uses ``reseller_id`` instead of ``m_id`` and does not send the ``client_version``.

  ``t_auth_token``
    OAuth token obtained from `POST https://thalia.de/auth/oauth2/token`_.

    Example: ``eyJhbGciOiJSUzI1NiJ9.eyJhdWRpZW5jZSI6InRyZWFkZXJ2aXNpb24zIiw...``
  ``Content-Type``
    ``application/json; charset=UTF-8``
  ``Accept``
    ``application/json; charset=UTF-8``
  ``reseller_id``
    Example: ``3``
  ``hardware_id``
    Example: ``665fc389ef4e47258c5db9fa7821bd19``
  ``client_type``
    Example: ``TOLINO_VISION_3``
GET parameters
  ``paths``
    Example: ``publications``

    FIXME: What else?
Request body parameters
  ``revision``
    ``revision`` of last sync response.

    ``null`` when it is the first sync ever for this device.
  ``patches``
    Array of changes.

    When no data to sync:

    - in the request: Empty array ``[]``.
    - in the response: Property ``patches`` is omitted.

    Changes are objects with the following properties:

    ``op``
      The patch operation: ``add``, ``replace``, ``remove``

      ``replace`` is used to update the reading position or to rename
      a collection.

    ``path``
      Examples:

      - ``/publications/DT0400.9783739673417_A27522964/bookmark/606779074``
      - ``/publications/DT0400.9783641243609_A40398678/tags``

      Consists of several parts:

      1. The prefix seems always to be ``/publications/``.
      2. A publication ID ``DT0400.9783739673417_A27522964``
      3. The type that is created/updated/deleted:

         - ``bookmark`` is the reading position
         - ``dogears`` when bookmarking a page in the e-book
         - ``comments`` when highlighting/marking some text or adding a note
         - ``tags`` for collection management
      4. Server-side database ID.

         When doing ``op=add`` requests, the ID is only in the response,
         but not in the request.

    ``value``
      Details of the change. Properties depend on the type.

      ``modified``
        Time when this action was done in milliseconds. Type: Integer.

        Example: ``1612127562802``
      ``position``
        File name of the chapter in the epub,
        plus specific data in the anchor. Type: String.

        Example: ``OEBPS/caterina-di-montebasso-das-relikt_0.html#point(/1/2/1/11/1:114)``
      ``revision``
        FIXME. Type: String.

        FIXME: Can be ``null``:

        - When the book is added to a new collection.

        The patch part revisions share some prefix with the patch revision,
        but are a bit longer.
        Seem to be base64-encoded, since the often (always?) have ``==`` at the end.

        In the response, the patch part revisions also share some prefix with
        the new server revision.

        Example: ``Lmu7TngaxhKWHdv2FFktQNcGFPmnOshpANcqFEx7udpEDvQDdiq93W8ryZG4oSfm9D9sp2Aowkhu/1wg8qj4PglnxUFM96DOLgZMd9NVnTByM/ZG1vgkHHCrqwpA/7bO67OjTjo1TLKVL442Lx3sGw==``
      ``category``
        Known values:

        - ``collection`` (add or remove book from a collection (group of books))

        Only for ``tags`` (collection) patches.
      ``progress``
        Reading progress in the ranging from 0-1. Type: Float.

        Only for ``bookmark`` (reading position) patches.

        Example: ``0.41666666``
      ``currentPosition``
        Current page number. Type: String.

        Only for ``bookmark`` (reading position) patches.

        Example: ``"5"``
      ``lastPosition``
        Last page number in the book. Type: String

        Only for ``bookmark`` (reading position) patches.

        Example: ``"12"``
      ``transientId``
        FIXME. Type: String. String Content: Integer.

        Only when ``op=add`` on ``dogears`` (bookmark), ``comments``
        and ``tags`` (collection).

        Example: ``"3"``, ``"50"``.
      ``name``
        ``dogears``: Text on the bookmarked page. Type: String.

        ``tags``: Name of the collection (book group).

        Only for ``dogears`` (bookmark) and ``tags`` add+remove operations.
      ``text``
        Highlighted text. Type: String

        Only for ``comments`` (highlight/note) add+remove operations.
      ``startPosition``
        Start of highlighted text. Type: String.

        Only for ``comments`` (highlight/note) add+remove operations.

        Example: ``OEBPS/caterina-di-montebasso-das-relikt_0.html#point(/1/2/1/11/1:463)``
      ``endPosition``
        End of highlighted text. Type: String.

        Only for ``comments`` (highlight/note) add+remove operations.

        Example: ``OEBPS/caterina-di-montebasso-das-relikt_0.html#point(/1/2/1/11/1:682)``
      ``note``
        Manually entered text (note). Type: String.

        Only for ``comments`` (note) add+remove operations.

        Property does not appear for non-note highlights.

        Example: ``Really?``


When closing a book (going back to the book list), the current reading
position is synchronized to the server - regardless if it changed.
I removed that from the requests + responses to have cleaner examples.

The ``revision`` in the request is the ``revision`` the server returned
in the last response.


First sync request
------------------
When nothing needs to be synchronized to the server, and nothing
ever has been synchronized:

.. include:: pageplace.bosh-bosh-rest-sync-data.request-first.json
   :code:


Set reading position
--------------------
Reading a page in the book and exiting back to the books list:

.. include:: pageplace.bosh-bosh-rest-sync-data.request-reading-position.json
   :code:



Response
========
HTTP status code: ``200 OK``

When something changed, a new ``revision`` number is returned.

When synchronizing local changes to the server - and the server has no
changes from other readers,
the request is mirrored back in the response
(only the revision number is updated).

The server first ingests the request's patch data into its database,
and then calculates and returns the changes from the
requests's ``revision`` number to the current revision.
Those changes are returned in the response, together with the current
latest revision number.

Same structure as the request data.


Set reading position
--------------------
The "Set reading position" changes and a new revision is returned.

.. include:: pageplace.bosh-bosh-rest-sync-data.response-reading-position.json
   :code:


Set a bookmark
--------------

.. include:: pageplace.bosh-bosh-rest-sync-data.response-bookmark-set.json
   :code:


Remove a bookmark
-----------------

.. include:: pageplace.bosh-bosh-rest-sync-data.response-bookmark-remove.json
   :code:


Add a highlight
---------------

.. include:: pageplace.bosh-bosh-rest-sync-data.response-highlight-add.json
   :code:


Remove a highlight
------------------

.. include:: pageplace.bosh-bosh-rest-sync-data.response-highlight-remove.json
   :code:


Add a note
----------

.. include:: pageplace.bosh-bosh-rest-sync-data.response-note-add.json
   :code:


Remove a note
-------------

.. include:: pageplace.bosh-bosh-rest-sync-data.response-note-remove.json
   :code:


Remove from collection
----------------------
Here the book gets removed from the group (collection) "Zweicoll".

.. include:: pageplace.bosh-bosh-rest-sync-data.response-collection-remove.json
   :code:


New bookmarks and comments
--------------------------
Example:

.. include:: pageplace.bosh-bosh-rest-sync-data.response-bookmarks-comments.json
   :code:
