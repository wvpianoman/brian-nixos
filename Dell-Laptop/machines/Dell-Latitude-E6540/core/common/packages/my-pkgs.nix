{ pkgs, ... }: {
  environment = {
    systemPackages = with pkgs; [

      #####################################
      # Media & Graphics
      #####################################
  #    blender                           # 3D Creation/Animation/Publishing System
  #    inkscape-with-extensions          # Vector graphics editor

      #####################################
      # Messaging and Communication:
      #####################################
  #    telegram-desktop                  # Telegram Desktop messaging app
  #    element-desktop-wayland           # A feature-rich client for Matrix.org for Wayland

  #    betterbird                        # Betterbird is a fine-tuned version of Mozilla Thunderbird, Thunderbird on steroids, if you will

      #####################################
      # Miscellaneous:
      #####################################
      papirus-icon-theme                # Papirus icon theme

      #####################################
      # Office Suites
      #####################################     
      libreoffice-fresh                # Comprehensive, professional-quality productivity suite, a variant of openoffice.org
      rPackages.hunspell               # Spell checker

      qownnotes                        # Plain-text file notepad and todo-list manager
      zotero                           # Collect, organize, cite, and share your research sources
      qnotero                          # Quick access to Zotero references

      onlyoffice-bin                   # Office suite that combines text, spreadsheet and presentation editors allowing to create, view and edit local documents

      #####################################
      # Desktop Accessories
      #####################################
      galculator                       # A GTK 2/3 algebraic and RPN calculator
      speedcrunch                      # A fast power user calculator

      pdfarranger                      # Merge or split pdf documents and rotate, crop and rearrange their pages

      #####################################
      # Desktop Publishing
      #####################################
      scribus                          # Desktop Publishing (DTP) and Layout program for Linux

      #####################################
      # File Management:
      #####################################
      # ---------------------------------------------------------------------
      # File Transfer
      # ---------------------------------------------------------------------
      megasync                        # Easy automated syncing between your computers and your MEGA Cloud Drive
      onedrive                        # A complete tool to interact with OneDrive on Linux
  #    rclone                          # Command line program to sync files and directories to and from major cloud storage
  #    rclone-browser                  # Graphical Frontend to Rclone written in Qt

      #---------------------------------------------------------------------
      # USB/Disk Utilities
      #---------------------------------------------------------------------
      baobab                          # Graphical application to analyse disk usage in any GNOME environment
      etcher                          # Flash OS images to SD cards and USB drives, safely and easily
      #  woeusb                           # Create bootable USB disks from Windows ISO images

      #---------------------------------------------------------------------
      # XDG and File Managers
      #---------------------------------------------------------------------
      xfce.thunar                     # Xfce file manager
      xfce.thunar-volman              # Thunar extension for automatic management of removable drives and media
      xfce.thunar-dropbox-plugin      # A plugin that adds context-menu items for Dropbox to Thunar
      xfce.thunar-archive-plugin      # Thunar plugin providing file context menus for archives
      xfce.thunar-media-tags-plugin   # Thunar plugin providing tagging and renaming features for media files

      #####################################
      # Shell Enhancements and Utilities:
      #####################################
      bashInteractive                 # GNU Bourne-Again Shell, the de facto standard shell on Linux (for interactive use)

      fishPlugins.tide                # The ultimate Fish prompt.
      fishPlugins.pure                # Pretty, minimal and fast Fish prompt, ported from zsh
      fishPlugins.forgit              # A utility tool powered by fzf for using git interactively.
      fishPlugins.plugin-git          # Git plugin for fish (similar to oh-my-zsh git)

      #####################################
      # system Utilities:
      #####################################
      bat                             # A cat(1) clone with syntax highlighting and Git integration
      btop                            # A monitor of resources
     # meld                            # Visual diff and merge tool
     # libsForQt5.dolphin-plugins
      vulkan-tools                    # Khronos official Vulkan Tools and Utilities
      wayland-utils                   # Wayland utilities (wayland-info)

      #####################################
      # Clipboard Utilities:
      #####################################
      cliphist                        # Wayland clipboard manager

      #####################################
      # Clipboard Utilities:
      #####################################
      anydesk                        # Desktop sharing application, providing remote support and online meetings
    ];
  };
}
