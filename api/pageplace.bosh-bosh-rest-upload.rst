===================================================
``POST https://bosh.pageplace.de/bosh/rest/upload``
===================================================
Upload a new book ``.epub`` file.

Step 1 of the `upload process`_.


Request
=======
Header
  Nearly identical to the `bosh v1 header set`_, but not exactly the same.
  No ``client_type``, no ``client_version``.

  ``Content-Type``
    ``multipart/form-data; boundary="Boundary1612163626238"``
  ``Content-Transfer-Encoding``
    ``binary``
  ``Content-Length``
    Depending on the request body.

Request body
  Control data
    Header
      ``Content-Disposition: form-data; name="control"``
    Content
      JSON
      ``{"filesize":334499,"transactionId":"84401550-d933-4f12-b168-87421835bada"}``
  File data
    Header
      ``Content-Disposition: form-data; name="file"; filename="MacBest by Pratchett Terry.epub"``
    Content
      Binary .epub file contents


Response
========
HTTP status code: ``200 OK``.

Meta data entry for the uploaded file.

Example:

.. include:: pageplace.bosh-bosh-rest-upload.response.json
   :code:
