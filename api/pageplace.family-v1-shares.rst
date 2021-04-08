=============================================
``GET https://family.pageplace.de/v1/shares``
=============================================

Obtain the list of books shared in the family.

FIXME: Only books that are shared from/to the current user?

Part of the `sync process`_.

This is only called when the user has family member data
(`GET https://family.pageplace.de/v1/myself`_).


Request
=======
Header
  See `family v1 header set`_.

No request body.


Response
========
HTTP status code ``200 OK``.


Family members
--------------
Example:

.. include:: pageplace.family-v1-shares.response.json
   :code:
