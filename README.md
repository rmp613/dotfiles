# Dotfiles

My [NixOS](https://nixos.org/) ❄ configuration as a [flake](https://nixos.wiki/wiki/Flakes). It supports multiple hosts:

- Sandbox: VirtualBox VM for testing
- Desktop: personal home PC (Soon)
- Work: work laptop (Soon)

## Installation

### Partitioning and formatting (UEFI)

Use GParted (or whatever tool you prefer) to setup the following partitions:

- `/boot` (>=512MB): Must be labeled `BOOT` and of type FAT32 with ESP & Boot flags.
- `/` (~100GB): Must be labeled `nixos` and of type EX4.
- `/home` (?): Must be labeled `home`

Don't forget to set the partition table to GPT. For more info consult the [official documentation](https://nixos.org/manual/nixos/stable/#sec-installation)

### Mounting

```sh
mount /dev/disk/by-label/nixos /mnt

mkdir -p /mnt/boot
mount /dev/disk/by-label/BOOT /mnt/boot

mkdir -p /mnt/home
mount /dev/disk/by-label/home /mnt/home
```

### Generating configs

```sh
nixos-generate-config --root /mnt
```

### Installing

```sh
nix-env -iA nixos.git
git clone https://github.com/z0al/dotfiles.git && cd dotfiles
nixos-install --flake .#<host-name>
```

## Tips

### Local configs

You can use `~/.localrc` for machine-specific configs e.g:

```sh
echo "export CUSTOM_STUFF=true" > ~/.localrc
```

## Credits

Inspired by [Matthias Benaets's nixos-config](https://github.com/MatthiasBenaets/nixos-config). I highly recommend watching their mini-course on [YouTube](https://youtu.be/AGVXJ-TIv3Y).

## License

MIT © Ahmed T. Ali

[starship]: https://starship.rs/
[fzf]: https://github.com/junegunn/fzf
[fd]: https://github.com/sharkdp/fd
[alacritty]: https://github.com/alacritty/alacritty
