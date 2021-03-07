======================================================
``GET https://bosh.pageplace.de/bosh/rest/userid/xxx``
======================================================
Step 5 in the `Login process`_.

FIXME: Check if the device has been registered already to a user.

Example ``xxx`` value: ``665fc389ef4e47258c5db9fa7821bd19``.

There is some explanation about the hardware id in
`tolino-python: tolinocloud.py <https://github.com/hzulla/tolino-python/blob/c655dbcd1b23e3874fd7dc78736570ac27ff5123/tolinocloud.py#L42>`_.


Request
=======
No body in the request, despite the ``Content-Type`` header.

Header
  See `bosh v1 header set`_.


Response
========
HTTP status code: ``200 OK``

Example:

.. include:: pageplace.bosh-bosh-rest-userid-xxx.response.json
   :code:
