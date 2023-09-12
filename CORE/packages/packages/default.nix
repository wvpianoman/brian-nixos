{ pkgs, ... }: {
  environment = {
    systemPackages = with pkgs; [
  #####################################
  #  Android Utilities
  #####################################

   #  adbfs-rootless          # Mount Android phones on Linux with adb, no root required
   #  haskellPackages.adb     # Android Debug Bridge (ADB) protocol
   #  android-tools           # Android SDK platform tools
   #  android-file-transfer   # Reliable MTP client with minimalistic UI
   #  droidcam                # Linux client for DroidCam app
   #  scrcpy                  # Display and control Android devices over USB or TCP/IP
   #  waydroid                # Waydroid is a container-based approach to boot a full Android system on a regular GNU/Linux system

  #####################################
  # Archive Utilities
  #####################################

      atool       # Archive command line helper
      gzip        # GNU zip compression program
      libarchive  # Multi-format archive and compression library
      lz4         # Extremely fast compression algorithm
      lzip        # A lossless data compressor based on the LZMA algorithm
      lzo         # Real-time data (de)compression library
      lzop        # Fast file compressor
      p7zip       # A new p7zip fork with additional codecs and improvements (forked from https://sourceforge.net/projects/p7zip/)
      rzip        # Compression program
      unzip       # An extraction utility for archives compressed in .zip format
      xz          # A general-purpose data compression software, successor of LZMA
      zip         # Compressor/archiver for creating and modifying zipfiles
      zstd        # Zstandard real-time compression algorithm

  #####################################
  # Audio & Video
  #####################################
  
      audacity                 # Sound editor with graphical UI
      ffmpeg                   # A complete, cross-platform solution to record, convert and stream audio and video
      ffmpegthumbnailer        # A lightweight video thumbnailer
      libdvdcss                # A library for decrypting DVDs
      libdvdread               # A library for reading DVDs
      libopus                  # Open, royalty-free, highly versatile audio codec
      libvorbis                # Vorbis audio compression reference implementation
      mediainfo                # Supplies technical and tag information about a video or audio file
      mpg123                   # Fast console MPEG Audio Player and decoder library
      mplayer                  # A movie player that supports many video formats
      mpv                      # General-purpose media player, fork of MPlayer and mplayer2
      ocamlPackages.gstreamer  # Bindings for the GStreamer library which provides functions for playning and manipulating multimedia streams
      pulseaudioFull           # Sound server for POSIX and Win32 systems
      simplescreenrecorder     # A screen recorder for Linux
      video-trimmer            # Trim videos quickly
      vlc                      # Cross-platform media player and streaming server

  #####################################
  # Image Scanning and Processing:
  #####################################

      sane-backends  # SANE (Scanner Access Now Easy) backends
      scanbd         # Scanner button daemon

  #####################################
  # Media & Graphics
  #####################################

      blender                    # 3D Creation/Animation/Publishing System
      digikam                    # Photo Management Program
      imagemagick                # A software suite to create, edit, compose, or convert bitmap images
      inkscape-with-extensions   # Vector graphics editor
      gimp-with-plugins          # The GNU Image Manipulation Program
      nsxiv                      # New Suckless X Image Viewer
      shotwell                   # Popular photo organizer for the GNOME desktop
      sxiv                       # Simple X Image Viewer

  #####################################
  # Messaging and Communication:
  #####################################
      telegram-desktop           # Telegram Desktop messaging app
      element-desktop-wayland    # A feature-rich client for Matrix.org for Wayland
      discord                    # All-in-one cross-platform voice and text chat for gamers
     # whatsapp-for-linux        # Whatsapp desktop messaging app

      betterbird                 # Betterbird is a fine-tuned version of Mozilla Thunderbird, Thunderbird on steroids, if you will

  #####################################
  # Downloading and Retrieving Files:
  #####################################

      clipgrab           # Video downloader for YouTube and other sites
      media-downloader   # A Qt/C++ GUI front end to youtube-dl
      youtube-dl         # Command-line tool to download videos from YouTube.com and other sites
      wget               # Tool for retrieving files using HTTP, HTTPS, and FTP

  #####################################
  # Web Browsers:
  #####################################
    
  environment = { systemPackages = with pkgs; [ firefox google-chrome ]; };

  programs = {
    firefox = {
      enable = true;
      policies = {
        CaptivePortal = false;
        DisableFirefoxAccounts = true;
        DisableFirefoxStudies = true;
        DisablePocket = true;
        DisableTelemetry = true;
        FirefoxHome = {
          Pocket = false;
          Snippets = false;
        };
        UserMessaging = {
          ExtensionRecommendations = false;
          SkipOnboarding = true;
        };
      };
    };
  };

  nixpkgs.config.firefox.enablePlasmaBrowserIntegration = true;

  #####################################
  # Miscellaneous:
  #####################################

      flatpak                    # Linux application sandboxing and distribution framework 
      libsForQt5.kweather        # Weather application for Plasma Mobile
      libsForQt5.kweathercore    # Library to facilitate retrieval of weather information including forecasts and alerts
      variety                    # A wallpaper manager for Linux systems

      papirus-icon-theme         #Papirus icon theme
      themechanger               #A theme changing utility for Linux

  ########################################### 
  # Add the required packages for iwd backend
  ###########################################
  
    iwd          # Wireless daemon for Linux
    # iwd-tools 
  #####################################
  # Network Testing and Monitoring:
  #####################################
  
      doppler             # The official CLI for interacting with your Doppler Enclave secrets and configuration
      ookla-speedtest     # Command line internet speedtest tool by Ookla

  #####################################
  # Remote Access & Deployment
  #####################################
  
      heroku              # Everything you need to get started using Heroku
      openssh             # An implementation of the SSH protocol
      powershell          # Powerful cross-platform (Windows, Linux, and macOS) shell and scripting language based on .NET
      sshpass             # Non-interactive ssh password auth
      teamviewer          # Desktop sharing application, providing remote support and online meetings
      # nomachine-client  # NoMachine remote desktop client (nxplayer)

  #####################################
  # Samba and Networking:
  #####################################
  
      samba4Full          # The standard Windows interoperability suite of programs for Linux and Unix
      cifs-utils          # Tools for managing Linux CIFS client filesystems

  services.teamviewer.enable = true;

  #####################################
  # Office Suites
  #####################################
      
      libreoffice-fresh   # Comprehensive, professional-quality productivity suite, a variant of openoffice.org
      rPackages.hunspell  # Spell checker

      qownnotes           # Plain-text file notepad and todo-list manager
      zotero              # Collect, organize, cite, and share your research sources
      qnotero             # Quick access to Zotero references

      onlyoffice-bin      # Office suite that combines text, spreadsheet and presentation editors allowing to create, view and edit local documents

      wpsoffice           # Office suite, formerly Kingsoft Office
 
  #####################################
  # Desktop Accessories
  #####################################
  
      galculator               # A GTK 2/3 algebraic and RPN calculator
      speedcrunch              # A fast power user calculator
      deepin.deepin-calculator # An easy to use calculator for ordinary users

      pdfarranger              # Merge or split pdf documents and rotate, crop and rearrange their pages

  #####################################
  # Desktop Publishing
  #####################################
      
      scribus                  # Desktop Publishing (DTP) and Layout program for Linux

  #####################################
  # File Management:
  #####################################

      # ---------------------------------------------------------------------
      # File Transfer
      # ---------------------------------------------------------------------

      filezilla          # Graphical FTP, FTPS and SFTP client
      libfilezilla       # A modern C++ library, offering some basic functionality to build high-performing, platform-independent programs
      rsync              # Fast incremental file transfer utility
      megasync           # Easy automated syncing between your computers and your MEGA Cloud Drive
      onedrive           # A complete tool to interact with OneDrive on Linux
      rclone             # Command line program to sync files and directories to and from major cloud storage
      rclone-browser     # Graphical Frontend to Rclone written in Qt
      transmission-gtk   # A fast, easy and free BitTorrent client

      #---------------------------------------------------------------------
      # USB/Disk Utilities
      #---------------------------------------------------------------------

      baobab           # Graphical application to analyse disk usage in any GNOME environment
    # brasero          # A Gnome CD/DVD Burner
      etcher           # Flash OS images to SD cards and USB drives, safely and easily
      isoimagewriter   # ISO Image Writer is a tool to write a .iso file to a USB disk.
      testdisk-qt      # Data recovery utilities
      usbutils         # Tools for working with USB devices, such as lsusb
    #  woeusb           # Create bootable USB disks from Windows ISO images

                       #---------------------------------------------
      ventoy-full      # A New Bootable USB Solution
                       # provides:  ventoy-plugson, ventoy-persistent 
                       # ventoy-extend-persistent, ventoy-web, ventoy
                       #---------------------------------------------

      #---------------------------------------------------------------------
      # XDG and File Managers
      #---------------------------------------------------------------------

      xdg-desktop-portal-gtk          # Desktop integration portals for sandboxed apps
      xdg-launch                      # A command line XDG compliant launcher and tools
      xdg-utils                       # A set of command line tools that assist applications with a variety of desktop integration tasks

      xfce.thunar                     # Xfce file manager
      xfce.thunar-volman              # Thunar extension for automatic management of removable drives and media
      xfce.thunar-dropbox-plugin      # A plugin that adds context-menu items for Dropbox to Thunar
      xfce.thunar-archive-plugin      # Thunar plugin providing file context menus for archives
      xfce.thunar-media-tags-plugin   # Thunar plugin providing tagging and renaming features for media files
      krusader                        # Norton/Total Commander clone for KDE

      #--------------------------------------------------------------------- 
      # Other Miscellaneous Programs
      #---------------------------------------------------------------------
       
      blueberry        # Bluetooth configuration tool
      efibootmgr       # A Linux user-space application to modify the Intel Extensible Firmware Interface (EFI) Boot Manager
     # keepassxc       # Offline password manager with many features.
      xscreensaver     # A set of screensavers

  #####################################
  # File Systems and Archiving:
  #####################################

      libbtbb                         # Bluetooth baseband decoding library

      libnotify                       # A library that sends desktop notifications to a notification daemon
      #-------------------------------------------------------------------
      # Desktop Notify agent example:
      #notify-send --icon=fcitx --app-name="DONE" "Fonts folder copied into $(whoami)" "$font_dest" -u normal
      #-------------------------------------------------------------------
   
      notify-desktop                  # Little application that lets you send desktop notifications with one command
      #-------------------------------------------------------------------
      # Desktop Notify agent example:
      # notify-desktop --icon=call-start "Incoming call"
      #
      # SOURCE: https://github.com/nowrep/notify-desktop/tree/master
      #-------------------------------------------------------------------

  #####################################
  # Shell Enhancements and Utilities:
  #####################################

      bashInteractive         # GNU Bourne-Again Shell, the de facto standard shell on Linux (for interactive use)

      fish                    # Smart and user-friendly command line shell
      fishPlugins.tide        # The ultimate Fish prompt.
      fishPlugins.pure        # Pretty, minimal and fast Fish prompt, ported from zsh
      fishPlugins.forgit      # A utility tool powered by fzf for using git interactively.
      fishPlugins.plugin-git  # Git plugin for fish (similar to oh-my-zsh git)

      zsh                     # The Z shell
      zsh-autosuggestions     # Fish shell autosuggestions for Zsh
      zsh-syntax-highlighting # Fish shell like syntax highlighting for Zsh

      rPackages.fontawesome   # Easily Work with 'Font Awesome' Icons
      dialog                  # Display dialog boxes from shell
      gum                     # Leverage the power of Bubbles and Lip Gloss in your scripts and aliases without writing any Go code!
      
      cmatrix                 # Simulates the falling characters theme from The Matrix movie
      sl                      # Steam Locomotive runs across your terminal when you type 'sl'
      cowsay                  # A program which generates ASCII pictures of a cow with a message
      fortune                 # uA program that displays a pseudorandom message from a database of quotations  
      lolcat                  # "lolcat" for colorful output
                              #------------------------------------
                              # Examples: fortune | cowsay -f tux
                              #           fortune | cowsay -e ^^
                              #           fortune | cowsay | lolcat
                              #------------------------------------

  #####################################
  # system Utilities:
  #####################################
  
      # Disk Utilities
      gparted  # Graphical disk partitioning tool
      ntfs3g   # FUSE-based NTFS driver with full write support
      hw-probe # Probe for hardware, check operability and find drivers
               #---------------------------------------------------------
               #  to use:   sudo -E hw-probe -all -upload
               #---------------------------------------------------------

      # Terminal Utilities
      asunder         # A graphical Audio CD ripper and encoder for Linux
      bat             # A cat(1) clone with syntax highlighting and Git integration
      btop            # A monitor of resources
      direnv          # A shell extension that manages your environment
      doas            # Executes the given command as another user
      duf             # Disk Usage/Free Utility
      fd              # A simple, fast and user-friendly alternative to find
      figlet          # Program for making large letters out of ordinary text
      fx              # Terminal JSON viewer
      fzf             # A command-line fuzzy finder written in Go
      gnome.zenity    # Tool to display dialogs from the commandline and shell scripts
      inotify-tools   # inotifywait   inotifywatch    https://github.com/inotify-tools/inotify-tools/wiki
      less            # A more advanced file pager than ‘more’
      lf              # A terminal file manager written in Go and heavily inspired by ranger
      lfs             # Get information on your mounted disks
      lsd             # The next gen ls command
      lsdvd           # Display information about audio, video, and subtitle tracks on a DVD
      meld            # Visual diff and merge tool
      libsForQt5.dolphin-plugins
      ncdu            # Disk usage analyzer with an ncurses interface
      neofetch        # A fast, highly customizable system info script
      parallel-full   # Shell tool for executing jobs in parallel
      pciutils        # A collection of programs for inspecting and manipulating configuration of PCI devices
      pfetch          # A pretty system information tool written in POSIX sh
      pkgconfig       # A tool that allows packages to find out information about other packages (wrapper script)
      pmutils         # A small collection of scripts that handle suspend and resume on behalf of HAL
      psmisc          # A set of small useful utilities that use the proc filesystem (such as fuser, killall and pstree)
      stow            # A tool for managing the installation of multiple software packages in the same run-time directory tree
      tldr            # Simplified and community-driven man pages
      tree            # Command to produce a depth indented directory listing
      vulkan-tools    # Khronos official Vulkan Tools and Utilities
      wayland-utils   # Wayland utilities (wayland-info)

  #####################################
  # Text Editors and Utilities:
  #####################################

      kate
      libkate          # A library for encoding and decoding Kate streams
      libsForQt5.kate  # Advanced text editor
      neovim           # Vim text editor fork focused on extensibility and agility
      sublime4         # Sophisticated text editor for code, markup and prose
      vim              # The most popular clone of the VI editor


    ];
  };
}
