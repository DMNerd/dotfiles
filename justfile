gc:
  # remove all generations older than 7 days
  sudo nix profile wipe-history --profile /nix/var/nix/profiles/system  --older-than 7d
  # garbage collect all unused nix store entries
  sudo nix store gc --debug
up:
  nix flake update
chup:
  nix-channel --update
cl:
  nix flake update --commit-lock-file
fmt:
  # format the nix files in this repo
  nix fmt
rbd:
  darwin-rebuild switch --flake .
prune-hm:
  nix run home-manager/master -- expire-generations "-1 days"
