==============================================================
``GET https://bosh.pageplace.de/bosh/rest/reseller/selection``
==============================================================

Fetch list of book sellers the e-reader can be used with.

Step 2 of the `Setup process`_.

``pageplace.de`` seems to have a list of hardware IDs and their
associated sellers.
E-reader devices sold by thalia.de can only choose thalia as book shop
when it is being setup.

Only those book shops are returned that the device may be used with.

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
  ``client_type``
    Required.

    Example: ``TOLINOVISION3_14.1.0``
  ``countryCode``
    Required.

    The two-letter uppercase country code taken from `GET https://bosh.pageplace.de/bosh/rest/reseller/countries`_

    Example: ``DE``
  ``languageCode``
    Two-letter e-reader interface language code.

    Does not seem to have any influence on the response.

    Example: ``en``

Response
========

Non-rebrandable device
----------------------
HTTP status code ``200 OK``.

Returns only one reseller.

Example:

.. include:: pageplace.bosh-bosh-rest-reseller-selection.response.json
   :code:


Missing countryCode parameter
-----------------------------
Status Code: ``400 Bad Request``

.. include:: pageplace.bosh-bosh-rest-reseller-selection.response-missingparam.json
   :code:


Missing hardware_id header
--------------------------
When no or an unknown ``hardware_id`` header is passed,
a ``404 Not Found`` status code is returned together with an error message:

.. include:: pageplace.bosh-bosh-rest-reseller-selection.response-nohardwareid.json
   :code:
