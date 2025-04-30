if status is-interactive
	fastfetch
	abbr -a -- ls 'eza'
	abbr -a -- lsa 'eza -a'
	abbr -a -- lsal 'eza -al'
	abbr -a -- update 'sudo pacman -Syu'

	set fish_greeting ""

	starship init fish | source
end
