=============
Internal URLs
=============

``epublishing://closeshop``
  URL of the close button inside the online shop.
  Goes back to the main screen.

``epublishing://closeshop_skoti``
  Close the Skoobe shop

``epublishing://handshakeCancel``
  FIXME

``epublishing://handshakeFinish``
  FIXME

``epublishing://library``
  Open the "my books" library view

``epublishing://library_skoti``
  FIXME

``epublishing://login?code=GK6jDC``
  The ``code`` is optional.

``epublishing://openbook``
  Start the reading mode for the given book

  Parameters:
    ``deliverableid``
      Book ID to open.

      Example: ``DT0400.9783641267575_A39529579``

``epublishing://openbook_skoti``
  FIXME

``epublishing://openextract``
  Download the file and start the reading mode for a demo book extract
  (German: "Leseprobe")

  Parameters (all 4 must be passed):
    ``extractcoverurl``
      URL of the book cover image.

    ``extractdeliverableid``
      Book ID

    ``extractdownloadurl``
      Download URL for the book demo ``.epub`` file.

    ``extractpurchaseurl``
      Where to buy the book after reading the extract.

      Is used at the "To the shop" button that is shown on top of
      the reading view for demo books.

  The URL in the web view must not be escaped for this link to work.
  Escpecially the ``&`` may not be escaped as ``&amp;``
  (which would be correct HTML), so you are forced to provide invalid HTML.


``epublishing://opensearchresult``
  FIXME

``epublishing://requestauth``
  FIXME "Open login"

  Parameters:
    ``loginfailureurl``
      FIXME

    ``targeturl``
      FIXME

``epublishing://resellerChangeFinishFactoryReset``
  FIXME

``epublishing://search``
  Open the "search books" view.

  Parameters:
    ``q``
      Search term to search the books list for.
