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
    Example: ``gcor=SIDYBbxYkmvUvoO8hy@2Sfx4QAAA9o; ab_bucket=9; ab_container=3; OAUTH-JSESSIONID=9C95C20ECEE74164E76F60C205147822.15acdb90``
  ``Cookie2``
    ``$Version=1``

POST parameters
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


Response
========
HTTP status code ``200 OK``

.. include:: thalia-auth-oauth2-token-post.response.json
   :code:
