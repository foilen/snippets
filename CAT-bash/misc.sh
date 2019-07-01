# Get the directory path of the current script
RUN_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Run as root if not already
if [ "$(whoami)" != "root" ]; then
	sudo $0 $@ 
	exit
fi

# Get the current time in a variable
# E.g: "2019-07-01_08-30-36"
TIMESTAMP=$(date '+%Y-%m-%d_%H-%M-%S')
