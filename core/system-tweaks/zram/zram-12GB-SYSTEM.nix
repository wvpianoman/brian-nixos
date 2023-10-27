{ config, ... }:

{

  #---------------------------------------------------------------------
  # Enable memory compression for (12GB) system
  # Faster processing and less SSD usage
  #---------------------------------------------------------------------
  zramSwap.enable = true;
  zramSwap.memoryPercent = 35;

  # 12GB
  zramSwap.memoryMax = 12884901888;

}
