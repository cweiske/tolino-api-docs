=================================================================
``GET http://mytolino.com/tolino-status.html?responseStatus=204``
=================================================================

Check if the internet is reachable.

Request
=======
Header
  ``User-Agent``
    Example: ``Dalvik/1.6.0 (Linux; U; Android 4.4.2; tolino Build/KOT49H)``


Response
========
At the time of writing, a ``301 Moved Permanently`` is returned (2021-04)
with a location header to
https://mytolino.com/tolino-status.php?responseStatus=204 .

That URL returns a ``204 No Content`` response.
