==============
Upload process
==============
The user wants to upload a book on the reader to the cloud.

1. Upload the epub file: `POST https://bosh.pageplace.de/bosh/rest/upload`_
2. Upload the cover image: `POST https://bosh.pageplace.de/bosh/rest/cover`_
3. Fetch the number of books in the cloud: `GET https://bosh.pageplace.de/bosh/rest/inventory/count`_
4. Fetch the current date/time: `GET https://bosh.pageplace.de/bosh/rest/time`_
5. Fetch changes since last sync: `PATCH https://bosh.pageplace.de/bosh/rest/sync-data`_

Some time later:

6. Download the cover of the uploaded book: `GET https://bosh.pageplace.de/bosh/rest/cover/xxx/yyy`_
