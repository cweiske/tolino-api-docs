===========================================================
``GET https://bosh.pageplace.de/bosh/rest/inventory/count``
===========================================================
Fetch the number of books/items in the cloud storage.

Part of the `sync process`_.


Request
=======

Header
  See `bosh v1 header set`_


Response
========
HTTP status code: ``200 OK``

Number of books.

Example:

.. include:: pageplace.bosh-bosh-rest-inventory-count.response.json
   :code:
