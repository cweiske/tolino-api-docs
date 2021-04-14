==============================================================
``GET https://bosh.pageplace.de/bosh/rest/reseller/countries``
==============================================================

Fetch list of countries the e-reader can be used with.

Step 1 of the `Setup process`_.

``pageplace.de`` seems to have a list of hardware IDs and their
associated sellers.
E-reader devices sold by thalia.de can only choose thalia as book shop
when it is being setup.

Only those countries are returned that the device seller is available in.

Request
=======
Header
  ``hardware_id``
    Required.

    Example: ``665fc389ef4e47258c5db9fa7821bd19``
  ``client_type``
    Example: ``TOLINO_VISION_3``
  ``client_version``
    Example: ``14.1.0``

GET parameters
  ``languageCode``
    Two-letter e-reader interface language code.

    Does not seem to have any influence on the response.

    Example: ``en``

Response
========

Non-rebrandable device
----------------------
HTTP status code ``200 OK``.

Has ``rebrandable`` property set to ``false``.

Example:

.. include:: pageplace.bosh-bosh-rest-reseller-countries.response.json
   :code:


Missing hardware_id header
--------------------------
When no hardware_id is passed, a ``404 Not Found`` status code is returned
together with an error message:

.. include:: pageplace.bosh-bosh-rest-reseller-countries.response-nohardwareid.json
   :code:
