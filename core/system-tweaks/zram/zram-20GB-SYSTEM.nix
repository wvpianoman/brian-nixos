{ config, ... }:

{

  #---------------------------------------------------------------------
  # Enable memory compression for (20GB) system
  # Faster processing and less SSD usage
  #---------------------------------------------------------------------
  zramSwap.enable = true;
  zramSwap.memoryPercent = 35;

  # 20GB
  zramSwap.memoryMax = 21474836480;

}
