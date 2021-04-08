=============================================
``PUT https://family.pageplace.de/v1/myself``
=============================================

Rename myself in the family.


Request
=======
Header
  See `family v1 header set`_.

Body
  JSON-Encoded. Structure:

  ``nickname``
    New own name


.. include:: pageplace.family-v1-myself-put.request.json
   :code:

Response
========
HTTP status code ``200 OK``.

.. include:: pageplace.family-v1-myself-put.response.json
   :code:
