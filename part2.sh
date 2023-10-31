# Generate NixOS configuration for your system
sudo nixos-rebuild switch --upgrade

# Create the ~/.config directory for "brian"
mkdir -p /home/brian/.config

# Create a symlink for Home Manager for "brian"
ln -s /home/brian/brian_home_manager_config.nix /home/brian/.config/home-manager

# Add Home Manager channel
nix-channel --add https://github.com/nix-community/home-manager/archive/release-23.05.tar.gz

# Update Nix channels
nix-channel --update

# Install Home Manager for "brian"
nix-shell '<home-manager>' -A install
