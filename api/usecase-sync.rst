============
Sync process
============
The user presses the synchronization button on the "My books" screen.

1. Check if the device is online: `GET http://bosh.pageplace.de/bosh/rest/ping`_
2. Fetch the reseller configuration: `GET https://bosh.pageplace.de/bosh/rest/v2/resellerconfig`_
3. Fetch the number of books/items in the cloud: `GET https://bosh.pageplace.de/bosh/rest/inventory/count`_
4. Fetch cloud book information: `GET https://inventory.pageplace.de/v2/inventory`_
5. Fetch the current date/time: `GET https://bosh.pageplace.de/bosh/rest/time`_
6. Fetch changes since last sync: `PATCH https://bosh.pageplace.de/bosh/rest/sync-data`_
7. Get list of resellers: `GET https://bosh.pageplace.de/bosh/rest/handshake/resellers`_
8. Fetch advertisements for the main screen: `GET https://bosh.pageplace.de/bosh/rest/recommendation/xyz`_
9. Fetch family membership information: GET https://family.pageplace.de/v1/myself

When the user is part of a family:

10. Fetch list of available dictionaries: GET https://bosh.pageplace.de/bosh/rest/dictionary/list
11. Fetch list of family members: GET https://family.pageplace.de/v1/family
12. Fetch list of shared books: GET https://family.pageplace.de/v1/shares


FIXME: What happens if the inventory count is 0? Is the inventory not fetched then?
