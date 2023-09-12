{ config, pkgs, lib, ... }:

  # Laptop { various}
  # Intel hardware video acceleration and
  # VAAPI/VDPAU compatibility, which are more
  # relevant for Intel and AMD GPU's

{
  # Laptop configuration
  # ---------------------------------------------------------------------
  nixpkgs.config.packageOverrides = pkgs: {
    vaapiIntel = pkgs.vaapiIntel.override { enableHybridCodec = true; };
  };

  # Update microcode when available
  # ---------------------------------------------------------------------
  hardware.cpu.intel.updateMicrocode =
    config.hardware.enableRedistributableFirmware;

  # Enable Intel GPU in NixOS
  # ---------------------------------------------------------------------
  services.xserver = {
    videoDrivers = [ "intel" ]; # Use the dedicated Intel driver
  };

  # Hardware video acceleration and compatibility for Intel GPUs
  # ---------------------------------------------------------------------
  hardware.opengl = {
    enable = true;
    extraPackages = with pkgs; [
      intel-media-driver   # Intel Media Driver for VAAPI — Broadwell+ iGPUs  LIBVA_DRIVER_NAME=iHD
      vaapiIntel           # VA-API user mode driver for Intel GEN Graphics family LIBVA_DRIVER_NAME=i965 (older but works better for Firefox/Chromium)
      vaapiVdpau           # VDPAU driver for the VAAPI library
      libvdpau-va-gl       # VDPAU driver with OpenGL/VAAPI backend
    ];
  };

  # Power management
  # ---------------------------------------------------------------------
  powerManagement.enable = true;

  # CPU performance scaling
  # ---------------------------------------------------------------------
  services.thermald.enable = true;

  # ---------------------------------------------------------------------
  # Configure auto-cpufreq
  # Comment all this out if theres a conflict with tlp or use one or the
  # other (auto cpu or tlp)
  # ---------------------------------------------------------------------

  services.auto-cpufreq.enable = false;
  #services.auto-cpufreq.settings = {
  #  battery = {
  #    governor = "powersave";
  #    turbo = "never";
  #  };
  #  charger = {
  #    governor = "performance";
  #    turbo = "auto";
  #  };

    # power management is auto-cpufreq which aims to replace tlp.
    # When using auto-cpufreq it is therefore recommended to disable tlp as
    # these tools are conflicting with each other. However, NixOS does allow
    # for using both at the same time, and you therefore run them in tandem at your own risk.

  #  powerManagement.cpuFreqGovernor = lib.mkDefault "powersave";
  #};

  # Enable TLP for better power management with Schedutil governor
  # ---------------------------------------------------------------------
  services.tlp.enable = true;

  services.tlp.settings = {
    CPU_BOOST_ON_AC = 1;
    CPU_BOOST_ON_BAT = 0;
    CPU_ENERGY_PERF_POLICY_ON_AC = "balance_power";
    CPU_ENERGY_PERF_POLICY_ON_BAT = "balance_power";
    CPU_MAX_PERF_ON_AC = 99;
    CPU_MAX_PERF_ON_BAT = 75;
    CPU_MIN_PERF_ON_BAT = 75;
    CPU_SCALING_GOVERNOR_ON_AC = "schedutil"; # Adjust as needed
    CPU_SCALING_GOVERNOR_ON_BAT = "schedutil"; # Adjust as needed
    NATACPI_ENABLE = 1;
    RUNTIME_PM_ON_AC = "on";
    RUNTIME_PM_ON_BAT = "auto";
    SCHED_POWERSAVE_ON_BAT = 1;
    SOUND_POWER_SAVE_ON_AC = 0;
    SOUND_POWER_SAVE_ON_BAT = 1;
    START_CHARGE_THRESH_BAT0 = 40;
    STOP_CHARGE_THRESH_BAT0 = 80;
    TPACPI_ENABLE = 1;
    TPSMAPI_ENABLE = 1;
    WOL_DISABLE = "Y";
  };

  # services.blueman.enable = lib.mkForce false;

}
