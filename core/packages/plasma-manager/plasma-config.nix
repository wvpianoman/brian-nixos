{
  #---------------------------------------------------------------------
  # generated with nix run github:pjones/plasma-manager
  #---------------------------------------------------------------------

  programs.plasma = {
    enable = true;
    shortcuts = {
      "ActivityManager"."switch-to-activity-e9f751f4-7ce9-49a3-abc4-b819e9dff6fe" =
        [ ];
      "KDE Keyboard Layout Switcher"."Switch to Next Keyboard Layout" =
        "Meta+Alt+K";
      "bismuth"."decrease_master_size" = [ ];
      "bismuth"."decrease_master_win_count" = [ ];
      "bismuth"."decrease_window_height" = [ ];
      "bismuth"."decrease_window_width" = [ ];
      "bismuth"."focus_bottom_window" = [ ];
      "bismuth"."focus_left_window" = [ ];
      "bismuth"."focus_next_window" = [ ];
      "bismuth"."focus_prev_window" = [ ];
      "bismuth"."focus_right_window" = [ ];
      "bismuth"."focus_upper_window" = [ ];
      "bismuth"."increase_master_size" = [ ];
      "bismuth"."increase_master_win_count" = [ ];
      "bismuth"."increase_window_height" = [ ];
      "bismuth"."increase_window_width" = [ ];
      "bismuth"."move_window_to_bottom_pos" = [ ];
      "bismuth"."move_window_to_left_pos" = [ ];
      "bismuth"."move_window_to_next_pos" = [ ];
      "bismuth"."move_window_to_prev_pos" = [ ];
      "bismuth"."move_window_to_right_pos" = [ ];
      "bismuth"."move_window_to_upper_pos" = [ ];
      "bismuth"."next_layout" = [ ];
      "bismuth"."prev_layout" = [ ];
      "bismuth"."push_window_to_master" = [ ];
      "bismuth"."rotate" = [ ];
      "bismuth"."rotate_part" = [ ];
      "bismuth"."rotate_reverse" = [ ];
      "bismuth"."toggle_float_layout" = [ ];
      "bismuth"."toggle_monocle_layout" = [ ];
      "bismuth"."toggle_quarter_layout" = [ ];
      "bismuth"."toggle_spiral_layout" = [ ];
      "bismuth"."toggle_spread_layout" = [ ];
      "bismuth"."toggle_stair_layout" = [ ];
      "bismuth"."toggle_three_column_layout" = [ ];
      "bismuth"."toggle_tile_layout" = [ ];
      "bismuth"."toggle_window_floating" = [ ];
      "kaccess"."Toggle Screen Reader On and Off" = "Meta+Alt+S";
      "kcm_touchpad"."Disable Touchpad" = "Touchpad Off";
      "kcm_touchpad"."Enable Touchpad" = "Touchpad On";
      "kcm_touchpad"."Toggle Touchpad" = "Touchpad Toggle";
      "kded5"."Show System Activity" = "Ctrl+Esc";
      "kded5"."display" = [ "Display" "Meta+P" ];
      "khotkeys"."{d03619b6-9b3c-48cc-9d9c-a2aadb485550}" = [ ];
      "kmix"."decrease_microphone_volume" = "Microphone Volume Down";
      "kmix"."decrease_volume" = "Volume Down";
      "kmix"."increase_microphone_volume" = "Microphone Volume Up";
      "kmix"."increase_volume" = "Volume Up";
      "kmix"."mic_mute" = [ "Microphone Mute" "Meta+Volume Mute" ];
      "kmix"."mute" = "Volume Mute";
      "ksmserver"."Halt Without Confirmation" = [ ];
      "ksmserver"."Lock Session" = [ "Meta+L" "Screensaver" ];
      "ksmserver"."Log Out" = "Ctrl+Alt+Del";
      "ksmserver"."Log Out Without Confirmation" = [ ];
      "ksmserver"."Reboot Without Confirmation" = [ ];
      "kwin"."Activate Window Demanding Attention" = "Meta+Ctrl+A";
      "kwin"."Decrease Opacity" = [ ];
      "kwin"."Edit Tiles" = "Meta+T";
      "kwin"."Expose" = "Ctrl+F9";
      "kwin"."ExposeAll" = [ "Ctrl+F10" "Launch (C)" ];
      "kwin"."ExposeClass" = "Ctrl+F7";
      "kwin"."ExposeClassCurrentDesktop" = [ ];
      "kwin"."Increase Opacity" = [ ];
      "kwin"."Kill Window" = "Meta+Ctrl+Esc";
      "kwin"."Move Tablet to Next Output" = [ ];
      "kwin"."MoveMouseToCenter" = "Meta+F6";
      "kwin"."MoveMouseToFocus" = "Meta+F5";
      "kwin"."MoveZoomDown" = [ ];
      "kwin"."MoveZoomLeft" = [ ];
      "kwin"."MoveZoomRight" = [ ];
      "kwin"."MoveZoomUp" = [ ];
      "kwin"."Overview" = "Meta+W";
      "kwin"."Setup Window Shortcut" = [ ];
      "kwin"."Show Desktop" = "Meta+D";
      "kwin"."ShowDesktopGrid" = "Meta+F8";
      "kwin"."Suspend Compositing" = "Alt+Shift+F12";
      "kwin"."Switch One Desktop Down" = [ ];
      "kwin"."Switch One Desktop Up" = [ ];
      "kwin"."Switch One Desktop to the Left" = [ ];
      "kwin"."Switch One Desktop to the Right" = [ ];
      "kwin"."Switch Window Down" = "Meta+Alt+Down";
      "kwin"."Switch Window Left" = "Meta+Alt+Left";
      "kwin"."Switch Window Right" = "Meta+Alt+Right";
      "kwin"."Switch Window Up" = "Meta+Alt+Up";
      "kwin"."Switch to Desktop 1" = "Ctrl+F1";
      "kwin"."Switch to Desktop 10" = [ ];
      "kwin"."Switch to Desktop 11" = [ ];
      "kwin"."Switch to Desktop 12" = [ ];
      "kwin"."Switch to Desktop 13" = [ ];
      "kwin"."Switch to Desktop 14" = [ ];
      "kwin"."Switch to Desktop 15" = [ ];
      "kwin"."Switch to Desktop 16" = [ ];
      "kwin"."Switch to Desktop 17" = [ ];
      "kwin"."Switch to Desktop 18" = [ ];
      "kwin"."Switch to Desktop 19" = [ ];
      "kwin"."Switch to Desktop 2" = "Ctrl+F2";
      "kwin"."Switch to Desktop 20" = [ ];
      "kwin"."Switch to Desktop 3" = "Ctrl+F3";
      "kwin"."Switch to Desktop 4" = "Ctrl+F4";
      "kwin"."Switch to Desktop 5" = [ ];
      "kwin"."Switch to Desktop 6" = [ ];
      "kwin"."Switch to Desktop 7" = [ ];
      "kwin"."Switch to Desktop 8" = [ ];
      "kwin"."Switch to Desktop 9" = [ ];
      "kwin"."Switch to Next Desktop" = [ ];
      "kwin"."Switch to Next Screen" = [ ];
      "kwin"."Switch to Previous Desktop" = [ ];
      "kwin"."Switch to Previous Screen" = [ ];
      "kwin"."Switch to Screen 0" = [ ];
      "kwin"."Switch to Screen 1" = [ ];
      "kwin"."Switch to Screen 2" = [ ];
      "kwin"."Switch to Screen 3" = [ ];
      "kwin"."Switch to Screen 4" = [ ];
      "kwin"."Switch to Screen 5" = [ ];
      "kwin"."Switch to Screen 6" = [ ];
      "kwin"."Switch to Screen 7" = [ ];
      "kwin"."Switch to Screen Above" = [ ];
      "kwin"."Switch to Screen Below" = [ ];
      "kwin"."Switch to Screen to the Left" = [ ];
      "kwin"."Switch to Screen to the Right" = [ ];
      "kwin"."Toggle Night Color" = [ ];
      "kwin"."Toggle Window Raise/Lower" = [ ];
      "kwin"."ToggleCurrentThumbnail" = "Meta+Ctrl+T";
      "kwin"."Walk Through Desktop List" = [ ];
      "kwin"."Walk Through Desktop List (Reverse)" = [ ];
      "kwin"."Walk Through Desktops" = [ ];
      "kwin"."Walk Through Desktops (Reverse)" = [ ];
      "kwin"."Walk Through Windows" = "Alt+Tab";
      "kwin"."Walk Through Windows (Reverse)" = "Alt+Shift+Backtab";
      "kwin"."Walk Through Windows Alternative" = [ ];
      "kwin"."Walk Through Windows Alternative (Reverse)" = [ ];
      "kwin"."Walk Through Windows of Current Application" = "Alt+`";
      "kwin"."Walk Through Windows of Current Application (Reverse)" = "Alt+~";
      "kwin"."Walk Through Windows of Current Application Alternative" = [ ];
      "kwin"."Walk Through Windows of Current Application Alternative (Reverse)" =
        [ ];
      "kwin"."Window Above Other Windows" = [ ];
      "kwin"."Window Below Other Windows" = [ ];
      "kwin"."Window Close" = "Alt+F4";
      "kwin"."Window Fullscreen" = [ ];
      "kwin"."Window Grow Horizontal" = [ ];
      "kwin"."Window Grow Vertical" = [ ];
      "kwin"."Window Lower" = [ ];
      "kwin"."Window Maximize" = "Meta+PgUp";
      "kwin"."Window Maximize Horizontal" = [ ];
      "kwin"."Window Maximize Vertical" = [ ];
      "kwin"."Window Minimize" = "Meta+PgDown";
      "kwin"."Window Move" = [ ];
      "kwin"."Window Move Center" = [ ];
      "kwin"."Window No Border" = [ ];
      "kwin"."Window On All Desktops" = [ ];
      "kwin"."Window One Desktop Down" = "Meta+Ctrl+Shift+Down";
      "kwin"."Window One Desktop Up" = "Meta+Ctrl+Shift+Up";
      "kwin"."Window One Desktop to the Left" = "Meta+Ctrl+Shift+Left";
      "kwin"."Window One Desktop to the Right" = "Meta+Ctrl+Shift+Right";
      "kwin"."Window One Screen Down" = [ ];
      "kwin"."Window One Screen Up" = [ ];
      "kwin"."Window One Screen to the Left" = [ ];
      "kwin"."Window One Screen to the Right" = [ ];
      "kwin"."Window Operations Menu" = "Alt+F3";
      "kwin"."Window Pack Down" = [ ];
      "kwin"."Window Pack Left" = [ ];
      "kwin"."Window Pack Right" = [ ];
      "kwin"."Window Pack Up" = [ ];
      "kwin"."Window Quick Tile Bottom" = "Meta+Down";
      "kwin"."Window Quick Tile Bottom Left" = [ ];
      "kwin"."Window Quick Tile Bottom Right" = [ ];
      "kwin"."Window Quick Tile Left" = "Meta+Left";
      "kwin"."Window Quick Tile Right" = "Meta+Right";
      "kwin"."Window Quick Tile Top" = "Meta+Up";
      "kwin"."Window Quick Tile Top Left" = [ ];
      "kwin"."Window Quick Tile Top Right" = [ ];
      "kwin"."Window Raise" = [ ];
      "kwin"."Window Resize" = [ ];
      "kwin"."Window Shade" = [ ];
      "kwin"."Window Shrink Horizontal" = [ ];
      "kwin"."Window Shrink Vertical" = [ ];
      "kwin"."Window to Desktop 1" = [ ];
      "kwin"."Window to Desktop 10" = [ ];
      "kwin"."Window to Desktop 11" = [ ];
      "kwin"."Window to Desktop 12" = [ ];
      "kwin"."Window to Desktop 13" = [ ];
      "kwin"."Window to Desktop 14" = [ ];
      "kwin"."Window to Desktop 15" = [ ];
      "kwin"."Window to Desktop 16" = [ ];
      "kwin"."Window to Desktop 17" = [ ];
      "kwin"."Window to Desktop 18" = [ ];
      "kwin"."Window to Desktop 19" = [ ];
      "kwin"."Window to Desktop 2" = [ ];
      "kwin"."Window to Desktop 20" = [ ];
      "kwin"."Window to Desktop 3" = [ ];
      "kwin"."Window to Desktop 4" = [ ];
      "kwin"."Window to Desktop 5" = [ ];
      "kwin"."Window to Desktop 6" = [ ];
      "kwin"."Window to Desktop 7" = [ ];
      "kwin"."Window to Desktop 8" = [ ];
      "kwin"."Window to Desktop 9" = [ ];
      "kwin"."Window to Next Desktop" = [ ];
      "kwin"."Window to Next Screen" = "Meta+Shift+Right";
      "kwin"."Window to Previous Desktop" = [ ];
      "kwin"."Window to Previous Screen" = "Meta+Shift+Left";
      "kwin"."Window to Screen 0" = [ ];
      "kwin"."Window to Screen 1" = [ ];
      "kwin"."Window to Screen 2" = [ ];
      "kwin"."Window to Screen 3" = [ ];
      "kwin"."Window to Screen 4" = [ ];
      "kwin"."Window to Screen 5" = [ ];
      "kwin"."Window to Screen 6" = [ ];
      "kwin"."Window to Screen 7" = [ ];
      "kwin"."view_actual_size" = "Meta+0";
      "kwin"."view_zoom_in" = [ "Meta++" "Meta+=" ];
      "kwin"."view_zoom_out" = "Meta+-";
      "mediacontrol"."mediavolumedown" = [ ];
      "mediacontrol"."mediavolumeup" = [ ];
      "mediacontrol"."nextmedia" = "Media Next";
      "mediacontrol"."pausemedia" = "Media Pause";
      "mediacontrol"."playmedia" = [ ];
      "mediacontrol"."playpausemedia" = "Media Play";
      "mediacontrol"."previousmedia" = "Media Previous";
      "mediacontrol"."stopmedia" = "Media Stop";
      "org.kde.dolphin.desktop"."_launch" = "Meta+E";
      "org.kde.kcalc.desktop"."_launch" = "Launch (1)";
      "org.kde.konsole.desktop"."NewTab" = [ ];
      "org.kde.konsole.desktop"."NewWindow" = [ ];
      "org.kde.konsole.desktop"."_launch" = "Ctrl+Alt+T";
      "org.kde.krunner.desktop"."RunClipboard" = "Alt+Shift+F2";
      "org.kde.krunner.desktop"."_launch" = [ "Alt+Space" "Alt+F2" "Search" ];
      "org.kde.plasma.emojier.desktop"."_launch" =
        [ "Meta+." "Meta+Ctrl+Alt+Shift+Space" ];
      "org.kde.spectacle.desktop"."ActiveWindowScreenShot" = "Meta+Print";
      "org.kde.spectacle.desktop"."CurrentMonitorScreenShot" = [ ];
      "org.kde.spectacle.desktop"."FullScreenScreenShot" = "Shift+Print";
      "org.kde.spectacle.desktop"."OpenWithoutScreenshot" = [ ];
      "org.kde.spectacle.desktop"."RectangularRegionScreenShot" =
        "Meta+Shift+Print";
      "org.kde.spectacle.desktop"."WindowUnderCursorScreenShot" =
        "Meta+Ctrl+Print";
      "org.kde.spectacle.desktop"."_launch" = "Print";
      "org_kde_powerdevil"."Decrease Keyboard Brightness" =
        "Keyboard Brightness Down";
      "org_kde_powerdevil"."Decrease Screen Brightness" =
        "Monitor Brightness Down";
      "org_kde_powerdevil"."Hibernate" = "Hibernate";
      "org_kde_powerdevil"."Increase Keyboard Brightness" =
        "Keyboard Brightness Up";
      "org_kde_powerdevil"."Increase Screen Brightness" =
        "Monitor Brightness Up";
      "org_kde_powerdevil"."PowerDown" = "Power Down";
      "org_kde_powerdevil"."PowerOff" = "Power Off";
      "org_kde_powerdevil"."Sleep" = "Sleep";
      "org_kde_powerdevil"."Toggle Keyboard Backlight" =
        "Keyboard Light On/Off";
      "org_kde_powerdevil"."Turn Off Screen" = [ ];
      "plasmashell"."activate task manager entry 1" = "Meta+1";
      "plasmashell"."activate task manager entry 10" = [ ];
      "plasmashell"."activate task manager entry 2" = "Meta+2";
      "plasmashell"."activate task manager entry 3" = "Meta+3";
      "plasmashell"."activate task manager entry 4" = "Meta+4";
      "plasmashell"."activate task manager entry 5" = "Meta+5";
      "plasmashell"."activate task manager entry 6" = "Meta+6";
      "plasmashell"."activate task manager entry 7" = "Meta+7";
      "plasmashell"."activate task manager entry 8" = "Meta+8";
      "plasmashell"."activate task manager entry 9" = "Meta+9";
      "plasmashell"."clear-history" = [ ];
      "plasmashell"."clipboard_action" = "Meta+Ctrl+X";
      "plasmashell"."cycle-panels" = "Meta+Alt+P";
      "plasmashell"."cycleNextAction" = [ ];
      "plasmashell"."cyclePrevAction" = [ ];
      "plasmashell"."edit_clipboard" = [ ];
      "plasmashell"."manage activities" = "Meta+Q";
      "plasmashell"."next activity" = "Meta+Tab";
      "plasmashell"."previous activity" = "Meta+Shift+Tab";
      "plasmashell"."repeat_action" = "Meta+Ctrl+R";
      "plasmashell"."show dashboard" = "Ctrl+F12";
      "plasmashell"."show-barcode" = [ ];
      "plasmashell"."show-on-mouse-pos" = "Meta+V";
      "plasmashell"."stop current activity" = "Meta+S";
      "plasmashell"."switch to next activity" = [ ];
      "plasmashell"."switch to previous activity" = [ ];
      "plasmashell"."toggle do not disturb" = [ ];
      "systemsettings.desktop"."_launch" = "Tools";
      "systemsettings.desktop"."kcm-kscreen" = [ ];
      "systemsettings.desktop"."kcm-lookandfeel" = [ ];
      "systemsettings.desktop"."kcm-users" = [ ];
      "systemsettings.desktop"."powerdevilprofilesconfig" = [ ];
      "systemsettings.desktop"."screenlocker" = [ ];
    };
    configFile = {
      "baloofilerc"."General"."dbVersion" = 2;
      "baloofilerc"."General"."exclude filters" =
        "*~,*.part,*.o,*.la,*.lo,*.loT,*.moc,moc_*.cpp,qrc_*.cpp,ui_*.h,cmake_install.cmake,CMakeCache.txt,CTestTestfile.cmake,libtool,config.status,confdefs.h,autom4te,conftest,confstat,Makefile.am,*.gcode,.ninja_deps,.ninja_log,build.ninja,*.csproj,*.m4,*.rej,*.gmo,*.pc,*.omf,*.aux,*.tmp,*.po,*.vm*,*.nvram,*.rcore,*.swp,*.swap,lzo,litmain.sh,*.orig,.histfile.*,.xsession-errors*,*.map,*.so,*.a,*.db,*.qrc,*.ini,*.init,*.img,*.vdi,*.vbox*,vbox.log,*.qcow2,*.vmdk,*.vhd,*.vhdx,*.sql,*.sql.gz,*.ytdl,*.class,*.pyc,*.pyo,*.elc,*.qmlc,*.jsc,*.fastq,*.fq,*.gb,*.fasta,*.fna,*.gbff,*.faa,po,CVS,.svn,.git,_darcs,.bzr,.hg,CMakeFiles,CMakeTmp,CMakeTmpQmake,.moc,.obj,.pch,.uic,.npm,.yarn,.yarn-cache,__pycache__,node_modules,node_packages,nbproject,.venv,venv,core-dumps,lost+found";
      "baloofilerc"."General"."exclude filters version" = 8;
      "dolphinrc"."ContextMenu"."ShowCopyMoveMenu" = true;
      "dolphinrc"."General"."ConfirmClosingMultipleTabs" = false;
      "dolphinrc"."General"."ConfirmClosingTerminalRunningProgram" = false;
      "dolphinrc"."General"."EditableUrl" = true;
      "dolphinrc"."General"."FilterBar" = true;
      "dolphinrc"."General"."RememberOpenedTabs" = false;
      "dolphinrc"."General"."ShowFullPath" = true;
      "dolphinrc"."General"."ShowFullPathInTitlebar" = true;
      "dolphinrc"."General"."ShowToolTips" = true;
      "dolphinrc"."General"."SortingChoice" = "CaseInsensitiveSorting";
      "dolphinrc"."IconsMode"."PreviewSize" = 112;
      "dolphinrc"."KFileDialog Settings"."Places Icons Auto-resize" = false;
      "dolphinrc"."KFileDialog Settings"."Places Icons Static Size" = 22;
      "dolphinrc"."PreviewSettings"."Plugins" =
        "audiothumbnail,blenderthumbnail,comicbookthumbnail,djvuthumbnail,ebookthumbnail,exrthumbnail,directorythumbnail,fontthumbnail,imagethumbnail,jpegthumbnail,kraorathumbnail,windowsexethumbnail,windowsimagethumbnail,mobithumbnail,opendocumentthumbnail,gsthumbnail,rawthumbnail,svgthumbnail,textthumbnail,ffmpegthumbs";
      "dolphinrc"."kuick-copy"."Paths[$e]" =
        "$HOME/Documents/,smb://192.168.0.11/BACKUP";
      "dolphinrc"."kuick-move"."Paths[$e]" =
        "smb://192.168.0.11/BACKUP,$HOME/Documents/,$HOME/Downloads/";
      "kactivitymanagerdrc"."activities"."e9f751f4-7ce9-49a3-abc4-b819e9dff6fe" =
        "Default";
      "kactivitymanagerdrc"."main"."currentActivity" =
        "e9f751f4-7ce9-49a3-abc4-b819e9dff6fe";
      "kcminputrc"."Mouse"."X11LibInputXAccelProfileFlat" = false;
      "kcminputrc"."Mouse"."cursorTheme" = "Layan-border-cursors";
      "kcminputrc"."Tmp"."update_info" =
        "delete_cursor_old_default_size.upd:DeleteCursorOldDefaultSize";
      "kded5rc"."Module-appmenu"."autoload" = true;
      "kded5rc"."Module-baloosearchmodule"."autoload" = true;
      "kded5rc"."Module-bluedevil"."autoload" = false;
      "kded5rc"."Module-browserintegrationreminder"."autoload" = false;
      "kded5rc"."Module-colorcorrectlocationupdater"."autoload" = true;
      "kded5rc"."Module-device_automounter"."autoload" = false;
      "kded5rc"."Module-freespacenotifier"."autoload" = true;
      "kded5rc"."Module-gtkconfig"."autoload" = true;
      "kded5rc"."Module-inotify"."autoload" = true;
      "kded5rc"."Module-kded_accounts"."autoload" = true;
      "kded5rc"."Module-kded_touchpad"."autoload" = true;
      "kded5rc"."Module-keyboard"."autoload" = true;
      "kded5rc"."Module-khotkeys"."autoload" = true;
      "kded5rc"."Module-kscreen"."autoload" = true;
      "kded5rc"."Module-ksysguard"."autoload" = true;
      "kded5rc"."Module-ktimezoned"."autoload" = true;
      "kded5rc"."Module-networkmanagement"."autoload" = true;
      "kded5rc"."Module-networkstatus"."autoload" = true;
      "kded5rc"."Module-plasma_accentcolor_service"."autoload" = true;
      "kded5rc"."Module-printmanager"."autoload" = true;
      "kded5rc"."Module-proxyscout"."autoload" = true;
      "kded5rc"."Module-remotenotifier"."autoload" = true;
      "kded5rc"."Module-smbwatcher"."autoload" = true;
      "kded5rc"."Module-statusnotifierwatcher"."autoload" = true;
      "kded5rc"."PlasmaBrowserIntegration"."shownCount" = 4;
      "kdeglobals"."DirSelect Dialog"."DirSelectDialog Size" = "867,602";
      "kdeglobals"."General"."BrowserApplication" = "google-chrome.desktop";
      "kdeglobals"."General"."XftHintStyle" = "hintslight";
      "kdeglobals"."General"."XftSubPixel" = "rgb";
      "kdeglobals"."KDE"."AnimationDurationFactor" = 0.17677669529663687;
      "kdeglobals"."KDE"."ShowDeleteCommand" = true;
      "kdeglobals"."KFileDialog Settings"."Allow Expansion" = false;
      "kdeglobals"."KFileDialog Settings"."Automatically select filename extension" =
        true;
      "kdeglobals"."KFileDialog Settings"."Breadcrumb Navigation" = true;
      "kdeglobals"."KFileDialog Settings"."Decoration position" = 2;
      "kdeglobals"."KFileDialog Settings"."LocationCombo Completionmode" = 5;
      "kdeglobals"."KFileDialog Settings"."PathCombo Completionmode" = 5;
      "kdeglobals"."KFileDialog Settings"."Show Bookmarks" = false;
      "kdeglobals"."KFileDialog Settings"."Show Full Path" = false;
      "kdeglobals"."KFileDialog Settings"."Show Inline Previews" = true;
      "kdeglobals"."KFileDialog Settings"."Show Preview" = false;
      "kdeglobals"."KFileDialog Settings"."Show Speedbar" = true;
      "kdeglobals"."KFileDialog Settings"."Show hidden files" = false;
      "kdeglobals"."KFileDialog Settings"."Sort by" = "Name";
      "kdeglobals"."KFileDialog Settings"."Sort directories first" = true;
      "kdeglobals"."KFileDialog Settings"."Sort hidden files last" = false;
      "kdeglobals"."KFileDialog Settings"."Sort reversed" = false;
      "kdeglobals"."KFileDialog Settings"."Speedbar Width" = 219;
      "kdeglobals"."KFileDialog Settings"."View Style" = "DetailTree";
      "kdeglobals"."PreviewSettings"."MaximumRemoteSize" = 10485760;
      "kdeglobals"."WM"."activeBackground" = "47,52,63";
      "kdeglobals"."WM"."activeBlend" = "47,52,63";
      "kdeglobals"."WM"."activeForeground" = "211,218,227";
      "kdeglobals"."WM"."inactiveBackground" = "47,52,63";
      "kdeglobals"."WM"."inactiveBlend" = "47,52,63";
      "kdeglobals"."WM"."inactiveForeground" = "102,106,115";
      "kglobalshortcutsrc"."ActivityManager"."_k_friendly_name" =
        "Activity Manager";
      "kglobalshortcutsrc"."KDE Keyboard Layout Switcher"."_k_friendly_name" =
        "Keyboard Layout Switcher";
      "kglobalshortcutsrc"."bismuth"."_k_friendly_name" = "Window Tiling";
      "kglobalshortcutsrc"."kaccess"."_k_friendly_name" = "Accessibility";
      "kglobalshortcutsrc"."kcm_touchpad"."_k_friendly_name" = "Touchpad";
      "kglobalshortcutsrc"."kded5"."_k_friendly_name" = "KDE Daemon";
      "kglobalshortcutsrc"."khotkeys"."_k_friendly_name" =
        "Custom Shortcuts Service";
      "kglobalshortcutsrc"."kmix"."_k_friendly_name" = "Audio Volume";
      "kglobalshortcutsrc"."ksmserver"."_k_friendly_name" =
        "Session Management";
      "kglobalshortcutsrc"."kwin"."_k_friendly_name" = "KWin";
      "kglobalshortcutsrc"."mediacontrol"."_k_friendly_name" =
        "Media Controller";
      "kglobalshortcutsrc"."org.kde.dolphin.desktop"."_k_friendly_name" =
        "Dolphin";
      "kglobalshortcutsrc"."org.kde.kcalc.desktop"."_k_friendly_name" = "KCalc";
      "kglobalshortcutsrc"."org.kde.konsole.desktop"."_k_friendly_name" =
        "Konsole";
      "kglobalshortcutsrc"."org.kde.krunner.desktop"."_k_friendly_name" =
        "KRunner";
      "kglobalshortcutsrc"."org.kde.plasma.emojier.desktop"."_k_friendly_name" =
        "Emoji Selector";
      "kglobalshortcutsrc"."org.kde.spectacle.desktop"."_k_friendly_name" =
        "Spectacle";
      "kglobalshortcutsrc"."org_kde_powerdevil"."_k_friendly_name" =
        "Power Management";
      "kglobalshortcutsrc"."plasmashell"."_k_friendly_name" = "Plasma";
      "kglobalshortcutsrc"."systemsettings.desktop"."_k_friendly_name" =
        "System Settings";
      "khotkeysrc"."Data"."DataCount" = 3;
      "khotkeysrc"."Data_1"."Comment" = "KMenuEdit Global Shortcuts";
      "khotkeysrc"."Data_1"."DataCount" = 1;
      "khotkeysrc"."Data_1"."Enabled" = true;
      "khotkeysrc"."Data_1"."Name" = "KMenuEdit";
      "khotkeysrc"."Data_1"."SystemGroup" = 1;
      "khotkeysrc"."Data_1"."Type" = "ACTION_DATA_GROUP";
      "khotkeysrc"."Data_1Conditions"."Comment" = "";
      "khotkeysrc"."Data_1Conditions"."ConditionsCount" = 0;
      "khotkeysrc"."Data_1_1"."Comment" = "Comment";
      "khotkeysrc"."Data_1_1"."Enabled" = true;
      "khotkeysrc"."Data_1_1"."Name" = "Search";
      "khotkeysrc"."Data_1_1"."Type" = "SIMPLE_ACTION_DATA";
      "khotkeysrc"."Data_1_1Actions"."ActionsCount" = 1;
      "khotkeysrc"."Data_1_1Actions0"."CommandURL" = "http://google.com";
      "khotkeysrc"."Data_1_1Actions0"."Type" = "COMMAND_URL";
      "khotkeysrc"."Data_1_1Conditions"."Comment" = "";
      "khotkeysrc"."Data_1_1Conditions"."ConditionsCount" = 0;
      "khotkeysrc"."Data_1_1Triggers"."Comment" = "Simple_action";
      "khotkeysrc"."Data_1_1Triggers"."TriggersCount" = 1;
      "khotkeysrc"."Data_1_1Triggers0"."Key" = "";
      "khotkeysrc"."Data_1_1Triggers0"."Type" = "SHORTCUT";
      "khotkeysrc"."Data_1_1Triggers0"."Uuid" =
        "{d03619b6-9b3c-48cc-9d9c-a2aadb485550}";
      "khotkeysrc"."Data_2"."Comment" =
        "This group contains various examples demonstrating most of the features of KHotkeys. (Note that this group and all its actions are disabled by default.)";
      "khotkeysrc"."Data_2"."DataCount" = 8;
      "khotkeysrc"."Data_2"."Enabled" = false;
      "khotkeysrc"."Data_2"."ImportId" = "kde32b1";
      "khotkeysrc"."Data_2"."Name" = "Examples";
      "khotkeysrc"."Data_2"."SystemGroup" = 0;
      "khotkeysrc"."Data_2"."Type" = "ACTION_DATA_GROUP";
      "khotkeysrc"."Data_2Conditions"."Comment" = "";
      "khotkeysrc"."Data_2Conditions"."ConditionsCount" = 0;
      "khotkeysrc"."Data_2_1"."Comment" =
        "After pressing Ctrl+Alt+I, the KSIRC window will be activated, if it exists. Simple.";
      "khotkeysrc"."Data_2_1"."Enabled" = false;
      "khotkeysrc"."Data_2_1"."Name" = "Activate KSIRC Window";
      "khotkeysrc"."Data_2_1"."Type" = "SIMPLE_ACTION_DATA";
      "khotkeysrc"."Data_2_1Actions"."ActionsCount" = 1;
      "khotkeysrc"."Data_2_1Actions0"."Type" = "ACTIVATE_WINDOW";
      "khotkeysrc"."Data_2_1Actions0Window"."Comment" = "KSIRC window";
      "khotkeysrc"."Data_2_1Actions0Window"."WindowsCount" = 1;
      "khotkeysrc"."Data_2_1Actions0Window0"."Class" = "ksirc";
      "khotkeysrc"."Data_2_1Actions0Window0"."ClassType" = 1;
      "khotkeysrc"."Data_2_1Actions0Window0"."Comment" = "KSIRC";
      "khotkeysrc"."Data_2_1Actions0Window0"."Role" = "";
      "khotkeysrc"."Data_2_1Actions0Window0"."RoleType" = 0;
      "khotkeysrc"."Data_2_1Actions0Window0"."Title" = "";
      "khotkeysrc"."Data_2_1Actions0Window0"."TitleType" = 0;
      "khotkeysrc"."Data_2_1Actions0Window0"."Type" = "SIMPLE";
      "khotkeysrc"."Data_2_1Actions0Window0"."WindowTypes" = 33;
      "khotkeysrc"."Data_2_1Conditions"."Comment" = "";
      "khotkeysrc"."Data_2_1Conditions"."ConditionsCount" = 0;
      "khotkeysrc"."Data_2_1Triggers"."Comment" = "Simple_action";
      "khotkeysrc"."Data_2_1Triggers"."TriggersCount" = 1;
      "khotkeysrc"."Data_2_1Triggers0"."Key" = "Ctrl+Alt+I";
      "khotkeysrc"."Data_2_1Triggers0"."Type" = "SHORTCUT";
      "khotkeysrc"."Data_2_1Triggers0"."Uuid" =
        "{40eadb55-3c75-4eed-80e8-c2f16af42d8f}";
      "khotkeysrc"."Data_2_2"."Comment" = ''
        After pressing Alt+Ctrl+H the input of 'Hello' will be simulated, as if you typed it.  This is especially useful if you have call to frequently type a word (for instance, 'unsigned').  Every keypress in the input is separated by a colon ':'. Note that the keypresses literally mean keypresses, so you have to write what you would press on the keyboard. In the table below, the left column shows the input and the right column shows what to type.

        "enter" (i.e. new line)                Enter or Return
        a (i.e. small a)                          A
        A (i.e. capital a)                       Shift+A
        : (colon)                                  Shift+;
        ' '  (space)                              Space'';
      "khotkeysrc"."Data_2_2"."Enabled" = false;
      "khotkeysrc"."Data_2_2"."Name" = "Type 'Hello'";
      "khotkeysrc"."Data_2_2"."Type" = "SIMPLE_ACTION_DATA";
      "khotkeysrc"."Data_2_2Actions"."ActionsCount" = 1;
      "khotkeysrc"."Data_2_2Actions0"."DestinationWindow" = 2;
      "khotkeysrc"."Data_2_2Actions0"."Input" = ''
        Shift+H:E:L:L:O
      '';
      "khotkeysrc"."Data_2_2Actions0"."Type" = "KEYBOARD_INPUT";
      "khotkeysrc"."Data_2_2Conditions"."Comment" = "";
      "khotkeysrc"."Data_2_2Conditions"."ConditionsCount" = 0;
      "khotkeysrc"."Data_2_2Triggers"."Comment" = "Simple_action";
      "khotkeysrc"."Data_2_2Triggers"."TriggersCount" = 1;
      "khotkeysrc"."Data_2_2Triggers0"."Key" = "Ctrl+Alt+H";
      "khotkeysrc"."Data_2_2Triggers0"."Type" = "SHORTCUT";
      "khotkeysrc"."Data_2_2Triggers0"."Uuid" =
        "{de73bded-bbd4-4c98-b5f5-b178ae885652}";
      "khotkeysrc"."Data_2_3"."Comment" =
        "This action runs Konsole, after pressing Ctrl+Alt+T.";
      "khotkeysrc"."Data_2_3"."Enabled" = false;
      "khotkeysrc"."Data_2_3"."Name" = "Run Konsole";
      "khotkeysrc"."Data_2_3"."Type" = "SIMPLE_ACTION_DATA";
      "khotkeysrc"."Data_2_3Actions"."ActionsCount" = 1;
      "khotkeysrc"."Data_2_3Actions0"."CommandURL" = "konsole";
      "khotkeysrc"."Data_2_3Actions0"."Type" = "COMMAND_URL";
      "khotkeysrc"."Data_2_3Conditions"."Comment" = "";
      "khotkeysrc"."Data_2_3Conditions"."ConditionsCount" = 0;
      "khotkeysrc"."Data_2_3Triggers"."Comment" = "Simple_action";
      "khotkeysrc"."Data_2_3Triggers"."TriggersCount" = 1;
      "khotkeysrc"."Data_2_3Triggers0"."Key" = "Ctrl+Alt+T";
      "khotkeysrc"."Data_2_3Triggers0"."Type" = "SHORTCUT";
      "khotkeysrc"."Data_2_3Triggers0"."Uuid" =
        "{8c545d4a-0b1c-4aa7-8de7-9b6e76f0e271}";
      "khotkeysrc"."Data_2_4"."Comment" = ''
        Read the comment on the "Type 'Hello'" action first.

        Qt Designer uses Ctrl+F4 for closing windows.  In KDE, however, Ctrl+F4 is the shortcut for going to virtual desktop 4, so this shortcut does not work in Qt Designer.  Further, Qt Designer does not use KDE's standard Ctrl+W for closing the window.

        This problem can be solved by remapping Ctrl+W to Ctrl+F4 when the active window is Qt Designer. When Qt Designer is active, every time Ctrl+W is pressed, Ctrl+F4 will be sent to Qt Designer instead. In other applications, the effect of Ctrl+W is unchanged.

        We now need to specify three things: A new shortcut trigger on 'Ctrl+W', a new keyboard input action sending Ctrl+F4, and a new condition that the active window is Qt Designer.
        Qt Designer seems to always have title 'Qt Designer by Trolltech', so the condition will check for the active window having that title.'';
      "khotkeysrc"."Data_2_4"."Enabled" = false;
      "khotkeysrc"."Data_2_4"."Name" = "Remap Ctrl+W to Ctrl+F4 in Qt Designer";
      "khotkeysrc"."Data_2_4"."Type" = "GENERIC_ACTION_DATA";
      "khotkeysrc"."Data_2_4Actions"."ActionsCount" = 1;
      "khotkeysrc"."Data_2_4Actions0"."DestinationWindow" = 2;
      "khotkeysrc"."Data_2_4Actions0"."Input" = "Ctrl+F4";
      "khotkeysrc"."Data_2_4Actions0"."Type" = "KEYBOARD_INPUT";
      "khotkeysrc"."Data_2_4Conditions"."Comment" = "";
      "khotkeysrc"."Data_2_4Conditions"."ConditionsCount" = 1;
      "khotkeysrc"."Data_2_4Conditions0"."Type" = "ACTIVE_WINDOW";
      "khotkeysrc"."Data_2_4Conditions0Window"."Comment" = "Qt Designer";
      "khotkeysrc"."Data_2_4Conditions0Window"."WindowsCount" = 1;
      "khotkeysrc"."Data_2_4Conditions0Window0"."Class" = "";
      "khotkeysrc"."Data_2_4Conditions0Window0"."ClassType" = 0;
      "khotkeysrc"."Data_2_4Conditions0Window0"."Comment" = "";
      "khotkeysrc"."Data_2_4Conditions0Window0"."Role" = "";
      "khotkeysrc"."Data_2_4Conditions0Window0"."RoleType" = 0;
      "khotkeysrc"."Data_2_4Conditions0Window0"."Title" =
        "Qt Designer by Trolltech";
      "khotkeysrc"."Data_2_4Conditions0Window0"."TitleType" = 2;
      "khotkeysrc"."Data_2_4Conditions0Window0"."Type" = "SIMPLE";
      "khotkeysrc"."Data_2_4Conditions0Window0"."WindowTypes" = 33;
      "khotkeysrc"."Data_2_4Triggers"."Comment" = "";
      "khotkeysrc"."Data_2_4Triggers"."TriggersCount" = 1;
      "khotkeysrc"."Data_2_4Triggers0"."Key" = "Ctrl+W";
      "khotkeysrc"."Data_2_4Triggers0"."Type" = "SHORTCUT";
      "khotkeysrc"."Data_2_4Triggers0"."Uuid" =
        "{93749563-4161-4f15-b4cc-da0dc442cadf}";
      "khotkeysrc"."Data_2_5"."Comment" =
        "By pressing Alt+Ctrl+W a D-Bus call will be performed that will show the minicli. You can use any kind of D-Bus call, just like using the command line 'qdbus' tool.";
      "khotkeysrc"."Data_2_5"."Enabled" = false;
      "khotkeysrc"."Data_2_5"."Name" =
        "Perform D-Bus call 'qdbus org.kde.krunner /App display'";
      "khotkeysrc"."Data_2_5"."Type" = "SIMPLE_ACTION_DATA";
      "khotkeysrc"."Data_2_5Actions"."ActionsCount" = 1;
      "khotkeysrc"."Data_2_5Actions0"."Arguments" = "";
      "khotkeysrc"."Data_2_5Actions0"."Call" = "popupExecuteCommand";
      "khotkeysrc"."Data_2_5Actions0"."RemoteApp" = "org.kde.krunner";
      "khotkeysrc"."Data_2_5Actions0"."RemoteObj" = "/App";
      "khotkeysrc"."Data_2_5Actions0"."Type" = "DBUS";
      "khotkeysrc"."Data_2_5Conditions"."Comment" = "";
      "khotkeysrc"."Data_2_5Conditions"."ConditionsCount" = 0;
      "khotkeysrc"."Data_2_5Triggers"."Comment" = "Simple_action";
      "khotkeysrc"."Data_2_5Triggers"."TriggersCount" = 1;
      "khotkeysrc"."Data_2_5Triggers0"."Key" = "Ctrl+Alt+W";
      "khotkeysrc"."Data_2_5Triggers0"."Type" = "SHORTCUT";
      "khotkeysrc"."Data_2_5Triggers0"."Uuid" =
        "{c6925c86-040d-4c8b-94cf-aa3126161d01}";
      "khotkeysrc"."Data_2_6"."Comment" = ''
        Read the comment on the "Type 'Hello'" action first.

        Just like the "Type 'Hello'" action, this one simulates keyboard input, specifically, after pressing Ctrl+Alt+B, it sends B to XMMS (B in XMMS jumps to the next song). The 'Send to specific window' checkbox is checked and a window with its class containing 'XMMS_Player' is specified; this will make the input always be sent to this window. This way, you can control XMMS even if, for instance, it is on a different virtual desktop.

        (Run 'xprop' and click on the XMMS window and search for WM_CLASS to see 'XMMS_Player').'';
      "khotkeysrc"."Data_2_6"."Enabled" = false;
      "khotkeysrc"."Data_2_6"."Name" = "Next in XMMS";
      "khotkeysrc"."Data_2_6"."Type" = "SIMPLE_ACTION_DATA";
      "khotkeysrc"."Data_2_6Actions"."ActionsCount" = 1;
      "khotkeysrc"."Data_2_6Actions0"."DestinationWindow" = 1;
      "khotkeysrc"."Data_2_6Actions0"."Input" = "B";
      "khotkeysrc"."Data_2_6Actions0"."Type" = "KEYBOARD_INPUT";
      "khotkeysrc"."Data_2_6Actions0DestinationWindow"."Comment" =
        "XMMS window";
      "khotkeysrc"."Data_2_6Actions0DestinationWindow"."WindowsCount" = 1;
      "khotkeysrc"."Data_2_6Actions0DestinationWindow0"."Class" = "XMMS_Player";
      "khotkeysrc"."Data_2_6Actions0DestinationWindow0"."ClassType" = 1;
      "khotkeysrc"."Data_2_6Actions0DestinationWindow0"."Comment" =
        "XMMS Player window";
      "khotkeysrc"."Data_2_6Actions0DestinationWindow0"."Role" = "";
      "khotkeysrc"."Data_2_6Actions0DestinationWindow0"."RoleType" = 0;
      "khotkeysrc"."Data_2_6Actions0DestinationWindow0"."Title" = "";
      "khotkeysrc"."Data_2_6Actions0DestinationWindow0"."TitleType" = 0;
      "khotkeysrc"."Data_2_6Actions0DestinationWindow0"."Type" = "SIMPLE";
      "khotkeysrc"."Data_2_6Actions0DestinationWindow0"."WindowTypes" = 33;
      "khotkeysrc"."Data_2_6Conditions"."Comment" = "";
      "khotkeysrc"."Data_2_6Conditions"."ConditionsCount" = 0;
      "khotkeysrc"."Data_2_6Triggers"."Comment" = "Simple_action";
      "khotkeysrc"."Data_2_6Triggers"."TriggersCount" = 1;
      "khotkeysrc"."Data_2_6Triggers0"."Key" = "Ctrl+Alt+B";
      "khotkeysrc"."Data_2_6Triggers0"."Type" = "SHORTCUT";
      "khotkeysrc"."Data_2_6Triggers0"."Uuid" =
        "{2bc30b17-3017-4905-8356-7545c8af4815}";
      "khotkeysrc"."Data_2_7"."Comment" = ''
        Konqueror in KDE3.1 has tabs, and now you can also have gestures.

        Just press the middle mouse button and start drawing one of the gestures, and after you are finished, release the mouse button. If you only need to paste the selection, it still works, just click the middle mouse button. (You can change the mouse button to use in the global settings).

        Right now, there are the following gestures available:
        move right and back left - Forward (Alt+Right)
        move left and back right - Back (Alt+Left)
        move up and back down  - Up (Alt+Up)
        circle counterclockwise - Reload (F5)

        The gesture shapes can be entered by performing them in the configuration dialog. You can also look at your numeric pad to help you: gestures are recognized like a 3x3 grid of fields, numbered 1 to 9.

        Note that you must perform exactly the gesture to trigger the action. Because of this, it is possible to enter more gestures for the action. You should try to avoid complicated gestures where you change the direction of mouse movement more than once.  For instance, 45654 or 74123 are simple to perform, but 1236987 may be already quite difficult.

        The conditions for all gestures are defined in this group. All these gestures are active only if the active window is Konqueror (class contains 'konqueror').'';
      "khotkeysrc"."Data_2_7"."DataCount" = 4;
      "khotkeysrc"."Data_2_7"."Enabled" = false;
      "khotkeysrc"."Data_2_7"."Name" = "Konqi Gestures";
      "khotkeysrc"."Data_2_7"."SystemGroup" = 0;
      "khotkeysrc"."Data_2_7"."Type" = "ACTION_DATA_GROUP";
      "khotkeysrc"."Data_2_7Conditions"."Comment" = "Konqueror window";
      "khotkeysrc"."Data_2_7Conditions"."ConditionsCount" = 1;
      "khotkeysrc"."Data_2_7Conditions0"."Type" = "ACTIVE_WINDOW";
      "khotkeysrc"."Data_2_7Conditions0Window"."Comment" = "Konqueror";
      "khotkeysrc"."Data_2_7Conditions0Window"."WindowsCount" = 1;
      "khotkeysrc"."Data_2_7Conditions0Window0"."Class" = "konqueror";
      "khotkeysrc"."Data_2_7Conditions0Window0"."ClassType" = 1;
      "khotkeysrc"."Data_2_7Conditions0Window0"."Comment" = "Konqueror";
      "khotkeysrc"."Data_2_7Conditions0Window0"."Role" = "";
      "khotkeysrc"."Data_2_7Conditions0Window0"."RoleType" = 0;
      "khotkeysrc"."Data_2_7Conditions0Window0"."Title" = "";
      "khotkeysrc"."Data_2_7Conditions0Window0"."TitleType" = 0;
      "khotkeysrc"."Data_2_7Conditions0Window0"."Type" = "SIMPLE";
      "khotkeysrc"."Data_2_7Conditions0Window0"."WindowTypes" = 33;
      "khotkeysrc"."Data_2_7_1"."Comment" = "";
      "khotkeysrc"."Data_2_7_1"."Enabled" = false;
      "khotkeysrc"."Data_2_7_1"."Name" = "Back";
      "khotkeysrc"."Data_2_7_1"."Type" = "SIMPLE_ACTION_DATA";
      "khotkeysrc"."Data_2_7_1Actions"."ActionsCount" = 1;
      "khotkeysrc"."Data_2_7_1Actions0"."DestinationWindow" = 2;
      "khotkeysrc"."Data_2_7_1Actions0"."Input" = "Alt+Left";
      "khotkeysrc"."Data_2_7_1Actions0"."Type" = "KEYBOARD_INPUT";
      "khotkeysrc"."Data_2_7_1Conditions"."Comment" = "";
      "khotkeysrc"."Data_2_7_1Conditions"."ConditionsCount" = 0;
      "khotkeysrc"."Data_2_7_1Triggers"."Comment" = "Gesture_triggers";
      "khotkeysrc"."Data_2_7_1Triggers"."TriggersCount" = 3;
      "khotkeysrc"."Data_2_7_1Triggers0"."GesturePointData" =
        "0,0.0625,1,1,0.5,0.0625,0.0625,1,0.875,0.5,0.125,0.0625,1,0.75,0.5,0.1875,0.0625,1,0.625,0.5,0.25,0.0625,1,0.5,0.5,0.3125,0.0625,1,0.375,0.5,0.375,0.0625,1,0.25,0.5,0.4375,0.0625,1,0.125,0.5,0.5,0.0625,0,0,0.5,0.5625,0.0625,0,0.125,0.5,0.625,0.0625,0,0.25,0.5,0.6875,0.0625,0,0.375,0.5,0.75,0.0625,0,0.5,0.5,0.8125,0.0625,0,0.625,0.5,0.875,0.0625,0,0.75,0.5,0.9375,0.0625,0,0.875,0.5,1,0,0,1,0.5";
      "khotkeysrc"."Data_2_7_1Triggers0"."Type" = "GESTURE";
      "khotkeysrc"."Data_2_7_1Triggers1"."GesturePointData" =
        "0,0.0833333,1,0.5,0.5,0.0833333,0.0833333,1,0.375,0.5,0.166667,0.0833333,1,0.25,0.5,0.25,0.0833333,1,0.125,0.5,0.333333,0.0833333,0,0,0.5,0.416667,0.0833333,0,0.125,0.5,0.5,0.0833333,0,0.25,0.5,0.583333,0.0833333,0,0.375,0.5,0.666667,0.0833333,0,0.5,0.5,0.75,0.0833333,0,0.625,0.5,0.833333,0.0833333,0,0.75,0.5,0.916667,0.0833333,0,0.875,0.5,1,0,0,1,0.5";
      "khotkeysrc"."Data_2_7_1Triggers1"."Type" = "GESTURE";
      "khotkeysrc"."Data_2_7_1Triggers2"."GesturePointData" =
        "0,0.0833333,1,1,0.5,0.0833333,0.0833333,1,0.875,0.5,0.166667,0.0833333,1,0.75,0.5,0.25,0.0833333,1,0.625,0.5,0.333333,0.0833333,1,0.5,0.5,0.416667,0.0833333,1,0.375,0.5,0.5,0.0833333,1,0.25,0.5,0.583333,0.0833333,1,0.125,0.5,0.666667,0.0833333,0,0,0.5,0.75,0.0833333,0,0.125,0.5,0.833333,0.0833333,0,0.25,0.5,0.916667,0.0833333,0,0.375,0.5,1,0,0,0.5,0.5";
      "khotkeysrc"."Data_2_7_1Triggers2"."Type" = "GESTURE";
      "khotkeysrc"."Data_2_7_2"."Comment" = "";
      "khotkeysrc"."Data_2_7_2"."Enabled" = false;
      "khotkeysrc"."Data_2_7_2"."Name" = "Forward";
      "khotkeysrc"."Data_2_7_2"."Type" = "SIMPLE_ACTION_DATA";
      "khotkeysrc"."Data_2_7_2Actions"."ActionsCount" = 1;
      "khotkeysrc"."Data_2_7_2Actions0"."DestinationWindow" = 2;
      "khotkeysrc"."Data_2_7_2Actions0"."Input" = "Alt+Right";
      "khotkeysrc"."Data_2_7_2Actions0"."Type" = "KEYBOARD_INPUT";
      "khotkeysrc"."Data_2_7_2Conditions"."Comment" = "";
      "khotkeysrc"."Data_2_7_2Conditions"."ConditionsCount" = 0;
      "khotkeysrc"."Data_2_7_2Triggers"."Comment" = "Gesture_triggers";
      "khotkeysrc"."Data_2_7_2Triggers"."TriggersCount" = 3;
      "khotkeysrc"."Data_2_7_2Triggers0"."GesturePointData" =
        "0,0.0625,0,0,0.5,0.0625,0.0625,0,0.125,0.5,0.125,0.0625,0,0.25,0.5,0.1875,0.0625,0,0.375,0.5,0.25,0.0625,0,0.5,0.5,0.3125,0.0625,0,0.625,0.5,0.375,0.0625,0,0.75,0.5,0.4375,0.0625,0,0.875,0.5,0.5,0.0625,1,1,0.5,0.5625,0.0625,1,0.875,0.5,0.625,0.0625,1,0.75,0.5,0.6875,0.0625,1,0.625,0.5,0.75,0.0625,1,0.5,0.5,0.8125,0.0625,1,0.375,0.5,0.875,0.0625,1,0.25,0.5,0.9375,0.0625,1,0.125,0.5,1,0,0,0,0.5";
      "khotkeysrc"."Data_2_7_2Triggers0"."Type" = "GESTURE";
      "khotkeysrc"."Data_2_7_2Triggers1"."GesturePointData" =
        "0,0.0833333,0,0.5,0.5,0.0833333,0.0833333,0,0.625,0.5,0.166667,0.0833333,0,0.75,0.5,0.25,0.0833333,0,0.875,0.5,0.333333,0.0833333,1,1,0.5,0.416667,0.0833333,1,0.875,0.5,0.5,0.0833333,1,0.75,0.5,0.583333,0.0833333,1,0.625,0.5,0.666667,0.0833333,1,0.5,0.5,0.75,0.0833333,1,0.375,0.5,0.833333,0.0833333,1,0.25,0.5,0.916667,0.0833333,1,0.125,0.5,1,0,0,0,0.5";
      "khotkeysrc"."Data_2_7_2Triggers1"."Type" = "GESTURE";
      "khotkeysrc"."Data_2_7_2Triggers2"."GesturePointData" =
        "0,0.0833333,0,0,0.5,0.0833333,0.0833333,0,0.125,0.5,0.166667,0.0833333,0,0.25,0.5,0.25,0.0833333,0,0.375,0.5,0.333333,0.0833333,0,0.5,0.5,0.416667,0.0833333,0,0.625,0.5,0.5,0.0833333,0,0.75,0.5,0.583333,0.0833333,0,0.875,0.5,0.666667,0.0833333,1,1,0.5,0.75,0.0833333,1,0.875,0.5,0.833333,0.0833333,1,0.75,0.5,0.916667,0.0833333,1,0.625,0.5,1,0,0,0.5,0.5";
      "khotkeysrc"."Data_2_7_2Triggers2"."Type" = "GESTURE";
      "khotkeysrc"."Data_2_7_3"."Comment" = "";
      "khotkeysrc"."Data_2_7_3"."Enabled" = false;
      "khotkeysrc"."Data_2_7_3"."Name" = "Up";
      "khotkeysrc"."Data_2_7_3"."Type" = "SIMPLE_ACTION_DATA";
      "khotkeysrc"."Data_2_7_3Actions"."ActionsCount" = 1;
      "khotkeysrc"."Data_2_7_3Actions0"."DestinationWindow" = 2;
      "khotkeysrc"."Data_2_7_3Actions0"."Input" = "Alt+Up";
      "khotkeysrc"."Data_2_7_3Actions0"."Type" = "KEYBOARD_INPUT";
      "khotkeysrc"."Data_2_7_3Conditions"."Comment" = "";
      "khotkeysrc"."Data_2_7_3Conditions"."ConditionsCount" = 0;
      "khotkeysrc"."Data_2_7_3Triggers"."Comment" = "Gesture_triggers";
      "khotkeysrc"."Data_2_7_3Triggers"."TriggersCount" = 3;
      "khotkeysrc"."Data_2_7_3Triggers0"."GesturePointData" =
        "0,0.0625,-0.5,0.5,1,0.0625,0.0625,-0.5,0.5,0.875,0.125,0.0625,-0.5,0.5,0.75,0.1875,0.0625,-0.5,0.5,0.625,0.25,0.0625,-0.5,0.5,0.5,0.3125,0.0625,-0.5,0.5,0.375,0.375,0.0625,-0.5,0.5,0.25,0.4375,0.0625,-0.5,0.5,0.125,0.5,0.0625,0.5,0.5,0,0.5625,0.0625,0.5,0.5,0.125,0.625,0.0625,0.5,0.5,0.25,0.6875,0.0625,0.5,0.5,0.375,0.75,0.0625,0.5,0.5,0.5,0.8125,0.0625,0.5,0.5,0.625,0.875,0.0625,0.5,0.5,0.75,0.9375,0.0625,0.5,0.5,0.875,1,0,0,0.5,1";
      "khotkeysrc"."Data_2_7_3Triggers0"."Type" = "GESTURE";
      "khotkeysrc"."Data_2_7_3Triggers1"."GesturePointData" =
        "0,0.0833333,-0.5,0.5,1,0.0833333,0.0833333,-0.5,0.5,0.875,0.166667,0.0833333,-0.5,0.5,0.75,0.25,0.0833333,-0.5,0.5,0.625,0.333333,0.0833333,-0.5,0.5,0.5,0.416667,0.0833333,-0.5,0.5,0.375,0.5,0.0833333,-0.5,0.5,0.25,0.583333,0.0833333,-0.5,0.5,0.125,0.666667,0.0833333,0.5,0.5,0,0.75,0.0833333,0.5,0.5,0.125,0.833333,0.0833333,0.5,0.5,0.25,0.916667,0.0833333,0.5,0.5,0.375,1,0,0,0.5,0.5";
      "khotkeysrc"."Data_2_7_3Triggers1"."Type" = "GESTURE";
      "khotkeysrc"."Data_2_7_3Triggers2"."GesturePointData" =
        "0,0.0833333,-0.5,0.5,0.5,0.0833333,0.0833333,-0.5,0.5,0.375,0.166667,0.0833333,-0.5,0.5,0.25,0.25,0.0833333,-0.5,0.5,0.125,0.333333,0.0833333,0.5,0.5,0,0.416667,0.0833333,0.5,0.5,0.125,0.5,0.0833333,0.5,0.5,0.25,0.583333,0.0833333,0.5,0.5,0.375,0.666667,0.0833333,0.5,0.5,0.5,0.75,0.0833333,0.5,0.5,0.625,0.833333,0.0833333,0.5,0.5,0.75,0.916667,0.0833333,0.5,0.5,0.875,1,0,0,0.5,1";
      "khotkeysrc"."Data_2_7_3Triggers2"."Type" = "GESTURE";
      "khotkeysrc"."Data_2_7_4"."Comment" = "";
      "khotkeysrc"."Data_2_7_4"."Enabled" = false;
      "khotkeysrc"."Data_2_7_4"."Name" = "Reload";
      "khotkeysrc"."Data_2_7_4"."Type" = "SIMPLE_ACTION_DATA";
      "khotkeysrc"."Data_2_7_4Actions"."ActionsCount" = 1;
      "khotkeysrc"."Data_2_7_4Actions0"."DestinationWindow" = 2;
      "khotkeysrc"."Data_2_7_4Actions0"."Input" = "F5";
      "khotkeysrc"."Data_2_7_4Actions0"."Type" = "KEYBOARD_INPUT";
      "khotkeysrc"."Data_2_7_4Conditions"."Comment" = "";
      "khotkeysrc"."Data_2_7_4Conditions"."ConditionsCount" = 0;
      "khotkeysrc"."Data_2_7_4Triggers"."Comment" = "Gesture_triggers";
      "khotkeysrc"."Data_2_7_4Triggers"."TriggersCount" = 3;
      "khotkeysrc"."Data_2_7_4Triggers0"."GesturePointData" =
        "0,0.03125,0,0,1,0.03125,0.03125,0,0.125,1,0.0625,0.03125,0,0.25,1,0.09375,0.03125,0,0.375,1,0.125,0.03125,0,0.5,1,0.15625,0.03125,0,0.625,1,0.1875,0.03125,0,0.75,1,0.21875,0.03125,0,0.875,1,0.25,0.03125,-0.5,1,1,0.28125,0.03125,-0.5,1,0.875,0.3125,0.03125,-0.5,1,0.75,0.34375,0.03125,-0.5,1,0.625,0.375,0.03125,-0.5,1,0.5,0.40625,0.03125,-0.5,1,0.375,0.4375,0.03125,-0.5,1,0.25,0.46875,0.03125,-0.5,1,0.125,0.5,0.03125,1,1,0,0.53125,0.03125,1,0.875,0,0.5625,0.03125,1,0.75,0,0.59375,0.03125,1,0.625,0,0.625,0.03125,1,0.5,0,0.65625,0.03125,1,0.375,0,0.6875,0.03125,1,0.25,0,0.71875,0.03125,1,0.125,0,0.75,0.03125,0.5,0,0,0.78125,0.03125,0.5,0,0.125,0.8125,0.03125,0.5,0,0.25,0.84375,0.03125,0.5,0,0.375,0.875,0.03125,0.5,0,0.5,0.90625,0.03125,0.5,0,0.625,0.9375,0.03125,0.5,0,0.75,0.96875,0.03125,0.5,0,0.875,1,0,0,0,1";
      "khotkeysrc"."Data_2_7_4Triggers0"."Type" = "GESTURE";
      "khotkeysrc"."Data_2_7_4Triggers1"."GesturePointData" =
        "0,0.0277778,0,0,1,0.0277778,0.0277778,0,0.125,1,0.0555556,0.0277778,0,0.25,1,0.0833333,0.0277778,0,0.375,1,0.111111,0.0277778,0,0.5,1,0.138889,0.0277778,0,0.625,1,0.166667,0.0277778,0,0.75,1,0.194444,0.0277778,0,0.875,1,0.222222,0.0277778,-0.5,1,1,0.25,0.0277778,-0.5,1,0.875,0.277778,0.0277778,-0.5,1,0.75,0.305556,0.0277778,-0.5,1,0.625,0.333333,0.0277778,-0.5,1,0.5,0.361111,0.0277778,-0.5,1,0.375,0.388889,0.0277778,-0.5,1,0.25,0.416667,0.0277778,-0.5,1,0.125,0.444444,0.0277778,1,1,0,0.472222,0.0277778,1,0.875,0,0.5,0.0277778,1,0.75,0,0.527778,0.0277778,1,0.625,0,0.555556,0.0277778,1,0.5,0,0.583333,0.0277778,1,0.375,0,0.611111,0.0277778,1,0.25,0,0.638889,0.0277778,1,0.125,0,0.666667,0.0277778,0.5,0,0,0.694444,0.0277778,0.5,0,0.125,0.722222,0.0277778,0.5,0,0.25,0.75,0.0277778,0.5,0,0.375,0.777778,0.0277778,0.5,0,0.5,0.805556,0.0277778,0.5,0,0.625,0.833333,0.0277778,0.5,0,0.75,0.861111,0.0277778,0.5,0,0.875,0.888889,0.0277778,0,0,1,0.916667,0.0277778,0,0.125,1,0.944444,0.0277778,0,0.25,1,0.972222,0.0277778,0,0.375,1,1,0,0,0.5,1";
      "khotkeysrc"."Data_2_7_4Triggers1"."Type" = "GESTURE";
      "khotkeysrc"."Data_2_7_4Triggers2"."GesturePointData" =
        "0,0.0277778,0.5,0,0.5,0.0277778,0.0277778,0.5,0,0.625,0.0555556,0.0277778,0.5,0,0.75,0.0833333,0.0277778,0.5,0,0.875,0.111111,0.0277778,0,0,1,0.138889,0.0277778,0,0.125,1,0.166667,0.0277778,0,0.25,1,0.194444,0.0277778,0,0.375,1,0.222222,0.0277778,0,0.5,1,0.25,0.0277778,0,0.625,1,0.277778,0.0277778,0,0.75,1,0.305556,0.0277778,0,0.875,1,0.333333,0.0277778,-0.5,1,1,0.361111,0.0277778,-0.5,1,0.875,0.388889,0.0277778,-0.5,1,0.75,0.416667,0.0277778,-0.5,1,0.625,0.444444,0.0277778,-0.5,1,0.5,0.472222,0.0277778,-0.5,1,0.375,0.5,0.0277778,-0.5,1,0.25,0.527778,0.0277778,-0.5,1,0.125,0.555556,0.0277778,1,1,0,0.583333,0.0277778,1,0.875,0,0.611111,0.0277778,1,0.75,0,0.638889,0.0277778,1,0.625,0,0.666667,0.0277778,1,0.5,0,0.694444,0.0277778,1,0.375,0,0.722222,0.0277778,1,0.25,0,0.75,0.0277778,1,0.125,0,0.777778,0.0277778,0.5,0,0,0.805556,0.0277778,0.5,0,0.125,0.833333,0.0277778,0.5,0,0.25,0.861111,0.0277778,0.5,0,0.375,0.888889,0.0277778,0.5,0,0.5,0.916667,0.0277778,0.5,0,0.625,0.944444,0.0277778,0.5,0,0.75,0.972222,0.0277778,0.5,0,0.875,1,0,0,0,1";
      "khotkeysrc"."Data_2_7_4Triggers2"."Type" = "GESTURE";
      "khotkeysrc"."Data_2_8"."Comment" =
        "After pressing Win+E (Tux+E) a WWW browser will be launched, and it will open http://www.kde.org . You may run all kind of commands you can run in minicli (Alt+F2).";
      "khotkeysrc"."Data_2_8"."Enabled" = false;
      "khotkeysrc"."Data_2_8"."Name" = "Go to KDE Website";
      "khotkeysrc"."Data_2_8"."Type" = "SIMPLE_ACTION_DATA";
      "khotkeysrc"."Data_2_8Actions"."ActionsCount" = 1;
      "khotkeysrc"."Data_2_8Actions0"."CommandURL" = "http://www.kde.org";
      "khotkeysrc"."Data_2_8Actions0"."Type" = "COMMAND_URL";
      "khotkeysrc"."Data_2_8Conditions"."Comment" = "";
      "khotkeysrc"."Data_2_8Conditions"."ConditionsCount" = 0;
      "khotkeysrc"."Data_2_8Triggers"."Comment" = "Simple_action";
      "khotkeysrc"."Data_2_8Triggers"."TriggersCount" = 1;
      "khotkeysrc"."Data_2_8Triggers0"."Key" = "Meta+E";
      "khotkeysrc"."Data_2_8Triggers0"."Type" = "SHORTCUT";
      "khotkeysrc"."Data_2_8Triggers0"."Uuid" =
        "{4e78ff57-2d6f-4dc5-88af-9cbc69fde170}";
      "khotkeysrc"."Data_3"."Comment" = "Basic Konqueror gestures.";
      "khotkeysrc"."Data_3"."DataCount" = 14;
      "khotkeysrc"."Data_3"."Enabled" = true;
      "khotkeysrc"."Data_3"."ImportId" = "konqueror_gestures_kde321";
      "khotkeysrc"."Data_3"."Name" = "Konqueror Gestures";
      "khotkeysrc"."Data_3"."SystemGroup" = 0;
      "khotkeysrc"."Data_3"."Type" = "ACTION_DATA_GROUP";
      "khotkeysrc"."Data_3Conditions"."Comment" = "Konqueror window";
      "khotkeysrc"."Data_3Conditions"."ConditionsCount" = 1;
      "khotkeysrc"."Data_3Conditions0"."Type" = "ACTIVE_WINDOW";
      "khotkeysrc"."Data_3Conditions0Window"."Comment" = "Konqueror";
      "khotkeysrc"."Data_3Conditions0Window"."WindowsCount" = 1;
      "khotkeysrc"."Data_3Conditions0Window0"."Class" = "^konquerors";
      "khotkeysrc"."Data_3Conditions0Window0"."ClassType" = 3;
      "khotkeysrc"."Data_3Conditions0Window0"."Comment" = "Konqueror";
      "khotkeysrc"."Data_3Conditions0Window0"."Role" = "konqueror-mainwindow#1";
      "khotkeysrc"."Data_3Conditions0Window0"."RoleType" = 0;
      "khotkeysrc"."Data_3Conditions0Window0"."Title" = "file:/ - Konqueror";
      "khotkeysrc"."Data_3Conditions0Window0"."TitleType" = 0;
      "khotkeysrc"."Data_3Conditions0Window0"."Type" = "SIMPLE";
      "khotkeysrc"."Data_3Conditions0Window0"."WindowTypes" = 1;
      "khotkeysrc"."Data_3_1"."Comment" = "Press, move left, release.";
      "khotkeysrc"."Data_3_1"."Enabled" = true;
      "khotkeysrc"."Data_3_1"."Name" = "Back";
      "khotkeysrc"."Data_3_1"."Type" = "SIMPLE_ACTION_DATA";
      "khotkeysrc"."Data_3_10"."Comment" = ''
        Opera-style: Press, move up, release.
        NOTE: Conflicts with 'New Tab', and as such is disabled by default.'';
      "khotkeysrc"."Data_3_10"."Enabled" = false;
      "khotkeysrc"."Data_3_10"."Name" = "Stop Loading";
      "khotkeysrc"."Data_3_10"."Type" = "SIMPLE_ACTION_DATA";
      "khotkeysrc"."Data_3_10Actions"."ActionsCount" = 1;
      "khotkeysrc"."Data_3_10Actions0"."DestinationWindow" = 2;
      "khotkeysrc"."Data_3_10Actions0"."Input" = ''
        Escape
      '';
      "khotkeysrc"."Data_3_10Actions0"."Type" = "KEYBOARD_INPUT";
      "khotkeysrc"."Data_3_10Conditions"."Comment" = "";
      "khotkeysrc"."Data_3_10Conditions"."ConditionsCount" = 0;
      "khotkeysrc"."Data_3_10Triggers"."Comment" = "Gesture_triggers";
      "khotkeysrc"."Data_3_10Triggers"."TriggersCount" = 1;
      "khotkeysrc"."Data_3_10Triggers0"."GesturePointData" =
        "0,0.125,-0.5,0.5,1,0.125,0.125,-0.5,0.5,0.875,0.25,0.125,-0.5,0.5,0.75,0.375,0.125,-0.5,0.5,0.625,0.5,0.125,-0.5,0.5,0.5,0.625,0.125,-0.5,0.5,0.375,0.75,0.125,-0.5,0.5,0.25,0.875,0.125,-0.5,0.5,0.125,1,0,0,0.5,0";
      "khotkeysrc"."Data_3_10Triggers0"."Type" = "GESTURE";
      "khotkeysrc"."Data_3_11"."Comment" = ''
        Going up in URL/directory structure.
        Mozilla-style: Press, move up, move left, move up, release.'';
      "khotkeysrc"."Data_3_11"."Enabled" = true;
      "khotkeysrc"."Data_3_11"."Name" = "Up";
      "khotkeysrc"."Data_3_11"."Type" = "SIMPLE_ACTION_DATA";
      "khotkeysrc"."Data_3_11Actions"."ActionsCount" = 1;
      "khotkeysrc"."Data_3_11Actions0"."DestinationWindow" = 2;
      "khotkeysrc"."Data_3_11Actions0"."Input" = "Alt+Up";
      "khotkeysrc"."Data_3_11Actions0"."Type" = "KEYBOARD_INPUT";
      "khotkeysrc"."Data_3_11Conditions"."Comment" = "";
      "khotkeysrc"."Data_3_11Conditions"."ConditionsCount" = 0;
      "khotkeysrc"."Data_3_11Triggers"."Comment" = "Gesture_triggers";
      "khotkeysrc"."Data_3_11Triggers"."TriggersCount" = 1;
      "khotkeysrc"."Data_3_11Triggers0"."GesturePointData" =
        "0,0.0625,-0.5,1,1,0.0625,0.0625,-0.5,1,0.875,0.125,0.0625,-0.5,1,0.75,0.1875,0.0625,-0.5,1,0.625,0.25,0.0625,1,1,0.5,0.3125,0.0625,1,0.875,0.5,0.375,0.0625,1,0.75,0.5,0.4375,0.0625,1,0.625,0.5,0.5,0.0625,1,0.5,0.5,0.5625,0.0625,1,0.375,0.5,0.625,0.0625,1,0.25,0.5,0.6875,0.0625,1,0.125,0.5,0.75,0.0625,-0.5,0,0.5,0.8125,0.0625,-0.5,0,0.375,0.875,0.0625,-0.5,0,0.25,0.9375,0.0625,-0.5,0,0.125,1,0,0,0,0";
      "khotkeysrc"."Data_3_11Triggers0"."Type" = "GESTURE";
      "khotkeysrc"."Data_3_12"."Comment" = ''
        Going up in URL/directory structure.
        Opera-style: Press, move up, move left, move up, release.
        NOTE: Conflicts with  "Activate Previous Tab", and as such is disabled by default.'';
      "khotkeysrc"."Data_3_12"."Enabled" = false;
      "khotkeysrc"."Data_3_12"."Name" = "Up #2";
      "khotkeysrc"."Data_3_12"."Type" = "SIMPLE_ACTION_DATA";
      "khotkeysrc"."Data_3_12Actions"."ActionsCount" = 1;
      "khotkeysrc"."Data_3_12Actions0"."DestinationWindow" = 2;
      "khotkeysrc"."Data_3_12Actions0"."Input" = ''
        Alt+Up
      '';
      "khotkeysrc"."Data_3_12Actions0"."Type" = "KEYBOARD_INPUT";
      "khotkeysrc"."Data_3_12Conditions"."Comment" = "";
      "khotkeysrc"."Data_3_12Conditions"."ConditionsCount" = 0;
      "khotkeysrc"."Data_3_12Triggers"."Comment" = "Gesture_triggers";
      "khotkeysrc"."Data_3_12Triggers"."TriggersCount" = 1;
      "khotkeysrc"."Data_3_12Triggers0"."GesturePointData" =
        "0,0.0625,-0.5,1,1,0.0625,0.0625,-0.5,1,0.875,0.125,0.0625,-0.5,1,0.75,0.1875,0.0625,-0.5,1,0.625,0.25,0.0625,-0.5,1,0.5,0.3125,0.0625,-0.5,1,0.375,0.375,0.0625,-0.5,1,0.25,0.4375,0.0625,-0.5,1,0.125,0.5,0.0625,1,1,0,0.5625,0.0625,1,0.875,0,0.625,0.0625,1,0.75,0,0.6875,0.0625,1,0.625,0,0.75,0.0625,1,0.5,0,0.8125,0.0625,1,0.375,0,0.875,0.0625,1,0.25,0,0.9375,0.0625,1,0.125,0,1,0,0,0,0";
      "khotkeysrc"."Data_3_12Triggers0"."Type" = "GESTURE";
      "khotkeysrc"."Data_3_13"."Comment" =
        "Press, move up, move right, release.";
      "khotkeysrc"."Data_3_13"."Enabled" = true;
      "khotkeysrc"."Data_3_13"."Name" = "Activate Next Tab";
      "khotkeysrc"."Data_3_13"."Type" = "SIMPLE_ACTION_DATA";
      "khotkeysrc"."Data_3_13Actions"."ActionsCount" = 1;
      "khotkeysrc"."Data_3_13Actions0"."DestinationWindow" = 2;
      "khotkeysrc"."Data_3_13Actions0"."Input" = ''
        Ctrl+.
      '';
      "khotkeysrc"."Data_3_13Actions0"."Type" = "KEYBOARD_INPUT";
      "khotkeysrc"."Data_3_13Conditions"."Comment" = "";
      "khotkeysrc"."Data_3_13Conditions"."ConditionsCount" = 0;
      "khotkeysrc"."Data_3_13Triggers"."Comment" = "Gesture_triggers";
      "khotkeysrc"."Data_3_13Triggers"."TriggersCount" = 1;
      "khotkeysrc"."Data_3_13Triggers0"."GesturePointData" =
        "0,0.0625,-0.5,0,1,0.0625,0.0625,-0.5,0,0.875,0.125,0.0625,-0.5,0,0.75,0.1875,0.0625,-0.5,0,0.625,0.25,0.0625,-0.5,0,0.5,0.3125,0.0625,-0.5,0,0.375,0.375,0.0625,-0.5,0,0.25,0.4375,0.0625,-0.5,0,0.125,0.5,0.0625,0,0,0,0.5625,0.0625,0,0.125,0,0.625,0.0625,0,0.25,0,0.6875,0.0625,0,0.375,0,0.75,0.0625,0,0.5,0,0.8125,0.0625,0,0.625,0,0.875,0.0625,0,0.75,0,0.9375,0.0625,0,0.875,0,1,0,0,1,0";
      "khotkeysrc"."Data_3_13Triggers0"."Type" = "GESTURE";
      "khotkeysrc"."Data_3_14"."Comment" =
        "Press, move up, move left, release.";
      "khotkeysrc"."Data_3_14"."Enabled" = true;
      "khotkeysrc"."Data_3_14"."Name" = "Activate Previous Tab";
      "khotkeysrc"."Data_3_14"."Type" = "SIMPLE_ACTION_DATA";
      "khotkeysrc"."Data_3_14Actions"."ActionsCount" = 1;
      "khotkeysrc"."Data_3_14Actions0"."DestinationWindow" = 2;
      "khotkeysrc"."Data_3_14Actions0"."Input" = "Ctrl+,";
      "khotkeysrc"."Data_3_14Actions0"."Type" = "KEYBOARD_INPUT";
      "khotkeysrc"."Data_3_14Conditions"."Comment" = "";
      "khotkeysrc"."Data_3_14Conditions"."ConditionsCount" = 0;
      "khotkeysrc"."Data_3_14Triggers"."Comment" = "Gesture_triggers";
      "khotkeysrc"."Data_3_14Triggers"."TriggersCount" = 1;
      "khotkeysrc"."Data_3_14Triggers0"."GesturePointData" =
        "0,0.0625,-0.5,1,1,0.0625,0.0625,-0.5,1,0.875,0.125,0.0625,-0.5,1,0.75,0.1875,0.0625,-0.5,1,0.625,0.25,0.0625,-0.5,1,0.5,0.3125,0.0625,-0.5,1,0.375,0.375,0.0625,-0.5,1,0.25,0.4375,0.0625,-0.5,1,0.125,0.5,0.0625,1,1,0,0.5625,0.0625,1,0.875,0,0.625,0.0625,1,0.75,0,0.6875,0.0625,1,0.625,0,0.75,0.0625,1,0.5,0,0.8125,0.0625,1,0.375,0,0.875,0.0625,1,0.25,0,0.9375,0.0625,1,0.125,0,1,0,0,0,0";
      "khotkeysrc"."Data_3_14Triggers0"."Type" = "GESTURE";
      "khotkeysrc"."Data_3_1Actions"."ActionsCount" = 1;
      "khotkeysrc"."Data_3_1Actions0"."DestinationWindow" = 2;
      "khotkeysrc"."Data_3_1Actions0"."Input" = "Alt+Left";
      "khotkeysrc"."Data_3_1Actions0"."Type" = "KEYBOARD_INPUT";
      "khotkeysrc"."Data_3_1Conditions"."Comment" = "";
      "khotkeysrc"."Data_3_1Conditions"."ConditionsCount" = 0;
      "khotkeysrc"."Data_3_1Triggers"."Comment" = "Gesture_triggers";
      "khotkeysrc"."Data_3_1Triggers"."TriggersCount" = 1;
      "khotkeysrc"."Data_3_1Triggers0"."GesturePointData" =
        "0,0.125,1,1,0.5,0.125,0.125,1,0.875,0.5,0.25,0.125,1,0.75,0.5,0.375,0.125,1,0.625,0.5,0.5,0.125,1,0.5,0.5,0.625,0.125,1,0.375,0.5,0.75,0.125,1,0.25,0.5,0.875,0.125,1,0.125,0.5,1,0,0,0,0.5";
      "khotkeysrc"."Data_3_1Triggers0"."Type" = "GESTURE";
      "khotkeysrc"."Data_3_2"."Comment" =
        "Press, move down, move up, move down, release.";
      "khotkeysrc"."Data_3_2"."Enabled" = true;
      "khotkeysrc"."Data_3_2"."Name" = "Duplicate Tab";
      "khotkeysrc"."Data_3_2"."Type" = "SIMPLE_ACTION_DATA";
      "khotkeysrc"."Data_3_2Actions"."ActionsCount" = 1;
      "khotkeysrc"."Data_3_2Actions0"."DestinationWindow" = 2;
      "khotkeysrc"."Data_3_2Actions0"."Input" = ''
        Ctrl+Shift+D
      '';
      "khotkeysrc"."Data_3_2Actions0"."Type" = "KEYBOARD_INPUT";
      "khotkeysrc"."Data_3_2Conditions"."Comment" = "";
      "khotkeysrc"."Data_3_2Conditions"."ConditionsCount" = 0;
      "khotkeysrc"."Data_3_2Triggers"."Comment" = "Gesture_triggers";
      "khotkeysrc"."Data_3_2Triggers"."TriggersCount" = 1;
      "khotkeysrc"."Data_3_2Triggers0"."GesturePointData" =
        "0,0.0416667,0.5,0.5,0,0.0416667,0.0416667,0.5,0.5,0.125,0.0833333,0.0416667,0.5,0.5,0.25,0.125,0.0416667,0.5,0.5,0.375,0.166667,0.0416667,0.5,0.5,0.5,0.208333,0.0416667,0.5,0.5,0.625,0.25,0.0416667,0.5,0.5,0.75,0.291667,0.0416667,0.5,0.5,0.875,0.333333,0.0416667,-0.5,0.5,1,0.375,0.0416667,-0.5,0.5,0.875,0.416667,0.0416667,-0.5,0.5,0.75,0.458333,0.0416667,-0.5,0.5,0.625,0.5,0.0416667,-0.5,0.5,0.5,0.541667,0.0416667,-0.5,0.5,0.375,0.583333,0.0416667,-0.5,0.5,0.25,0.625,0.0416667,-0.5,0.5,0.125,0.666667,0.0416667,0.5,0.5,0,0.708333,0.0416667,0.5,0.5,0.125,0.75,0.0416667,0.5,0.5,0.25,0.791667,0.0416667,0.5,0.5,0.375,0.833333,0.0416667,0.5,0.5,0.5,0.875,0.0416667,0.5,0.5,0.625,0.916667,0.0416667,0.5,0.5,0.75,0.958333,0.0416667,0.5,0.5,0.875,1,0,0,0.5,1";
      "khotkeysrc"."Data_3_2Triggers0"."Type" = "GESTURE";
      "khotkeysrc"."Data_3_3"."Comment" = "Press, move down, move up, release.";
      "khotkeysrc"."Data_3_3"."Enabled" = true;
      "khotkeysrc"."Data_3_3"."Name" = "Duplicate Window";
      "khotkeysrc"."Data_3_3"."Type" = "SIMPLE_ACTION_DATA";
      "khotkeysrc"."Data_3_3Actions"."ActionsCount" = 1;
      "khotkeysrc"."Data_3_3Actions0"."DestinationWindow" = 2;
      "khotkeysrc"."Data_3_3Actions0"."Input" = ''
        Ctrl+D
      '';
      "khotkeysrc"."Data_3_3Actions0"."Type" = "KEYBOARD_INPUT";
      "khotkeysrc"."Data_3_3Conditions"."Comment" = "";
      "khotkeysrc"."Data_3_3Conditions"."ConditionsCount" = 0;
      "khotkeysrc"."Data_3_3Triggers"."Comment" = "Gesture_triggers";
      "khotkeysrc"."Data_3_3Triggers"."TriggersCount" = 1;
      "khotkeysrc"."Data_3_3Triggers0"."GesturePointData" =
        "0,0.0625,0.5,0.5,0,0.0625,0.0625,0.5,0.5,0.125,0.125,0.0625,0.5,0.5,0.25,0.1875,0.0625,0.5,0.5,0.375,0.25,0.0625,0.5,0.5,0.5,0.3125,0.0625,0.5,0.5,0.625,0.375,0.0625,0.5,0.5,0.75,0.4375,0.0625,0.5,0.5,0.875,0.5,0.0625,-0.5,0.5,1,0.5625,0.0625,-0.5,0.5,0.875,0.625,0.0625,-0.5,0.5,0.75,0.6875,0.0625,-0.5,0.5,0.625,0.75,0.0625,-0.5,0.5,0.5,0.8125,0.0625,-0.5,0.5,0.375,0.875,0.0625,-0.5,0.5,0.25,0.9375,0.0625,-0.5,0.5,0.125,1,0,0,0.5,0";
      "khotkeysrc"."Data_3_3Triggers0"."Type" = "GESTURE";
      "khotkeysrc"."Data_3_4"."Comment" = "Press, move right, release.";
      "khotkeysrc"."Data_3_4"."Enabled" = true;
      "khotkeysrc"."Data_3_4"."Name" = "Forward";
      "khotkeysrc"."Data_3_4"."Type" = "SIMPLE_ACTION_DATA";
      "khotkeysrc"."Data_3_4Actions"."ActionsCount" = 1;
      "khotkeysrc"."Data_3_4Actions0"."DestinationWindow" = 2;
      "khotkeysrc"."Data_3_4Actions0"."Input" = "Alt+Right";
      "khotkeysrc"."Data_3_4Actions0"."Type" = "KEYBOARD_INPUT";
      "khotkeysrc"."Data_3_4Conditions"."Comment" = "";
      "khotkeysrc"."Data_3_4Conditions"."ConditionsCount" = 0;
      "khotkeysrc"."Data_3_4Triggers"."Comment" = "Gesture_triggers";
      "khotkeysrc"."Data_3_4Triggers"."TriggersCount" = 1;
      "khotkeysrc"."Data_3_4Triggers0"."GesturePointData" =
        "0,0.125,0,0,0.5,0.125,0.125,0,0.125,0.5,0.25,0.125,0,0.25,0.5,0.375,0.125,0,0.375,0.5,0.5,0.125,0,0.5,0.5,0.625,0.125,0,0.625,0.5,0.75,0.125,0,0.75,0.5,0.875,0.125,0,0.875,0.5,1,0,0,1,0.5";
      "khotkeysrc"."Data_3_4Triggers0"."Type" = "GESTURE";
      "khotkeysrc"."Data_3_5"."Comment" = ''
        Press, move down, move half up, move right, move down, release.
        (Drawing a lowercase 'h'.)'';
      "khotkeysrc"."Data_3_5"."Enabled" = true;
      "khotkeysrc"."Data_3_5"."Name" = "Home";
      "khotkeysrc"."Data_3_5"."Type" = "SIMPLE_ACTION_DATA";
      "khotkeysrc"."Data_3_5Actions"."ActionsCount" = 1;
      "khotkeysrc"."Data_3_5Actions0"."DestinationWindow" = 2;
      "khotkeysrc"."Data_3_5Actions0"."Input" = ''
        Alt+Home
      '';
      "khotkeysrc"."Data_3_5Actions0"."Type" = "KEYBOARD_INPUT";
      "khotkeysrc"."Data_3_5Conditions"."Comment" = "";
      "khotkeysrc"."Data_3_5Conditions"."ConditionsCount" = 0;
      "khotkeysrc"."Data_3_5Triggers"."Comment" = "Gesture_triggers";
      "khotkeysrc"."Data_3_5Triggers"."TriggersCount" = 2;
      "khotkeysrc"."Data_3_5Triggers0"."GesturePointData" =
        "0,0.0461748,0.5,0,0,0.0461748,0.0461748,0.5,0,0.125,0.0923495,0.0461748,0.5,0,0.25,0.138524,0.0461748,0.5,0,0.375,0.184699,0.0461748,0.5,0,0.5,0.230874,0.0461748,0.5,0,0.625,0.277049,0.0461748,0.5,0,0.75,0.323223,0.0461748,0.5,0,0.875,0.369398,0.065301,-0.25,0,1,0.434699,0.065301,-0.25,0.125,0.875,0.5,0.065301,-0.25,0.25,0.75,0.565301,0.065301,-0.25,0.375,0.625,0.630602,0.0461748,0,0.5,0.5,0.676777,0.0461748,0,0.625,0.5,0.722951,0.0461748,0,0.75,0.5,0.769126,0.0461748,0,0.875,0.5,0.815301,0.0461748,0.5,1,0.5,0.861476,0.0461748,0.5,1,0.625,0.90765,0.0461748,0.5,1,0.75,0.953825,0.0461748,0.5,1,0.875,1,0,0,1,1";
      "khotkeysrc"."Data_3_5Triggers0"."Type" = "GESTURE";
      "khotkeysrc"."Data_3_5Triggers1"."GesturePointData" =
        "0,0.0416667,0.5,0,0,0.0416667,0.0416667,0.5,0,0.125,0.0833333,0.0416667,0.5,0,0.25,0.125,0.0416667,0.5,0,0.375,0.166667,0.0416667,0.5,0,0.5,0.208333,0.0416667,0.5,0,0.625,0.25,0.0416667,0.5,0,0.75,0.291667,0.0416667,0.5,0,0.875,0.333333,0.0416667,-0.5,0,1,0.375,0.0416667,-0.5,0,0.875,0.416667,0.0416667,-0.5,0,0.75,0.458333,0.0416667,-0.5,0,0.625,0.5,0.0416667,0,0,0.5,0.541667,0.0416667,0,0.125,0.5,0.583333,0.0416667,0,0.25,0.5,0.625,0.0416667,0,0.375,0.5,0.666667,0.0416667,0,0.5,0.5,0.708333,0.0416667,0,0.625,0.5,0.75,0.0416667,0,0.75,0.5,0.791667,0.0416667,0,0.875,0.5,0.833333,0.0416667,0.5,1,0.5,0.875,0.0416667,0.5,1,0.625,0.916667,0.0416667,0.5,1,0.75,0.958333,0.0416667,0.5,1,0.875,1,0,0,1,1";
      "khotkeysrc"."Data_3_5Triggers1"."Type" = "GESTURE";
      "khotkeysrc"."Data_3_6"."Comment" = ''
        Press, move right, move down, move right, release.
        Mozilla-style: Press, move down, move right, release.'';
      "khotkeysrc"."Data_3_6"."Enabled" = true;
      "khotkeysrc"."Data_3_6"."Name" = "Close Tab";
      "khotkeysrc"."Data_3_6"."Type" = "SIMPLE_ACTION_DATA";
      "khotkeysrc"."Data_3_6Actions"."ActionsCount" = 1;
      "khotkeysrc"."Data_3_6Actions0"."DestinationWindow" = 2;
      "khotkeysrc"."Data_3_6Actions0"."Input" = ''
        Ctrl+W
      '';
      "khotkeysrc"."Data_3_6Actions0"."Type" = "KEYBOARD_INPUT";
      "khotkeysrc"."Data_3_6Conditions"."Comment" = "";
      "khotkeysrc"."Data_3_6Conditions"."ConditionsCount" = 0;
      "khotkeysrc"."Data_3_6Triggers"."Comment" = "Gesture_triggers";
      "khotkeysrc"."Data_3_6Triggers"."TriggersCount" = 2;
      "khotkeysrc"."Data_3_6Triggers0"."GesturePointData" =
        "0,0.0625,0,0,0,0.0625,0.0625,0,0.125,0,0.125,0.0625,0,0.25,0,0.1875,0.0625,0,0.375,0,0.25,0.0625,0.5,0.5,0,0.3125,0.0625,0.5,0.5,0.125,0.375,0.0625,0.5,0.5,0.25,0.4375,0.0625,0.5,0.5,0.375,0.5,0.0625,0.5,0.5,0.5,0.5625,0.0625,0.5,0.5,0.625,0.625,0.0625,0.5,0.5,0.75,0.6875,0.0625,0.5,0.5,0.875,0.75,0.0625,0,0.5,1,0.8125,0.0625,0,0.625,1,0.875,0.0625,0,0.75,1,0.9375,0.0625,0,0.875,1,1,0,0,1,1";
      "khotkeysrc"."Data_3_6Triggers0"."Type" = "GESTURE";
      "khotkeysrc"."Data_3_6Triggers1"."GesturePointData" =
        "0,0.0625,0.5,0,0,0.0625,0.0625,0.5,0,0.125,0.125,0.0625,0.5,0,0.25,0.1875,0.0625,0.5,0,0.375,0.25,0.0625,0.5,0,0.5,0.3125,0.0625,0.5,0,0.625,0.375,0.0625,0.5,0,0.75,0.4375,0.0625,0.5,0,0.875,0.5,0.0625,0,0,1,0.5625,0.0625,0,0.125,1,0.625,0.0625,0,0.25,1,0.6875,0.0625,0,0.375,1,0.75,0.0625,0,0.5,1,0.8125,0.0625,0,0.625,1,0.875,0.0625,0,0.75,1,0.9375,0.0625,0,0.875,1,1,0,0,1,1";
      "khotkeysrc"."Data_3_6Triggers1"."Type" = "GESTURE";
      "khotkeysrc"."Data_3_7"."Comment" = ''
        Press, move up, release.
        Conflicts with Opera-style 'Up #2', which is disabled by default.'';
      "khotkeysrc"."Data_3_7"."Enabled" = true;
      "khotkeysrc"."Data_3_7"."Name" = "New Tab";
      "khotkeysrc"."Data_3_7"."Type" = "SIMPLE_ACTION_DATA";
      "khotkeysrc"."Data_3_7Actions"."ActionsCount" = 1;
      "khotkeysrc"."Data_3_7Actions0"."DestinationWindow" = 2;
      "khotkeysrc"."Data_3_7Actions0"."Input" = "Ctrl+Shift+N";
      "khotkeysrc"."Data_3_7Actions0"."Type" = "KEYBOARD_INPUT";
      "khotkeysrc"."Data_3_7Conditions"."Comment" = "";
      "khotkeysrc"."Data_3_7Conditions"."ConditionsCount" = 0;
      "khotkeysrc"."Data_3_7Triggers"."Comment" = "Gesture_triggers";
      "khotkeysrc"."Data_3_7Triggers"."TriggersCount" = 1;
      "khotkeysrc"."Data_3_7Triggers0"."GesturePointData" =
        "0,0.125,-0.5,0.5,1,0.125,0.125,-0.5,0.5,0.875,0.25,0.125,-0.5,0.5,0.75,0.375,0.125,-0.5,0.5,0.625,0.5,0.125,-0.5,0.5,0.5,0.625,0.125,-0.5,0.5,0.375,0.75,0.125,-0.5,0.5,0.25,0.875,0.125,-0.5,0.5,0.125,1,0,0,0.5,0";
      "khotkeysrc"."Data_3_7Triggers0"."Type" = "GESTURE";
      "khotkeysrc"."Data_3_8"."Comment" = "Press, move down, release.";
      "khotkeysrc"."Data_3_8"."Enabled" = true;
      "khotkeysrc"."Data_3_8"."Name" = "New Window";
      "khotkeysrc"."Data_3_8"."Type" = "SIMPLE_ACTION_DATA";
      "khotkeysrc"."Data_3_8Actions"."ActionsCount" = 1;
      "khotkeysrc"."Data_3_8Actions0"."DestinationWindow" = 2;
      "khotkeysrc"."Data_3_8Actions0"."Input" = ''
        Ctrl+N
      '';
      "khotkeysrc"."Data_3_8Actions0"."Type" = "KEYBOARD_INPUT";
      "khotkeysrc"."Data_3_8Conditions"."Comment" = "";
      "khotkeysrc"."Data_3_8Conditions"."ConditionsCount" = 0;
      "khotkeysrc"."Data_3_8Triggers"."Comment" = "Gesture_triggers";
      "khotkeysrc"."Data_3_8Triggers"."TriggersCount" = 1;
      "khotkeysrc"."Data_3_8Triggers0"."GesturePointData" =
        "0,0.125,0.5,0.5,0,0.125,0.125,0.5,0.5,0.125,0.25,0.125,0.5,0.5,0.25,0.375,0.125,0.5,0.5,0.375,0.5,0.125,0.5,0.5,0.5,0.625,0.125,0.5,0.5,0.625,0.75,0.125,0.5,0.5,0.75,0.875,0.125,0.5,0.5,0.875,1,0,0,0.5,1";
      "khotkeysrc"."Data_3_8Triggers0"."Type" = "GESTURE";
      "khotkeysrc"."Data_3_9"."Comment" = "Press, move up, move down, release.";
      "khotkeysrc"."Data_3_9"."Enabled" = true;
      "khotkeysrc"."Data_3_9"."Name" = "Reload";
      "khotkeysrc"."Data_3_9"."Type" = "SIMPLE_ACTION_DATA";
      "khotkeysrc"."Data_3_9Actions"."ActionsCount" = 1;
      "khotkeysrc"."Data_3_9Actions0"."DestinationWindow" = 2;
      "khotkeysrc"."Data_3_9Actions0"."Input" = "F5";
      "khotkeysrc"."Data_3_9Actions0"."Type" = "KEYBOARD_INPUT";
      "khotkeysrc"."Data_3_9Conditions"."Comment" = "";
      "khotkeysrc"."Data_3_9Conditions"."ConditionsCount" = 0;
      "khotkeysrc"."Data_3_9Triggers"."Comment" = "Gesture_triggers";
      "khotkeysrc"."Data_3_9Triggers"."TriggersCount" = 1;
      "khotkeysrc"."Data_3_9Triggers0"."GesturePointData" =
        "0,0.0625,-0.5,0.5,1,0.0625,0.0625,-0.5,0.5,0.875,0.125,0.0625,-0.5,0.5,0.75,0.1875,0.0625,-0.5,0.5,0.625,0.25,0.0625,-0.5,0.5,0.5,0.3125,0.0625,-0.5,0.5,0.375,0.375,0.0625,-0.5,0.5,0.25,0.4375,0.0625,-0.5,0.5,0.125,0.5,0.0625,0.5,0.5,0,0.5625,0.0625,0.5,0.5,0.125,0.625,0.0625,0.5,0.5,0.25,0.6875,0.0625,0.5,0.5,0.375,0.75,0.0625,0.5,0.5,0.5,0.8125,0.0625,0.5,0.5,0.625,0.875,0.0625,0.5,0.5,0.75,0.9375,0.0625,0.5,0.5,0.875,1,0,0,0.5,1";
      "khotkeysrc"."Data_3_9Triggers0"."Type" = "GESTURE";
      "khotkeysrc"."DirSelect Dialog"."DirSelectDialog Size[$d]" = "";
      "khotkeysrc"."General"."BrowserApplication[$d]" = "";
      "khotkeysrc"."General"."ColorSchemeHash[$d]" = "";
      "khotkeysrc"."General"."ColorScheme[$d]" = "";
      "khotkeysrc"."General"."XftHintStyle[$d]" = "";
      "khotkeysrc"."General"."XftSubPixel[$d]" = "";
      "khotkeysrc"."Gestures"."Disabled" = true;
      "khotkeysrc"."Gestures"."MouseButton" = 2;
      "khotkeysrc"."Gestures"."Timeout" = 300;
      "khotkeysrc"."GesturesExclude"."Comment" = "";
      "khotkeysrc"."GesturesExclude"."WindowsCount" = 0;
      "khotkeysrc"."Icons"."Theme[$d]" = "";
      "khotkeysrc"."KDE"."AnimationDurationFactor[$d]" = "";
      "khotkeysrc"."KDE"."LookAndFeelPackage[$d]" = "";
      "khotkeysrc"."KDE"."ShowDeleteCommand[$d]" = "";
      "khotkeysrc"."KDE"."widgetStyle[$d]" = "";
      "khotkeysrc"."KFileDialog Settings"."Allow Expansion[$d]" = "";
      "khotkeysrc"."KFileDialog Settings"."Automatically select filename extension[$d]" =
        "";
      "khotkeysrc"."KFileDialog Settings"."Breadcrumb Navigation[$d]" = "";
      "khotkeysrc"."KFileDialog Settings"."Decoration position[$d]" = "";
      "khotkeysrc"."KFileDialog Settings"."LocationCombo Completionmode[$d]" =
        "";
      "khotkeysrc"."KFileDialog Settings"."PathCombo Completionmode[$d]" = "";
      "khotkeysrc"."KFileDialog Settings"."Show Bookmarks[$d]" = "";
      "khotkeysrc"."KFileDialog Settings"."Show Full Path[$d]" = "";
      "khotkeysrc"."KFileDialog Settings"."Show Inline Previews[$d]" = "";
      "khotkeysrc"."KFileDialog Settings"."Show Preview[$d]" = "";
      "khotkeysrc"."KFileDialog Settings"."Show Speedbar[$d]" = "";
      "khotkeysrc"."KFileDialog Settings"."Show hidden files[$d]" = "";
      "khotkeysrc"."KFileDialog Settings"."Sort by[$d]" = "";
      "khotkeysrc"."KFileDialog Settings"."Sort directories first[$d]" = "";
      "khotkeysrc"."KFileDialog Settings"."Sort hidden files last[$d]" = "";
      "khotkeysrc"."KFileDialog Settings"."Sort reversed[$d]" = "";
      "khotkeysrc"."KFileDialog Settings"."Speedbar Width[$d]" = "";
      "khotkeysrc"."KFileDialog Settings"."View Style[$d]" = "";
      "khotkeysrc"."Main"."AlreadyImported" =
        "defaults,kde32b1,konqueror_gestures_kde321";
      "khotkeysrc"."Main"."Disabled" = false;
      "khotkeysrc"."PreviewSettings"."MaximumRemoteSize[$d]" = "";
      "khotkeysrc"."Voice"."Shortcut" = "";
      "khotkeysrc"."WM"."activeBackground[$d]" = "";
      "khotkeysrc"."WM"."activeBlend[$d]" = "";
      "khotkeysrc"."WM"."activeForeground[$d]" = "";
      "khotkeysrc"."WM"."inactiveBackground[$d]" = "";
      "khotkeysrc"."WM"."inactiveBlend[$d]" = "";
      "khotkeysrc"."WM"."inactiveForeground[$d]" = "";
      "kiorc"."Confirmations"."ConfirmDelete" = false;
      "kiorc"."Confirmations"."ConfirmEmptyTrash" = false;
      "kiorc"."Confirmations"."ConfirmTrash" = false;
      "kiorc"."Executable scripts"."behaviourOnLaunch" = "execute";
      "klipperrc"."General"."IgnoreImages" = false;
      "klipperrc"."General"."SyncClipboards" = true;
      "kservicemenurc"."Show"."compressfileitemaction" = true;
      "kservicemenurc"."Show"."extractfileitemaction" = true;
      "kservicemenurc"."Show"."forgetfileitemaction" = true;
      "kservicemenurc"."Show"."installFont" = true;
      "kservicemenurc"."Show"."kactivitymanagerd_fileitem_linking_plugin" =
        true;
      "kservicemenurc"."Show"."kio-admin" = true;
      "kservicemenurc"."Show"."mountisoaction" = true;
      "kservicemenurc"."Show"."runInKonsole" = true;
      "kservicemenurc"."Show"."setAsWallpaper" = true;
      "kservicemenurc"."Show"."slideshowfileitemaction" = true;
      "kservicemenurc"."Show"."tagsfileitemaction" = true;
      "ksmserverrc"."General"."confirmLogout" = false;
      "ksmserverrc"."General"."loginMode" = "emptySession";
      "kwalletrc"."Wallet"."First Use" = false;
      "kwinrc"."Desktops"."Id_1" = "90c76e6f-c0de-4371-b5af-db113acf3e42";
      "kwinrc"."Desktops"."Number" = 1;
      "kwinrc"."Desktops"."Rows" = 1;
      "kwinrc"."Plugins"."blurEnabled" = true;
      "kwinrc"."Plugins"."kwin4_effect_fadingpopupsEnabled" = false;
      "kwinrc"."Plugins"."kwin4_effect_fullscreenEnabled" = false;
      "kwinrc"."Plugins"."kwin4_effect_loginEnabled" = false;
      "kwinrc"."Plugins"."kwin4_effect_logoutEnabled" = false;
      "kwinrc"."Plugins"."kwin4_effect_maximizeEnabled" = false;
      "kwinrc"."Plugins"."kwin4_effect_squashEnabled" = false;
      "kwinrc"."Plugins"."kwin4_effect_translucencyEnabled" = true;
      "kwinrc"."Plugins"."magiclampEnabled" = true;
      "kwinrc"."Plugins"."sheetEnabled" = true;
      "kwinrc"."Plugins"."slidebackEnabled" = true;
      "kwinrc"."Plugins"."thumbnailasideEnabled" = true;
      "kwinrc"."Plugins"."wobblywindowsEnabled" = true;
      "kwinrc"."Tiling"."padding" = 4;
      "kwinrc"."Tiling.13cab51d-7953-5eab-be7b-a1dae3d94ddc"."tiles" = ''
        {"layoutDirection":"horizontal","tiles":[{"width":0.25},{"width":0.5},{"width":0.25}]}'';
      "kwinrc"."Tiling.3776013f-3f14-57ca-8a5c-d222661bf9c2"."tiles" = ''
        {"layoutDirection":"horizontal","tiles":[{"width":0.25},{"width":0.5},{"width":0.25}]}'';
      "kwinrc"."Tiling.54b9fdd9-2ffe-5088-86e2-e6539803ff44"."tiles" = ''
        {"layoutDirection":"horizontal","tiles":[{"width":0.25},{"width":0.5},{"width":0.25}]}'';
      "kwinrc"."Tiling.90b1a208-55dc-5f60-9182-bad1550344b6"."tiles" = ''
        {"layoutDirection":"horizontal","tiles":[{"width":0.25},{"width":0.5},{"width":0.25}]}'';
      "kwinrc"."Tiling.c2e27ee3-8fc7-5a31-8ddd-e259c4b61260"."tiles" = ''
        {"layoutDirection":"horizontal","tiles":[{"width":0.25},{"width":0.5},{"width":0.25}]}'';
      "kwinrc"."Tiling.dda6a2f8-2a93-5bad-a48c-1e8eee12778f"."tiles" = ''
        {"layoutDirection":"horizontal","tiles":[{"width":0.25},{"width":0.5},{"width":0.25}]}'';
      "kwinrc"."Xwayland"."Scale" = 1;
      "plasma-localerc"."Formats"."LANG" = "en_AU.UTF-8";
      "plasmarc"."Theme"."name" = "Layan";
      "plasmarc"."Wallpapers"."usersWallpapers" =
        "/home/tolga/Pictures/wallpapers/nix.png,/home/tolga/Pictures/wallpapers/unix_nixos_23_05_1920x1080.jpg,/home/tolga/Pictures/wallpapers/Deepin_Material_Desktop.png,/home/tolga/Pictures/wallpapers/wp12329542-nixos-wallpapers.png,/home/tolga/Pictures/wallpapers/8000x4500.png,/home/tolga/Pictures/wallpaper.jpg,/home/tolga/Pictures/nix logos/68747470733a2f2f692e696d6775722e636f6d2f793359646e62482e706e67.png,/home/tolga/Pictures/nix logos/nix 2.png,/home/tolga/Public/Barren-Tree.jpg";
    };
  };
}
