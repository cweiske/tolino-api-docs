==============================================================
``GET https://bosh.pageplace.de/bosh/rest/recommendation/xyz``
==============================================================

Get advertisements for the main reader screen.

FIXME: Why the ``xyz`` in the URL?

Part of the `sync process`_.


Request
=======
Header
  See `bosh v1 header set`_
GET parameters
  ``count``
    Number of recommendations to return

    Example: ``12``
  ``fullShopUrl``
    ``true``


Response
========
HTTP status code ``200 OK``.

Example:

.. include:: pageplace.bosh-bosh-rest-recommendation-xyz.response.json
   :code:
