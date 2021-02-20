=======================================================
``PATCH https://bosh.pageplace.de/bosh/rest/sync-data``
=======================================================
Send changes to the server and get changes since last sync back.
This is the main API method for synchronization.

Part of the `Sync process`_.

Request
=======
Header
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

    No data to sync: Empty array ``[]``.

    FIXME: document structure


First sync request
------------------
When nothing needs to be synchronized to the server, and nothing
ever has been synchronized:

.. include:: pageplace.bosh-bosh-rest-sync-data.request-first.json
   :code:


Response
========
HTTP status code: ``200 OK``

FIXME: document different types and how progress is saved


New bookmarks and comments
--------------------------
Example:

.. include:: pageplace.bosh-bosh-rest-sync-data.response-bookmarks-comments.json
   :code:
