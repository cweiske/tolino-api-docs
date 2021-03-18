==============================================================
``GET https://bosh.pageplace.de/bosh/rest/cloud/downloadinfo``
==============================================================
Get information where to download a book from the cloud.

This is fetched when the reader shows a book available in the cloud
but has not been downloaded onto the reader.
Requesting the download first fetches this URL, then
the ``contentUrl`` is downloaded via
`GET https://bosh.pageplace.de/bosh/rest/content/xxx/yyy`_.

Step 1 of the download process.


Request
=======

Header
  See `bosh v1 header set`_

Path parts
  Example of a full path:
  ``https://bosh.pageplace.de/bosh/rest/cloud/downloadinfo/Ym9zaF8zXzM5NTQ5MDEzNTEzMTE3NTc3NDgwODE5ODk2NQ/Ym9zaF8zXzM5NTQ5MDEzNTEzMTE3NTc3NDgwODE5ODk2NQ/type/ANDROID_GK_6``

  FIXME: What are those parts? How to calculate them?


Response
========
HTTP status code: ``200 OK``

Download info with file size, URL and MIME type.

Example:

.. include:: pageplace.bosh-bosh-rest-cloud-downloadinfo.response.json
   :code:
