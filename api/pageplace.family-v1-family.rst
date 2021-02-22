=============================================
``GET https://family.pageplace.de/v1/family``
=============================================

Get the list of family members.

Part of the `sync process`_.

This is only called when the user has family member data
(`GET https://family.pageplace.de/v1/myself`_).


Request
=======
Header
  ``Authorization``
    OAuth token obtained from `POST https://thalia.de/auth/oauth2/token`_.

    Example: ``Bearer eyJhbGciOiJSUzI1NiJ9.eyJhdWRpZW5jZSI6InRyZWFkZXJ2aXNpb24zIiw...``
  ``Accept``
    Example: ``application/json; charset=UTF-8``
  ``Accept-Encoding``
    ``gzip``
  ``m_id``
    FIXME: Maybe reseller ID?

    Example: ``3``
  ``Hardware-Id``
    Example: ``665fc389ef4e47258c5db9fa7821bd19``
  ``Content-Type``
    ``application/json; charset=UTF-8``

    This is a lie; there is no request body.
  ``client_type``
    Example: ``TOLINO_VISION_3``
  ``client_version``
    Example: ``14.1.0``
  ``Reseller-Id``
    Example: ``3``
  ``Cookie``
    Multiple times:

    -  ``OAUTH-JSESSIONID=3EFAEC6B69D811252C75861880C338AB.15acdb90; Path=/; Secure; HttpOnly``
    - ``JSESSIONID=C0D8A077F6D2E13251ECDCD60FE6D18A``
  ``Cookie2``
    Example: ``$Version=1``

No request body.


Response
========
HTTP status code ``200 OK``.


Family members
--------------
Example:

.. include:: pageplace.family-v1-family.response-members.json
   :code:
