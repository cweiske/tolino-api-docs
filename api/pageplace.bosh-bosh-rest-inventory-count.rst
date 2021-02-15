===========================================================
``GET https://bosh.pageplace.de/bosh/rest/inventory/count``
===========================================================
Fetch the number of books/items in the cloud storage.

Part of the `sync process`_.


Request
=======

Header
  ``t_auth_token``
    OAuth token obtained from `POST https://thalia.de/auth/oauth2/token`_.

    Example: ``eyJhbGciOiJSUzI1NiJ9.eyJhdWRpZW5jZSI6InRyZWFkZXJ2aXNpb24zIiw...``
  ``Accept``
    Example: ``application/json; charset=UTF-8``
  ``m_id``
    FIXME: Maybe reseller ID?

    Example: ``3``
  ``hardware_id``
    Seems to be the same as the ``xxx`` value in the URL.

    Example: ``665fc389ef4e47258c5db9fa7821bd19``
  ``Content-Type``
    ``application/json; charset=UTF-8``

    This is a lie; there is no request body.
  ``client_type``
    Example: ``TOLINO_VISION_3``
  ``client_version``
    Example: ``14.1.0``


Response
========
HTTP status code: ``200 OK``

Number of books.

Example:

.. include:: pageplace.bosh-bosh-rest-inventory-count.response.json
   :code:
