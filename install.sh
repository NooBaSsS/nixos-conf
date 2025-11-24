sudo nix --experimental-features "nix-command flakes" run github:nix-community/disko/latest -- --mode destroy,format,mount ./disko.nix

sudo mkdir /mnt/{home,nix}

sudo mount -o subvol=@ /dev/sda3 /mnt
sudo mount -o subvol=@home /dev/sda3 /mnt/home
sudo mount -o subvol=@nix  /dev/sda3 /mnt/nix

nixos-generate-config --root /mnt
