if status is-interactive
# Commands to run in interactive sessions can go here

# Init
zoxide init fish | source
starship init fish | source




# Alias
alias cat="bat"
alias src="source ~/.config/fish/config.fish"
alias ls="ls --color=auto"
alias browser="qutebrowser"


# =))
function gpt 
	if test (count $argv) -lt 1
		echo "gpt <prompt>"
		exit 0
	end
	browser "https://chat.openai.com/?prompt=$argv[1]" &> /dev/null &
end



end
