==============================================
``POST https://family.pageplace.de/v1/family``
==============================================

Add someone to a family.

To add a family member, an OAuth token with scope ``family`` needs to be
obtained.


Request
=======
Header
  See `family v1 header set`_.

Body
  JSON encoded object.

  ``resellerId``
    Example: ``81``
  ``token``
    Example: ``eyJhbGciOiJSUzUxMiJ9.eyJpc3MiOiJ3...hGCE8Yc6g``


Response
========
HTTP status code ``200 OK``.

All family members are returned.

Family with 3 members
---------------------
Example:

.. include:: pageplace.family-v1-family-post.response.json
   :code:
