run:
	nix run .#nvim -- nvim/init.lua

profile:
	nix run .#nvim -- --startuptime temp.log | tail -f -n10 temp.log | cut -d' ' -f1
