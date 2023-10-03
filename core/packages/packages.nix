{ pkgs, ... }: {

  # ---------------------------------------------------------------------
  # My personal software collection
  # ---------------------------------------------------------------------

  services.teamviewer.enable = true;

  environment = {
    systemPackages = with pkgs; [

      # ---------------------------------------------------------------------
      # Andriod software
      # ---------------------------------------------------------------------

     # android-file-transfer           # aft-mtp-cli android-file-transfer aft-mtp-mount 
     # android-tools                   # lpadd append2simg lpmake mke2fs.android mkdtboimg simg2img lpdump lpunpack ext2simg e2fsdroid adb unpack_bootimg repack_bootimg avbtool img2simg fastboot mkbootimg lpflash
     # droidcam                        # Linux client for DroidCam app 
     # scrcpy                          # Display and control Android devices over USB or TCP/IP
     # waydroid                        # Waydroid is a container-based approach to boot a full Android system on a regular GNU/Linux system

      # ---------------------------------------------------------------------
      # Archive Utilities
      # ---------------------------------------------------------------------

      atool                           # apack arepack als adiff atool aunpack acat
      gzip                            # gunzip zmore zegrep zfgrep zdiff zcmp uncompress gzip znew zless zcat zforce gzexe zgrep
      lz4                             # lz4c lz4 unlz4 lz4cat
      lzip                            # lzip
      lzo                             # Real-time data (de)compression library
      lzop                            # lzop
      p7zip                           # 7zr 7z 7za
      rar                             # Utility for RAR archives
      rzip                            # rzip
      unzip                           # zipinfo unzipsfx zipgrep funzip unzip
      xz                              # lzfgrep lzgrep lzma xzegrep xz unlzma lzegrep lzmainfo lzcat xzcat xzfgrep xzdiff lzmore xzgrep xzdec lzdiff xzcmp lzmadec xzless xzmore unxz lzless lzcmp
      zip                             # zipsplit zipnote zip zipcloak
      zstd                            # zstd pzstd zstdcat zstdgrep zstdless unzstd zstdmt

      # ---------------------------------------------------------------------
      # Multimedia Utilities
      # ---------------------------------------------------------------------

      audacity                        # audacity
      ffmpeg                          # ffprobe ffmpeg
      ffmpegthumbnailer               # ffmpegthumbnailer
      libdvdcss                       # A library for decrypting DVDs
      libdvdread                      # A library for reading DVDs
      libopus                         # Open, royalty-free, highly versatile audio codec
      libvorbis                       # Vorbis audio compression reference implementation
      mediainfo                       # mediainfo
      mpg123                          # out123 conplay mpg123-id3dump mpg123 mpg123-strip
      mplayer                         # gmplayer mplayer mencoder
      mpv                             # General-purpose media player, fork of MPlayer and mplayer2
      ocamlPackages.gstreamer         # mpv mpv_identify.sh umpv
      simplescreenrecorder            # ssr-glinject simplescreenrecorder
      video-trimmer                   # video-trimmer

      # ---------------------------------------------------------------------
      # Deduplicating archiver with compression and encryption softwar
      # ---------------------------------------------------------------------

      borgbackup                      # borgfs, borg    Deduplicating archiver with compression and encryption
      restic                          # restic          A backup program that is fast, efficient and secure       https://www.youtube.com/watch?v=MzJbSf7GQ1E
      restique                        # restique        Restic GUI for Desktop/Laptop Backups

      # ---------------------------------------------------------------------
      # Database related
      # ---------------------------------------------------------------------

      dbeaver                         # dbeaver
      pgmodeler                       # pgmodeler-cli pgmodeler pgmodeler-ch pgmodeler-se
      sqlitebrowser                   # sqlitebrowser

      # --------------------------------------------------------------------- 
      # cli-utilities
      # ---------------------------------------------------------------------

      dialog                          # Display dialog boxes from shell
      doas                            # Executes the given command as another user
      fx                              # Terminal JSON viewer
      fzf                             # fzf-tmux fzf-share fzf

      # ---------------------------------------------------------------------
      # Clipboard Utilities:
      # ---------------------------------------------------------------------

      wl-clipboard                    # wl-copy wl-paste

      # ---------------------------------------------------------------------
      # Code Search and Analysis:
      # ---------------------------------------------------------------------

      ripgrep                         # A utility that combines the usability of The Silver Searcher with the raw speed of grep
      ripgrep-all                     # Ripgrep, but also search in PDFs, E-Books, Office documents, zip, tar.gz, and more

      # ---------------------------------------------------------------------
      # Utilities
      # ---------------------------------------------------------------------

      # sublime4
      direnv                          # A shell extension that manages your environment
      graalvm17-ce                    # High-Performance Polyglot VM
      mosh                            # Mobile shell (ssh replacement)
      nix-direnv                      # A fast, persistent use_nix implementation for direnv
      nixfmt                          # An opinionated formatter for Nix
      nixos-option
      vscode                          # conflicts with vscode-with-extensions as this is just a stand alone
      vscode-extensions.brettm12345.nixfmt-vscode
      vscode-extensions.mkhl.direnv

      # ---------------------------------------------------------------------
      # Github related
      # ---------------------------------------------------------------------

      git                             # Distributed version control system
      hut                             # A CLI tool for Sourcehut / sr.ht

      # ---------------------------------------------------------------------
      # Programming Languages and Tools:
      # ---------------------------------------------------------------------
      julia                          # High-level performance-oriented dynamical language for technical computing
      scala-cli                      # Command-line tool to interact with the Scala language
      python311Full                  # A high-level dynamically-typed programming language
      python311Packages.pip          # The PyPA recommended tool for installing Python packages

      # ---------------------------------------------------------------------
      # Data Science Tool
      # ---------------------------------------------------------------------

      dvc                            # Version Control System for Machine Learning Projects
      gnuplot                        # A portable command-line driven graphing utility for many platforms
      iredis                         # A Terminal Client for Redis with AutoCompletion and Syntax Highlighting
      litecli                        # Command-line interface for SQLite
      luigi                          # Python package that helps you build complex pipelines of batch jobs
      mpi                            # Open source MPI-3 implementation
      quarto                         # Open-source scientific and technical publishing system built on Pandoc
      root                           # A data analysis framework
      visidata                       # Interactive terminal multitool for tabular data

      # ---------------------------------------------------------------------
      # Scanning and Image Viewing
      # ---------------------------------------------------------------------

      nsxiv                          # New Suckless X Image Viewe
      sane-backends                  # SANE (Scanner Access Now Easy) backends
      scanbd                         # Scanner button daemon
      sxiv                           # Simple X Image Viewer

      # ---------------------------------------------------------------------
      # Downloading Videos and Files
      # ---------------------------------------------------------------------

      clipgrab                       # Video downloader for YouTube and other sites
      wget                           # Tool for retrieving files using HTTP, HTTPS, and FTP

      # ---------------------------------------------------------------------
      # Messaging and Communication:
      # ---------------------------------------------------------------------

      whatsapp-for-linux             # Whatsapp desktop messaging app


      # ---------------------------------------------------------------------
      # Miscellaneous:
      # ---------------------------------------------------------------------

      cowsay                         # A program which generates ASCII pictures of a cow with a message
                                     #
                                     # ex: $ fortune | cowsay -f tux  
                                     #     $ fortune | cowsay -e ^^   
                                     #     $ fortune | cowsay | lolcat
                                        
      fish                           # Smart and user-friendly command line shell
      flatpak                        # Linux application sandboxing and distribution framework
      fortune                        # A program that displays a pseudorandom message from a database of quotations
      libsForQt5.kweather            # Weather application for Plasma Mobile
      libsForQt5.kweathercore        # Library to facilitate retrieval of weather information including forecasts and alerts 
      lolcat                         # A rainbow version of cat for colorful output
      themechanger                   # A theme changing utility for Linux
      variety                        # A wallpaper manager for Linux systems

      # ---------------------------------------------------------------------
      # Media and Entertainment:
      # ---------------------------------------------------------------------

      vlc                            # Cross-platform media player and streaming server
      youtube-dl                     # Command-line tool to download videos from YouTube.com and other sites

      # ---------------------------------------------------------------------
      # Picture manger
      # ---------------------------------------------------------------------

      digikam                        # Photo Management Program
      shotwell                       # Popular photo organizer for the GNOME desktop

      # ---------------------------------------------------------------------
      # Picture Editors
      # ---------------------------------------------------------------------

      gimp-with-plugins              # The GNU Image Manipulation Program

      # ---------------------------------------------------------------------
      # Disc burner
      # ---------------------------------------------------------------------

      brasero                        # A Gnome CD/DVD Burner

      # ---------------------------------------------------------------------
      # Remote Access and Automation:
      # ---------------------------------------------------------------------

      heroku                         # Everything you need to get started using Heroku
      powershell                     # Powerful cross-platform (Windows, Linux, and macOS) shell and scripting language based on .NET
      sshpass                        # Non-interactive ssh password auth
      teamviewer                     # Desktop sharing application, providing remote support and online meetings

      # ---------------------------------------------------------------------
      # File Sharing & Network
      # ---------------------------------------------------------------------

      samba4Full                     # The standard Windows interoperability suite of programs for Linux and Unix
      cifs-utils                     # Tools for managing Linux CIFS client filesystems

      # ---------------------------------------------------------------------
      # KDE Plasma tools
      # ---------------------------------------------------------------------

      libsForQt5.ark                 # Graphical file compression/decompression utility
      libsForQt5.filelight           # Disk usage statistics
      libsForQt5.kate                # Advanced text editor
      libsForQt5.kcalc               # Scientific calculator
      kdiff3                         # Compares and merges 2 or 3 files or directories
      libsForQt5.kgpg                # A KDE based interface for GnuPG, a powerful encryption utility
      krename                        # A powerful batch renamer for KDE
      libsForQt5.qt5.qttools         # A cross-platform application framework for C++
      libsForQt5.quazip              # Provides access to ZIP archives from Qt 5 programs
      qt6.qttools                    # A cross-platform application framework for C++
      qt6Packages.quazip             # Provides access to ZIP archives from Qt programs

      # ---------------------------------------------------------------------
      # xscreensaver
      # ---------------------------------------------------------------------

      xscreensaver                   # xscreensaver-demo xscreensaver-settings xscreensaver xscreensaver-command

      # ---------------------------------------------------------------------
      # system tools
      # ---------------------------------------------------------------------

      isoimagewriter                 # ISO Image Writer is a tool to write a .iso file to a USB disk.
      keepassxc                      # Offline password manager with many features.
      media-downloader               # A Qt/C++ GUI front end to youtube-dl
      testdisk-qt                    # Data recovery utilities
      ventoy-full                    # A New Bootable USB Solution

      # ---------------------------------------------------------------------
      # USB and Device Utilities
      # ---------------------------------------------------------------------

      usbutils                       # Tools for working with USB devices, such as lsusb

      # ---------------------------------------------------------------------
      # Other Miscellaneous Programs
      # ---------------------------------------------------------------------

      blueberry                     # Bluetooth configuration tool
      efibootmgr                    # A Linux user-space application to modify the Intel Extensible Firmware Interface (EFI) Boot Manager
      gum                           # Tasty Bubble Gum for your shell     https://github.com/charmbracelet/gum
      krusader                      # Norton/Total Commander clone for KDE

      # ---------------------------------------------------------------------
      # Libraries
      # ---------------------------------------------------------------------

      libarchive                    # Multi-format archive and compression library
      libbtbb                       # Bluetooth baseband decoding library
      
      libnotify                     # A library that sends desktop notifications to a notification daemon
                                    #
                                    # example: notify-send --icon=fcitx --app-name="DONE" "Fonts folder copied into $(whoami)" "$font_dest" -u normal

      notify-desktop                # Little application that lets you send desktop notifications with one command
                                    # 
                                    # example: notify-desktop --icon=call-start "Incoming call"   
                                    #
                                    # SOURCE: https://github.com/nowrep/notify-desktop/tree/master

      # ---------------------------------------------------------------------
      # File Transfer:
      # ---------------------------------------------------------------------

      filezilla                     # Graphical FTP, FTPS and SFTP client
      libfilezilla                  # A modern C++ library, offering some basic functionality to build high-performing, platform-independent programs
      rsync                         # Fast incremental file transfer utility
      transmission-gtk              # A fast, easy and free BitTorrent client
      zsync                         # File distribution system using the rsync algorithm

      # ---------------------------------------------------------------------
      # Disk Utilities
      # ---------------------------------------------------------------------

      gparted                       # Graphical disk partitioning tool
      hw-probe                      # Probe for hardware, check operability and find drivers
                                    #
                                    # sudo -E hw-probe -all -upload
      ntfs3g                        # FUSE-based NTFS driver with full write support

      # ---------------------------------------------------------------------
      # Terminal Utilities
      # ---------------------------------------------------------------------

      asunder                       # A graphical Audio CD ripper and encoder for Linux
      bashInteractive               # GNU Bourne-Again Shell, the de facto standard shell on Linux (for interactive use)
      cmatrix                       # Simulates the falling characters theme from The Matrix movie
      delta                         # A syntax-highlighting pager for git
      duf                           # Disk Usage/Free Utility
      fd                            # A simple, fast and user-friendly alternative to find
      figlet                        # Program for making large letters out of ordinary text
      htop                          # An interactive process viewer
      imagemagick                   # A software suite to create, edit, compose, or convert bitmap images
      inotify-tools                 # A set of command-line programs providing a simple interface to inotify.
                                    #
                                    # Source:  https://github.com/inotify-tools/inotify-tools/wiki
      less                          # A more advanced file pager than ‘more’
      lf                            # A terminal file manager written in Go and heavily inspired by ranger
      lfs                           # Get information on your mounted disks
      lsd                           # The next gen ls command
      lsdvd                         # Display information about audio, video, and subtitle tracks on a DVD
      ncdu                          # Disk usage analyzer with an ncurses interface
      neofetch                      # A fast, highly customizable system info script
      neovim                        # Vim text editor fork focused on extensibility and agility
      parallel-full                 #
      pciutils                      # A collection of programs for inspecting and manipulating configuration of PCI devices
      pfetch                        # A pretty system information tool written in POSIX sh
      rPackages.pkgconfig           # Set configuration options on a per-package basis. Options set by a given package only apply to that package, other packages are unaffected.
      pmutils                       # A small collection of scripts that handle suspend and resume on behalf of HAL
      psmisc                        # A set of small useful utilities that use the proc filesystem (such as fuser, killall and pstree)
      sl                            # Steam Locomotive runs across your terminal when you type 'sl'
      stow                          # A tool for managing the installation of multiple software packages in the same run-time directory tree
      tig                           # Text-mode interface for git
      tldr                          # Simplified and community-driven man pages
      tree                          # Command to produce a depth indented directory listing
      vim                           # The most popular clone of the VI editor
      gnome.zenity                  # Tool to display dialogs from the commandline and shell scripts

      # ---------------------------------------------------------------------
      # XDG Utilities
      # ---------------------------------------------------------------------

      xdg-launch                    # A command line XDG compliant launcher and tools
      xdg-utils                     # A set of command line tools that assist applications with a variety of desktop integration tasks

      #---------------------------------------------------------------------
      # Office and Productivity:
      #---------------------------------------------------------------------

      wpsoffice                     # Office suite, formerly Kingsoft Office
      deepin.deepin-calculator      # An easy to use calculator for ordinary users

    ];
  };
}
