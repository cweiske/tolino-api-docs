=============
Login process
=============

This happens in the web browser.

1. Fetch URL of login page: `GET https://thalia.de/auth/oauth2/authorize`_
2. Show login page with username + password form
3. Redirect to internal e-book reader login with code.

   Example redirect: ``Location: epublishing://login?code=GK6jDC``
4. Request OAuth access token: `POST https://thalia.de/auth/oauth2/token`_
5. Fetch user data: `GET https://bosh.pageplace.de/bosh/rest/userid/xxx`_
