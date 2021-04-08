================================================
``DELETE https://family.pageplace.de/v1/shares``
================================================

Un-share a book.


Request
=======
Header
  See `family v1 header set`_.
GET parameters
  ``pubid``
    Example: ``DT0400.9783641243609_A40398678``
  ``receiver``
    Example: ``67674``
  ``sharer``
    Example: ``67675``

No body.

Response
========
HTTP status code ``200 OK``.

No response body (thus status code should better be 204).
