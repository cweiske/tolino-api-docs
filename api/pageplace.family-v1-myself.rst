=============================================
``GET https://family.pageplace.de/v1/myself``
=============================================

Obtain the family member ID.

Part of the `sync process`_.


Request
=======
Header
  See `family v1 header set`_.

No request body.


Response
========
HTTP status code ``200 OK``.


No family membership
--------------------
Example:

.. include:: pageplace.family-v1-myself.response-nomember.json
   :code:


Member information
-------------------
Example:

.. include:: pageplace.family-v1-myself.response-member.json
   :code:
