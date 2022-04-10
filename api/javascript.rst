==============
Javascript API
==============

Non-browser web views have a special JavaScript API that provides
integration with Tolino UI elements.

Example is the ShopWebViewActivity that is opens when clicking the
"To the shop" link and the recommendations/advertisements on the main page.


``android_init()``
==================
When the page has been loaded in the web view,
a function ``android_init`` is invoked.
This can be used to detect if the page has been loaded on a Tolino.


``screenController``
====================
Each web view has a JavaScript variable ``screenController``
that provides the interface to the Tolino UI.


``screenController.hideNavigationHeader()``
  Hides the header when it was enabled with ``showNavigationHeader``.

``screenController.hideProgressDialog()``
  FIXME

``screenController.refreshScreen()``
  Re-draw the e-ink screen

``screenController.setNavigationHeaderTitle("my header")``
  Override the title in the navigation header.
  Call ``showNavigationHeader`` first.

``screenController.setNavigationHeaderUrl("epublishing://closeshop")``
  Set the URL of the "back" arrow button.

``screenController.setTokens("accesstoken", "refreshtoken")``
  FIXME

``screenController.showNavigationHeader("header title")``
  Show the native navigation header and set its title

``screenController.showProgressDialog()``
  FIXME

``screenController.processHTML("<html>")``
  Does nothing (Firmware 15.2)
