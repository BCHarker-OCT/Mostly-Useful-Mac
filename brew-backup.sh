#!/usr/bin/env bash

# Add Homebrew to PATH (adjust based on output of `which brew`)
export PATH="/opt/homebrew/bin:$PATH"

# Change to the script's directory
cd "$(dirname "$0")" || exit

# Define the file to store the backup
FORMULA_FILE="brew-formulas.txt"
CASK_FILE="brew-casks.txt"
GIT_BRANCH="main"

# Function to backup packages
backup_packages() {
    echo "Backing up Homebrew packages..."

    # Backup formulas
    brew list --formula > $FORMULA_FILE
    echo "Saved formulas to $FORMULA_FILE"

    # Backup casks
    brew list --cask > $CASK_FILE
    echo "Saved casks to $CASK_FILE"

    # Commit and push changes to Git
    if [[ -d .git ]]; then
        echo "Committing and pushing to Git repository..."
        git add $FORMULA_FILE $CASK_FILE
        git commit -m "Update Homebrew package lists: $(date)"
        git push origin $GIT_BRANCH
    else
        echo "No Git repository detected. Please initialize one and set a remote."
    fi
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
    echo "  backup  - Backup current Homebrew packages and push to Git."
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
