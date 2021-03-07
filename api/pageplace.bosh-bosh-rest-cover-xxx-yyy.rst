=========================================================
``GET https://bosh.pageplace.de/bosh/rest/cover/xxx/yyy``
=========================================================
Fetch the cover for a manually uploaded book.

Part of the `upload process`_.

Request
=======
Only three headers. Unusual.

Full URL example: ``https://bosh.pageplace.de/bosh/rest/cover/39549013/bosh_3_395490135492823841139311838?size=WS-B04``

URL path parts
  ``xxx``
    8 bytes of the publication ID

    Example: ``39549013``
  ``yyy``
    Publication ID

    Example: ``bosh_3_395490135492823841139311838``
Header
  ``m_id``
    Maybe reseller ID?

    Example: ``3``
  ``Host``
    ``bosh.pageplace.de``
  ``Connection``
    ``Keep-Alive``

GET parameters
  ``size``
    Image size (so we get a scaled version)

    Known values:

    - ``WS-B04``


Response
========
HTTP status code: ``200 OK``.

Binary cover image data.
