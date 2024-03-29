******************************
Tolino cloud API documentation
******************************

Servers the Tolino Vision 3/4 HD talk to (Firmware 14.x).

Work in progress.

.. contents::
   :depth: 2


General information
*******************
.. include:: api/headers.rst
.. include:: api/domains.rst
.. include:: api/doc-official.rst
.. include:: api/identifiers.rst


Use cases
*********
.. include:: api/usecase-setup.rst
.. include:: api/usecase-login.rst
.. include:: api/usecase-sync.rst
.. include:: api/usecase-upload.rst


API calls
*********
.. include:: api/pageplace.bosh-bosh-rest-cloud-downloadinfo.rst
.. include:: api/pageplace.bosh-bosh-rest-content-xxx-yyy.rst
.. include:: api/pageplace.bosh-bosh-rest-content-delete.rst
.. include:: api/pageplace.bosh-bosh-rest-cover.rst
.. include:: api/pageplace.bosh-bosh-rest-cover-xxx-yyy.rst
.. include:: api/pageplace.bosh-bosh-rest-dictionary-list.rst
.. include:: api/pageplace.bosh-bosh-rest-handshake-resellers.rst
.. include:: api/pageplace.bosh-bosh-rest-inventory-count.rst
.. include:: api/pageplace.bosh-bosh-rest-ping.rst
.. include:: api/pageplace.bosh-bosh-rest-recommendation-xyz.rst
.. include:: api/pageplace.bosh-bosh-rest-reseller-countries.rst
.. include:: api/pageplace.bosh-bosh-rest-reseller-selection.rst
.. include:: api/pageplace.bosh-bosh-rest-reseller-selection-report-post.rst
.. include:: api/pageplace.bosh-bosh-rest-sync-data.rst
.. include:: api/pageplace.bosh-bosh-rest-time.rst
.. include:: api/pageplace.bosh-bosh-rest-upload.rst
.. include:: api/pageplace.bosh-bosh-rest-userid-xxx.rst
.. include:: api/pageplace.bosh-bosh-rest-v2-registerhw.rst
.. include:: api/pageplace.bosh-bosh-rest-v2-resellerconfig.rst
.. include:: api/pageplace.bosh-bosh-rest-v2-versioncheck.rst
.. include:: api/pageplace.family-v1-family.rst
.. include:: api/pageplace.family-v1-family-post.rst
.. include:: api/pageplace.family-v1-family-members-xxx.rst
.. include:: api/pageplace.family-v1-myself.rst
.. include:: api/pageplace.family-v1-myself-put.rst
.. include:: api/pageplace.family-v1-shares.rst
.. include:: api/pageplace.family-v1-shares-delete.rst
.. include:: api/pageplace.family-v1-shares-post.rst
.. include:: api/pageplace.inventory-v2-inventory.rst
.. include:: api/thalia-auth-oauth2-authorize.rst
.. include:: api/thalia-auth-oauth2-token-post.rst


Other requests
**************
.. include:: api/google.clients3-generate_204.rst
.. include:: api/mytolino-tolino-status.rst
.. include:: api/internal-urls.rst
.. include:: api/javascript.rst


About
*****
This documentation has been written by Christian Weiske,
cweiske+tolino@cweiske.de.

Last update: ##UPDATE##


=======
License
=======
It is licensed under the GNU Free Documentation License.


===========
Source code
===========
The documentation sources are available at
http://git.cweiske.de/tolino-api-docs.git/
and mirrored at
https://github.com/cweiske/tolino-api-docs


=========
Home page
=========
A rendered version of this documentation is available at
http://cweiske.de/tolino-api-docs.htm


========
Building
========
You need to install ``rst2html5`` before (the version with bootstrap CSS)::

    $ pip3 install rst2html5-tools

Rendering the docs is done via the Makefile::

    $ make
