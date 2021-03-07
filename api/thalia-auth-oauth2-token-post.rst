============================================
``POST https://thalia.de/auth/oauth2/token``
============================================
Step 4 of the `Login process`_.

Uses:

1. Log in to obtain an access token.
2. Generate access token from a refresh token.


Request
=======
GET parameters
  ``client_secret``
    Provided in the reseller configuration.

    Example: ``gU5a7CA9``

Headers
  ``Content-Type``
    ``application/x-www-form-urlencoded``
  ``User-Agent``
    ``DT_EINK_10_NETRONIX DT_EINK_UPD_PP_14.1.0``
  ``Cookie``:
    The ``refresh_token`` request sends no cookie.

    Example: ``gcor=SIDYBbxYkmvUvoO8hy@2Sfx4QAAA9o; ab_bucket=9; ab_container=3; OAUTH-JSESSIONID=9C95C20ECEE74164E76F60C205147822.15acdb90``
  ``Cookie2``
    ``$Version=1``

POST parameters: New token
  ``grant_type``:
    ``authorization_code``
  ``redirect_uri``
    ``epublishing://login``

    The e-reader internal login process
  ``code``
    Obtained from login form page redirect.

    Example: ``GK6jDC``
  ``client_id``
    Example: ``treadervision3``

POST parameters: Refresh token
  ``grant_type``
    ``refresh_token``
  ``refresh_token``
    Obtained in the last OAuth token response.

    Example: ``91132a11-dd87-4450-bf16-a63dff1da4d1``
  ``client_id``
    Example: ``treadervision3``



Response
========
HTTP status code ``200 OK``

.. include:: thalia-auth-oauth2-token-post.response.json
   :code:
