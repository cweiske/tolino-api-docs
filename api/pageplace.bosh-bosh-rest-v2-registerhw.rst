==========================================================
``POST https://bosh.pageplace.de/bosh/rest/v2/registerhw``
==========================================================
Step 6 in the `Login process`_.

Register the e-book reader's hardware ID with the user account.


Request
=======

Header
  See `bosh v2 header set`_, plus:

  ``t_auth_token``
    OAuth token obtained from `POST https://thalia.de/auth/oauth2/token`_.

    Example: ``eyJhbGciOiJSUzI1NiJ9.eyJhdWRpZW5jZSI6InRyZWFkZXJ2aXNpb24zIiw...``
  ``reseller_id``
    Example: ``3``
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
