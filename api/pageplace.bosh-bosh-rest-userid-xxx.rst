======================================================
``GET https://bosh.pageplace.de/bosh/rest/userid/xxx``
======================================================
Step 5 in the `Login process`_.

Check if the device has been registered already to a user. (? FIXME)

Example ``xxx`` value: ``665fc389ef4e47258c5db9fa7821bd19``.

There is some explanation about the hardware id in
`tolino-python: tolinocloud.py <https://github.com/hzulla/tolino-python/blob/c655dbcd1b23e3874fd7dc78736570ac27ff5123/tolinocloud.py#L42>`_.

Request
=======
No body in the request, despite the ``Content-Type`` header.

Header
  ``t_auth_token``
    OAuth token obtained from `POST https://thalia.de/auth/oauth2/token`_.

    Example: ``eyJhbGciOiJSUzI1NiJ9.eyJhdWRpZW5jZSI6InRyZWFkZXJ2aXNpb24zIiw...``
  ``Accept``
    ``application/json; charset=UTF-8``
  ``m_id``
    FIXME: Maybe reseller ID?

    Example: ``3``
  ``hardware_id``
    Seems to be the same as the ``xxx`` value in the URL.

    Example: ``665fc389ef4e47258c5db9fa7821bd19``
  ``Content-Type``
    ``application/json; charset=UTF-8``
  ``client_type``
    Example: ``TOLINO_VISION_3``
  ``client_version``
    Example: ``14.1.0``


Response
========
HTTP status code: ``200 OK``

Example:

.. include:: pageplace.bosh-bosh-rest-userid-xxx.response.json
   :code:
