===========
Identifiers
===========

Publication ID
==============
A book has an identifier, for example ``DT0400.9783641267575_A39529579``.

The API uses ``publicationId`` and ``pubid`` as names.

It consists of several parts:

- Prefix ``DT``
- four-letter order ID ``0400``
- ISBN-13 ``9783641267575``
- unknown suffix ``A39529579``


Excerpt from `Analyse verbreiteter Anwendungen zum Lesen von elektronischen Büchern <https://opus4.kobv.de/opus4-fau/frontdoor/index/index/docId/12551>`_:

 Der Aufbau des Wertes der Variable ``path`` erläutern wir anhand eines Beispiels:

 ``/publications/DT<BESTELLUNG>.<ISBN-13>/bookmark/<VAR>``

 Hierbei handelt es sich bei BESTELLUNG um eine vierstellige Zahl,
 welche bei allen Büchern, die innerhalb des selben Bestellvorgangs gekauft
 wurden, identisch ist.
 Dies wurde mit mehreren Bestellungen von fünf, drei bzw. einem Buch nachvollzogen.
