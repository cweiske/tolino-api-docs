=======
Headers
=======

``User-Agent``
  Normal API requests:

  ``Dalvik/1.6.0 (Linux; U; Android 4.4.2; tolino Build/KOT49H)``

  The browser:

  ``Mozilla/5.0 (Linux; Android 4.4.2; en-; tolino vision 3 HD/14.1.0) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/30.0.0.0 Mobile Mobile Safari/537.36 READER OS_BUILD/KOT49H.41429.1044823``


bosh v1 header set
==================
Headers common in all HTTP requests to ``https://bosh.pageplace.de/bosh/rest/...``
(except ``../rest/v2/``).

``t_auth_token``
  OAuth token obtained from `POST https://thalia.de/auth/oauth2/token`_.

  Example: ``eyJhbGciOiJSUzI1NiJ9.eyJhdWRpZW5jZSI6InRyZWFkZXJ2aXNpb24zIiw...``
``Accept``
  Example: ``application/json; charset=UTF-8``
``m_id``
  Probably the reseller ID

  Example: ``3``
``hardware_id``
  FIXME: Serial number of the ebook reader?

  Example: ``665fc389ef4e47258c5db9fa7821bd19``
``Content-Type``
  ``application/json; charset=UTF-8``

  Always set even if there is no request body.
``client_type``
  Example: ``TOLINO_VISION_3``
``client_version``
  Example: ``14.1.0``


family v1 header set
====================
``Authorization``
  OAuth token obtained from `POST https://thalia.de/auth/oauth2/token`_.

  Example: ``Bearer eyJhbGciOiJSUzI1NiJ9.eyJhdWRpZW5jZSI6InRyZWFkZXJ2aXNpb24zIiw...``
``Accept``
  Example: ``application/json; charset=UTF-8``
``Accept-Encoding``
  ``gzip``
``m_id``
  Probably reseller ID.

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
