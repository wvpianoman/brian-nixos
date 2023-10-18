{ pkgs, ... }: 
{
  # Add the required packages for iwd backend
  environment.systemPackages = with pkgs; [ 
  
    iwd         # Wireless daemon for Linux
    # iwd-tools 
  ];
}
