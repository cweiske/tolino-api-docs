=============
Login process
=============

The user-facing stuff happens in the web browser.

1. Fetch URL of login page: `GET https://thalia.de/auth/oauth2/authorize`_
2. Show login page with username + password form
3. Redirect to internal e-book reader login with code.

   Example redirect: ``Location: epublishing://login?code=GK6jDC``
4. Request OAuth access token: `POST https://thalia.de/auth/oauth2/token`_
5. Check if the device has been registered already: `GET https://bosh.pageplace.de/bosh/rest/userid/xxx`_
6. Register the device to the user: `POST https://bosh.pageplace.de/bosh/rest/v2/registerhw`_
7. Run the `Sync process`_
