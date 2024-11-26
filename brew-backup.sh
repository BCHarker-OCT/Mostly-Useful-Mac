#!/usr/bin/env bash

# Define the file to store the backup
FORMULA_FILE="brew-formulas.txt"
CASK_FILE="brew-casks.txt"

# Function to backup packages
backup_packages() {
    echo "Backing up Homebrew packages..."
    # Backup formulas
    brew list --formula > $FORMULA_FILE
    echo "Saved formulas to $FORMULA_FILE"

    # Backup casks
    brew list --cask > $CASK_FILE
    echo "Saved casks to $CASK_FILE"
}

# Function to install packages from backup
install_packages() {
    if [[ -f $FORMULA_FILE ]]; then
        echo "Installing formulas from $FORMULA_FILE..."
        xargs brew install < $FORMULA_FILE
    else
        echo "No formula file found ($FORMULA_FILE)."
    fi

    if [[ -f $CASK_FILE ]]; then
        echo "Installing casks from $CASK_FILE..."
        xargs brew install --cask < $CASK_FILE
    else
        echo "No cask file found ($CASK_FILE)."
    fi
}

# Function to display help
show_help() {
    echo "Usage: $0 [backup|update|install]"
    echo "  backup  - Backup current Homebrew packages."
    echo "  update  - Alias for 'backup'."
    echo "  install - Install Homebrew packages from backup files."
}

# Check the input argument
if [[ $# -eq 0 ]]; then
    show_help
    exit 1
fi

case $1 in
    backup|update)
        backup_packages
        ;;
    install)
        install_packages
        ;;
    *)
        show_help
        exit 1
        ;;
esac
