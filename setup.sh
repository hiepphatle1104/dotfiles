# /bin/bash

install() { 
	stow .
}

uninstall() { 
	stow -D . 
}

main(){
	if [ "$1" == "install" ]; then
		echo "Installing..."
		install
		echo "Done."
	elif [ "$1" == "uninstall" ]; then
		echo "Uninstalling..."
		uninstall
		echo "Done."
	else
		echo "Usage: $0 {install|uninstall}"
		exit 1
	fi
}

main "$@"
