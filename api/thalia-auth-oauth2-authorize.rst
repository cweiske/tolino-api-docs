===============================================
``GET https://thalia.de/auth/oauth2/authorize``
===============================================
Fetch URL of actual login page.

First step in the `Login process`_.

Source
======
This URL is provided in the reseller configuration,
key ``config.URL_OAUTH_ACCESSTOKEN``.


Request
=======
GET Parameters
  ``response_type``
    Example: ``code``
  ``scope``
    Example: ``SCOPE_BOSH%20SCOPE_BUCHDE%20SCOPE_MANDANT_ID.2004%20SCOPE_LOGIN%20FAMILY``
  ``redirect_uri``
    Example: ``epublishing://login``
  ``x_buchde.skin_id``
    Example: ``17``
  ``client_id``
    Example: ``treadervision3``
Headers
  ``User-Agent``
    Browser user agent.
  ``lcp``
    Example: ``1``
  ``X-Requested-With``
    Example: ``de.telekom.epub``


Response
========
Redirect to actual login page.

Status code: HTTP/1.1 302

Header
  ``Location``:
    Example: ``https://thalia.de/de.thalia.ecp.authservice.application/oauth2/login?response_type=code&scope=SCOPE_BOSH%20SCOPE_BUCHDE%20SCOPE_MANDANT_ID.2004%20SCOPE_LOGIN%20FAMILY&redirect_uri=epublishing://login&x_buchde.skin_id=17&client_id=treadervision3``
