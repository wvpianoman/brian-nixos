cd $HOME
nix-env -iA nixos.git
git clone https://github.com/wvpianoman/current-project.git
cd current-project
sudo cp /etc/nixos/configuration.nix /etc/nixos/configuration.nix.bak
sudo rsync -av --exclude='.git' ./* /etc/nixos
sudo chown -R $(whoami):$(id -gn) /etc/nixos
sudo chmod -R 777 /etc/nixos
export NIXPKGS_ALLOW_INSECURE=1

