#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")"

add_ssh_configs() {

    printf "%s\n" \
        "Host github.com" \
        "  IdentityFile $1" \
        "  LogLevel ERROR" >> ~/.ssh/config

    echo "Add SSH configs"

}

copy_public_ssh_key_to_clipboard () {

    if command -v "pbcopy"; then

        pbcopy < "$1"
        echo "Copy public SSH key to clipboard"

    elif command -v "xclip"; then

        xclip -selection clip < "$1"
        echo "Copy public SSH key to clipboard"

    else
        echo "Please copy the public SSH key ($1) to clipboard"
    fi

}

generate_ssh_keys() {

    read -p "Please provide an email address: " email && printf "\n"
    ssh-keygen -t rsa -b 4096 -C "$email" -f "$1"

    echo "Generate SSH keys"

}

open_github_ssh_page() {

    declare -r GITHUB_SSH_URL="https://github.com/settings/ssh"

    # The order of the following checks matters
    # as on Ubuntu there is also a utility called `open`.

    if command -v "xdg-open"; then
        xdg-open "$GITHUB_SSH_URL"
    elif command -v "open"; then
        open "$GITHUB_SSH_URL"
    else
        echo "Please add the public SSH key to GitHub ($GITHUB_SSH_URL)"
    fi

}

set_github_ssh_key() {

    local sshKeyFileName="$HOME/.ssh/github"

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    # If there is already a file with that
    # name, generate another, unique, file name.

    if [ -f "$sshKeyFileName" ]; then
        sshKeyFileName="$(mktemp -u "$HOME/.ssh/github_XXXXX")"
    fi

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    generate_ssh_keys "$sshKeyFileName"
    add_ssh_configs "$sshKeyFileName"
    copy_public_ssh_key_to_clipboard "${sshKeyFileName}.pub"
    open_github_ssh_page
    test_ssh_connection && rm "${sshKeyFileName}.pub"

}

test_ssh_connection() {

    while true; do

        ssh -T git@github.com &> /dev/null
        [ $? -eq 1 ] && break

        sleep 5

    done

}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {

    echo "Set up GitHub SSH keys"

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    if ! git rev-parse &> /dev/null; then
        echo "Not a Git repository"
        exit 1
    fi

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    ssh -T git@github.com &> /dev/null

    if [ $? -ne 1 ]; then
        set_github_ssh_key
    fi

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    echo "Set up GitHub SSH keys"

}

main