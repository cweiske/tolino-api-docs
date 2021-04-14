=============
Setup process
=============

Initial setup of a factory-reset e-reader.


Prelude
=======
1. Check if the internet is reachable: `GET http://clients3.google.com/generate_204`_
2. Check if the internet is really reachable: `GET http://mytolino.com/tolino-status.html?responseStatus=204`_
3. Check if the internet is really really reachable: `GET http://bosh.pageplace.de/bosh/rest/ping`_
4. Check if the internet is really really reachable a second time, just in case: `GET http://bosh.pageplace.de/bosh/rest/ping`_


Actual requests
===============
1. Get list of allowed countries for the reader: `GET https://bosh.pageplace.de/bosh/rest/reseller/countries`_
2. Get list of selectable book shops: `GET https://bosh.pageplace.de/bosh/rest/reseller/selection`_
3. Notify tolino about the selected shop: `POST https://bosh.pageplace.de/bosh/rest/reseller/selection/report`_
4. Fetch the tolino configuration for the shop: `GET https://bosh.pageplace.de/bosh/rest/v2/resellerconfig`_
5. FIXME
