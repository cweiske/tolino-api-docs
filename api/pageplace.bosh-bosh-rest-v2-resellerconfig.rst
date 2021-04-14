=============================================================
``GET https://bosh.pageplace.de/bosh/rest/v2/resellerconfig``
=============================================================

Fetch information about a given tolino reseller (shop):

- Authentication URLs
- Browser start page
- Brand name ("Thalia.de")
- if LCP encryption is available

etc.


Request
=======
Header
  ``ifmodifiedsince``
    Timestamp with microseconds of last reseller config file version

    Example: ``1603111725000``
  ``reseller_id``
    Example: ``3``

    Required. "400 Bad Request" if missing.
  ``hardware_type``
    Example: ``tolino_vision_3``
  ``os_version``
    Android version

    Example: ``4.4.2``
  ``language_code``
    Example: ``en``
  ``hardware_id``
    Example: ``665fd389ea4e47228c5db8fa7821bd23``
  ``client_type``
    Example: ``TOLINO_VISION_3``

    Required. "400 Bad Request" if missing.
  ``client_version``
    Tolino firmware version

    Example: ``14.1.0``


Response
========

``HTTP/1.1 304 Not Modified`` if the ``ifmodifiedsince`` header is equal or
later than the modification date.


Success
-------
``HTTP/1.1 200 OK`` for the content

Example for headers ``reseller_id:3`` and ``client_type:TOLINO_VISION_3``:

.. include:: pageplace.bosh-bosh-rest-v2-resellerconfig.response-ok.json
   :code:


Example for headers ``reseller_id:3`` and ``client_type:TOLINO_VISION_2``:

.. include:: pageplace.bosh-bosh-rest-v2-resellerconfig.response-ok-tolinovision2.json
   :code:


Example for headers ``reseller_id:3`` and ``client_type:TOLINO_VISION_1``:

.. include:: pageplace.bosh-bosh-rest-v2-resellerconfig.response-ok-tolinovision1.json
   :code:
