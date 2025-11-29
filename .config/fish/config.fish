if status is-interactive
    # Commands to run in interactive sessions can go here

	# Git tracking for dotfiles
	abbr -a dotcfg '/usr/bin/git --git-dir=$HOME/.cfg --work-tree=$HOME'
end
