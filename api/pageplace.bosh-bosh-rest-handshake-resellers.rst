===============================================================
``GET https://bosh.pageplace.de/bosh/rest/handshake/resellers``
===============================================================

Get a list of resellers (book shops) that can be selected when
the Tolino reader is unlocked.

It is also used when linking the Tolino to another account on
a different book seller. (FIXME: verify)

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
HTTP status code ``200 OK``.

Example:

.. include:: pageplace.bosh-bosh-rest-handshake-resellers.response.json
   :code:
