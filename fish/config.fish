if status is-interactive
# Commands to run in interactive sessions can go here

set browser qutebrowser

function gpt 
	if test (count $argv) -lt 1
		echo "gpt <prompt>"
		exit 0
	end
	$browser "https://chat.openai.com/?prompt=$argv[1]" &> /dev/null &
end

end
