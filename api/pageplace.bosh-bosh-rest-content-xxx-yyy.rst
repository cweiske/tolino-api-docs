===========================================================
``GET https://bosh.pageplace.de/bosh/rest/content/xxx/yyy``
===========================================================
Download a book from the cloud.

The URL is obtained from `GET https://bosh.pageplace.de/bosh/rest/cloud/downloadinfo`_.

Step 2 of the download process.


Request
=======

Header
  Parts of the `bosh v1 header set`_:

  ``hardware_id``

  ``m_id``

  ``t_auth_token``

Path parts
  Example of a full path:
  ``https://bosh.pageplace.de/bosh/rest/content/bf70563e-2d57-41a7-89d3-023f0c8cc650/MacBest+by+Pratchett+Terry.epub``

  ``xxx``
    Some kind of UUID.

  ``yyy``
    Human-readable file name


Response
========
HTTP status code: ``200 OK``

ebook file content.


Error response: Header missing
------------------------------
``HTTP/1.1 400 Bad Request``

.. include:: pageplace.bosh-bosh-rest-content-xxx-yyy.response-missingheader.json
   :code:
