def _mkdir [...args] {
    mkdir ($args | where $it != "-p"|str join)
    #fish -c $"mkdir -p ($args|str join ' ')"
}
alias mkdir = _mkdir
