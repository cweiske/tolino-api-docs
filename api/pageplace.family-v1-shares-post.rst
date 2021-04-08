==============================================
``POST https://family.pageplace.de/v1/shares``
==============================================

Share a book with a family member


Request
=======
Header
  See `family v1 header set`_.

Body
  JSON-Encoded. Structure:

  ``shares``
    Array of books to share (each an object)

    ``publicationId``
      Example: ``DT0400.9783641243609_A40398678``
    ``receiver``
      Example: ``67674``


.. include:: pageplace.family-v1-shares-post.request.json
   :code:

Response
========
HTTP status code ``200 OK``.

No response body (thus status code should better be 204).
