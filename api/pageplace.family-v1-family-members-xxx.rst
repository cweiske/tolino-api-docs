============================================================
``DELETE https://family.pageplace.de/v1/family/members/xxx``
============================================================

Remove someone from own family.


Request
=======
Header
  See `family v1 header set`_.

``xxx``
  Family member ID. Example: ``90498``


Response
========
Success
-------
HTTP status code ``200 OK``.

No response body (status code thus should be 204).


Removing non-member
-------------------
Status code: ``401 Unauthorized``. No response body.


Missing OAuth token
-------------------
Status code: ``401 Unauthorized``. Body::

    {
        "timestamp":"2021-04-08T15:52:13.186+00:00",
        "status":403,
        "error":"Forbidden",
        "message":"",
        "path":"/v1/family/members/90490"
    }
