======================================================================
``POST https://bosh.pageplace.de/bosh/rest/reseller/selection/report``
======================================================================

Notify tolino which shop has been selected.

This is probably used for tracking purposes since it is not required
function-wise for the e-reader.


Request
=======
Header
  ``hardware_id``
    Required.

    Example: ``665fc389ef4e47258c5db9fa7821bd19``

    It is not validated; it just must be non-empty.
  ``client_type``
    Example: ``TOLINO_VISION_3``
  ``client_version``
    Example: ``14.1.0``

GET parameters
  ``selectedShopId``
    Book shop ID, e.g. ``3`` for Thalia.


Response
========
HTTP ``200 OK`` without content.
