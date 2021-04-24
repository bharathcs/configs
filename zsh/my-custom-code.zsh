alias gitygg='echo "git Yggdrasil (alias):
==============================================================
git log --graph --decorate --oneline \$(git rev-list -g --all)

" && git log --graph --decorate --oneline $(git rev-list -g --all)'

del () {
    echo "Moved to trash:"
    for FILE1 in "$@"
    do
    echo $FILE1
    mv $FILE1 ~/.trash/
    done
}

ide-app () {
    if [ "$#" -eq 2 ]; then
        echo "Opening $1 in current folder"
        open -a $2 ./
    elif [ "$#" -eq 3 ]; then
        open -a $2 $3
    else 
        echo "Usage: vscode / intellij {FOLDER_PATH}"
    fi
}

alias vscode="ide-app VSCode '/Applications/Visual Studio Code.app'"
alias intellij="ide-app IntelliJ '/Applications/IntelliJ IDEA.app'"
alias newpad="open 'https://demo.firepad.io/'"
alias hledgerALL="hledger -f ~/personal/hledger.journal balance -s -t"
alias hledgerSGD="hledger -f ~/personal/hledger.journal balance -s -t -B -X$"
