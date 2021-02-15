==========================================================
``POST https://bosh.pageplace.de/bosh/rest/v2/registerhw``
==========================================================
Step 6 in the `Login process`_.

Register the e-book reader's hardware ID with the user account.


Request
=======

Header
  ``t_auth_token``
    OAuth token obtained from `POST https://thalia.de/auth/oauth2/token`_.

    Example: ``eyJhbGciOiJSUzI1NiJ9.eyJhdWRpZW5jZSI6InRyZWFkZXJ2aXNpb24zIiw...``
  ``reseller_id``
    Example: ``3``
  ``hardware_type``
    Example: ``tolino_vision_3``
  ``os_version``
    Example: ``4.4.2``
  ``language_code``
    Example: ``en``
  ``hardware_id``
    Example: ``665fc389ef4e47258c5db9fa7821bd19``
  ``client_type``
    Example: ``TOLINO_VISION_3``
  ``client_version``
    Example: ``14.1.0``
  ``Content-Type``
    ``text/plain; charset=UTF-8``

    This is a lie, because the request body is JSON.

Body
  .. include:: pageplace.bosh-bosh-rest-v2-registerhw.request.json
     :code:


Response
========
HTTP status code: ``200 OK``

Contains a device key, the changelog in several languages and
the latest firmware version including its download URL.

Example:

.. include:: pageplace.bosh-bosh-rest-v2-registerhw.response.json
   :code:
