{ pkgs, ... }: {

  # ---------------------------------------------------------------------
  # My personal software collection
  # ---------------------------------------------------------------------

   environment = {
    systemPackages = with pkgs; [

      # ---------------------------------------------------------------------
      # Andriod software
      # ---------------------------------------------------------------------
      

      qsstv       # Qt-based slow-scan TV and fax
      svxlink     # Advanced repeater controller and EchoLink software
      unixcw      # Ncurses frontend to unixcw.
      ax25-apps   # AX.25 ham radio applications
      ax25-tools  # Non-GUI tools used to configure an AX.25 enabled computer
      libax25     # AX.25 library for hamradio applications
      chirp       # A free, open-source tool for programming your amateur radio
      multimon-ng # Linux Radio Transmission Decoder
      xlog        # An amateur radio logging program
      soundmodem  # Audio based modem for ham radio supporting ax.25
      hamlib_4    # Runtime library to control radio transceivers and receivers
      xastir      # Graphical APRS client
      glabels     # Create labels and business cards
      direwolf    # A Soundcard Packet TNC, APRS Digipeater, IGate, APRStt gateway
      gqrx        # Software defined radio (SDR) receiver
      fldigi      # Digital modem program
      freedv      # Digital voice for HF radio
      js8call     # Weak-signal keyboard messaging for amateur radio
      welle-io    # A DAB/DAB+ Software Radio
      flrig       # Digital modem rig control program
      flwrap      # Digital modem file transfer program
      qdmr        # GUI application and command line tool for programming DMR radios
      cubicsdr    # Software Defined Radio application
      klog        # A multiplatform free hamradio logger
      grig        # A simple Ham Radio control (CAT) program based on Hamlib
      wsjtx       # Weak-signal digital communication modes for amateur radio
      flmsg       # Digital modem message program
      xnec2c      # Graphical antenna simulation

    ];
  };
}