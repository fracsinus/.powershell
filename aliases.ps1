# Alias File
# Exported by : fracsinus
set-alias -Name:"vim" -Value:"nvim" -Description:"" -Option:"None"

function .. {  # .. to cd up
  Set-Location ..
}

# git aliases

Set-Alias -Name:"gfo" -Value:"git fetch origin"

function ga {
    git add $args
}

function gb {
    git branch $args
}

function gco {
    git checkout $args
}

function gcv {
    git commit -v
}

function gd {
    git diff $args
}

function glog {
    git log --oneline --decorate --graph $args
}

function grb {
    git rebase $args
}
