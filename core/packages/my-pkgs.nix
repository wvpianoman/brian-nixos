{ pkgs, ... }: {
  environment = {
    systemPackages = with pkgs; [

      #------------------------------------
      # Media & Graphics
      #------------------------------------
      blender                           # 3D Creation/Animation/Publishing System
      inkscape-with-extensions          # Vector graphics editor

      #------------------------------------
      # Messaging and Communication:
      #------------------------------------
      telegram-desktop                  # Telegram Desktop messaging app
      element-desktop-wayland           # A feature-rich client for Matrix.org for Wayland

   #   betterbird                        # Betterbird is a fine-tuned version of Mozilla Thunderbird, Thunderbird on steroids, if you will
      thunderbird                       # A full-featured e-mail client
   #   bluemail                          # Free, secure, universal email app, capable of managing an unlimited number of mail accounts

      #------------------------------------
      # Miscellaneous:
      #------------------------------------
      papirus-icon-theme               # Papirus icon theme
      github-desktop                   # GUI for managing Git and GitHub

      #------------------------------------
      # Office Suites
      #------------------------------------     
      libreoffice-fresh                # Comprehensive, professional-quality productivity suite, a variant of openoffice.org
      rPackages.hunspell               # Spell checker

      qownnotes                        # Plain-text file notepad and todo-list manager
      zotero                           # Collect, organize, cite, and share your research sources
      qnotero                          # Quick access to Zotero references

      onlyoffice-bin                   # Office suite that combines text, spreadsheet and presentation editors allowing to create, view and edit local documents

      #------------------------------------
      # Desktop Accessories
      #------------------------------------
      galculator                       # A GTK 2/3 algebraic and RPN calculator
      speedcrunch                      # A fast power user calculator

      pdfarranger                      # Merge or split pdf documents and rotate, crop and rearrange their pages

      #------------------------------------
      # Desktop Publishing
      #------------------------------------
      scribus                          # Desktop Publishing (DTP) and Layout program for Linux

      #------------------------------------
      # File Management:
      #------------------------------------
      # ---------------------------------------------------------------------
      # File Transfer
      # ---------------------------------------------------------------------
      megasync                        # Easy automated syncing between your computers and your MEGA Cloud Drive
      rclone                          # Command line program to sync files and directories to and from major cloud storage
      rclone-browser                  # Graphical Frontend to Rclone written in Qt

      #---------------------------------------------------------------------
      # USB/Disk Utilities
      #---------------------------------------------------------------------
      baobab                          # Graphical application to analyse disk usage in any GNOME environment
      etcher                          # Flash OS images to SD cards and USB drives, safely and easily
      #  woeusb                           # Create bootable USB disks from Windows ISO images

      #---------------------------------------------------------------------
      # XDG and File Managers
      #---------------------------------------------------------------------
  #    xfce.thunar                     # Xfce file manager
  #    xfce.thunar-volman              # Thunar extension for automatic management of removable drives and media
  #    xfce.thunar-dropbox-plugin      # A plugin that adds context-menu items for Dropbox to Thunar
  #    xfce.thunar-archive-plugin      # Thunar plugin providing file context menus for archives
  #    xfce.thunar-media-tags-plugin   # Thunar plugin providing tagging and renaming features for media files

      #------------------------------------
      # Shell Enhancements and Utilities:
      #------------------------------------
      bashInteractive                 # GNU Bourne-Again Shell, the de facto standard shell on Linux (for interactive use)

      fish
      fishPlugins.tide                # The ultimate Fish prompt.
      fishPlugins.pure                # Pretty, minimal and fast Fish prompt, ported from zsh
      fishPlugins.forgit              # A utility tool powered by fzf for using git interactively.
      fishPlugins.plugin-git          # Git plugin for fish (similar to oh-my-zsh git)

  #    zsh                             # The Z shell
  #    zsh-z                           # Jump quickly to directories that you have visited frequently in the past, or recently
  #    zsh-edit                        # A set of powerful extensions to the Zsh command line editor
  #    zsh-forgit                      # A utility tool powered by fzf for using git interactively
  #    zsh-git-prompt                  # Informative git prompt for zsh
  #    zsh-completions                 # Additional completion definitions for zsh
  #    zsh-autocomplete                # Real-time type-ahead completion for Zsh. Asynchronous find-as-you-type autocompletion
  #    zsh-powerlevel10k               # A fast reimplementation of Powerlevel9k ZSH theme
  #    zsh-you-should-use              # ZSH plugin that reminds you to use existing aliases for commands you just typed
  #    zsh-syntax-highlighting         # Fish shell like syntax highlighting for Zsh
  #    oh-my-zsh                       # A framework for managing your zsh configuration

      #------------------------------------
      # system Utilities:
      #------------------------------------
      bat                             # A cat(1) clone with syntax highlighting and Git integration
      btop                            # A monitor of resources
     # meld                            # Visual diff and merge tool
     # libsForQt5.dolphin-plugins
      vulkan-tools                    # Khronos official Vulkan Tools and Utilities
      wayland-utils                   # Wayland utilities (wayland-info)
      nodePackages_latest.remod-cli   # chmod for human beings!
      clinfo                          # Print all known information about all available OpenCL platforms and devices in the system
      gpu-viewer                      # A front-end to glxinfo, vulkaninfo, clinfo and es2_info

      #------------------------------------
      # Clipboard Utilities:
      #------------------------------------
      cliphist                        # Wayland clipboard manager

      #------------------------------------
      # Remote Desktop:
      #------------------------------------
      anydesk                        # Desktop sharing application, providing remote support and online meetings
   #   nomachine-client               # NoMachine remote desktop client (nxplayer)
   #   remmina                        # Remote desktop client written in GTK

      #------------------------------------
      # Download Manager
      #------------------------------------
      uget                           # Download manager using GTK and libcurl
      uget-integrator                # Native messaging host to integrate uGet Download Manager with web browsers
    ];
  };
}
