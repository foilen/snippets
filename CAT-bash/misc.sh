# Get the directory path of the current script
RUN_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Run as root if not already
if [ "$(whoami)" != "root" ]; then
	sudo $0 $@ 
	exit
fi
