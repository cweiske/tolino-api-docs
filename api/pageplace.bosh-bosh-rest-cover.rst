==================================================
``POST https://bosh.pageplace.de/bosh/rest/cover``
==================================================
Upload the cover for an uploaded ``.epub`` file.

Step 2 of the `upload process`_.

Request
=======
Header
  ``Content-Type``
    ``multipart/form-data; boundary="Boundary1612163626238"``

Request body
  Control data
    Header
      ``Content-Disposition: form-data; name="control"``
    Content
      JSON
      ``{"filesize":334499,"transactionId":"84401550-d933-4f12-b168-87421835bada"}``

      The transaction ID is different than the one for the epub upload.
  File data
    Header
      ``Content-Disposition: form-data; name="file"; filename="1092560016"``
    Content
      Binary cover image contents
  Book reference
    Header
      ``Content-Disposition: form-data; name="deliverableId"``
    Content
      ``deliverableId`` of the epub upload response.

      Example: ``bosh_3_395490135492823841139311838``



Response
========
HTTP status code: ``200 OK``.

Meta data entry for the uploaded cover.

Example:

.. include:: pageplace.bosh-bosh-rest-cover.response.json
   :code:
