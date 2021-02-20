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


Use cases
*********
.. include:: api/usecase-login.rst
.. include:: api/usecase-sync.rst


API calls
*********
.. include:: api/pageplace.bosh-bosh-rest-handshake-resellers.rst
.. include:: api/pageplace.bosh-bosh-rest-inventory-count.rst
.. include:: api/pageplace.bosh-bosh-rest-ping.rst
.. include:: api/pageplace.bosh-bosh-rest-recommendation-xyz.rst
.. include:: api/pageplace.bosh-bosh-rest-sync-data.rst
.. include:: api/pageplace.bosh-bosh-rest-time.rst
.. include:: api/pageplace.bosh-bosh-rest-userid-xxx.rst
.. include:: api/pageplace.bosh-bosh-rest-v2-registerhw.rst
.. include:: api/pageplace.bosh-bosh-rest-v2-resellerconfig.rst
.. include:: api/pageplace.inventory-v2-inventory.rst
.. include:: api/thalia-auth-oauth2-authorize.rst
.. include:: api/thalia-auth-oauth2-token-post.rst


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
