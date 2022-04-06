============================================================
``POST https://bosh.pageplace.de/bosh/rest/v2/versioncheck``
============================================================

Was not used in firmware 13.


Request
=======

Header
  See `bosh v2 header set`_, plus:

  ``Content-Type``
    ``text/plain; charset=UTF-8``

    This is a lie, because the request body is JSON.

Body
  .. include:: pageplace.bosh-bosh-rest-v2-versioncheck.request.json
     :code:


Response
========

Example: Update available
-------------------------
Tolino firmware 14 made the request, version 15.2.0 was available.

Key ``update`` is ``2``.

.. include:: pageplace.bosh-bosh-rest-v2-versioncheck.response-update.json
   :code:


Example: No update available
----------------------------
Key ``update`` is ``0``.

.. include:: pageplace.bosh-bosh-rest-v2-versioncheck.response-noupdate.json
   :code:
