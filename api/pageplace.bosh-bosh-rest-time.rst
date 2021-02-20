================================================
``GET https://bosh.pageplace.de/bosh/rest/time``
================================================
Part of the `Sync process`_.

Response is empty.

FIXME: What is that used for? Fetching the current time?


Request
=======
No headers except ``Host: bosh.pageplace.de`` and ``Connection: Keep-Alive``.
This is strange, because almost all requests have a couple of other
default headers (``Accept``, ``Content-Type``) - so this must be deliberate.

Response
========
HTTP status code: ``200 OK``.

No content.
Maybe the time is fetched from the ``Date`` header.

Example:

.. include:: pageplace.bosh-bosh-rest-time.response-headers.txt
   :code:
