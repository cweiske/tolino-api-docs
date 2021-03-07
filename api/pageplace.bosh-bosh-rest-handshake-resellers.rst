===============================================================
``GET https://bosh.pageplace.de/bosh/rest/handshake/resellers``
===============================================================

Get a list of resellers (book shops) that can be selected when
the Tolino reader is unlocked.

It is also used when linking the Tolino to another account on
a different book seller. (FIXME: verify)

Part of the `sync process`_.


Request
=======
Header
  See `bosh v1 header set`_


Response
========
HTTP status code ``200 OK``.

Example:

.. include:: pageplace.bosh-bosh-rest-handshake-resellers.response.json
   :code:
