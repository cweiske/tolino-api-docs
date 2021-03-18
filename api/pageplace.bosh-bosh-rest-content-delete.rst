===========================================================
``POST https://bosh.pageplace.de/bosh/rest/content/delete``
===========================================================
Delete a book from the cloud.


Request
=======

Headers
  See `bosh v1 header set`_

Request body
  ``contentDeleteRequest``
    ``content``
      Array of objects with a ``deliverableId`` property
    ``deleteAll``
      ``true`` or ``false`` (Only ``true`` observed yet)


Example:

.. include:: pageplace.bosh-bosh-rest-content-delete.request.json
   :code:


Response
========
HTTP status code: ``200 OK``.

No content.
