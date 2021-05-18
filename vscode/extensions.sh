#!/bin/bash
exts=(
    "4ops.terraform"
    "abusaidm.html-snippets"
    "bradlc.vscode-tailwindcss"
    "christian-kohler.path-intellisense"
    "CoenraadS.bracket-pair-colorizer-2"
    "dbaeumer.vscode-eslint"
    "dsznajder.es7-react-js-snippets"
    "eamodio.gitlens"
    "EditorConfig.EditorConfig"
    "erd0s.terraform-autocomplete"
    "esbenp.prettier-vscode"
    "exiasr.hadolint"
    "formulahendry.auto-rename-tag"
    "GitHub.github-vscode-theme"
    "golang.go"
    "hashicorp.terraform"
    "hediet.vscode-drawio"
    "Hridoy.rails-snippets"
    "icrawl.discord-vscode"
    "ionutvmi.path-autocomplete"
    "jpoissonnier.vscode-styled-components"
    "kaiwood.endwise"
    "mhutchie.git-graph"
    "misogi.ruby-rubocop"
    "ms-azuretools.vscode-docker"
    "ms-python.python"
    "ms-toolsai.jupyter"
    "ms-vscode-remote.remote-containers"
    "ms-vscode.cpptools"
    "ms-vsliveshare.vsliveshare"
    "naumovs.color-highlight"
    "oderwat.indent-rainbow"
    "PKief.material-icon-theme"
    "rebornix.ruby"
    "ritwickdey.LiveServer"
    "shd101wyy.markdown-preview-enhanced"
    "SirTori.indenticator"
    "syler.sass-indented"
    "TabNine.tabnine-vscode"
    "vscodevim.vim"
    "vtrois.gitmoji-vscode"
    "wayou.vscode-todo-highlight"
    "wingrunr21.vscode-ruby"
)
cmd="code"
for ext in "${exts[@]}" ; do
    cmd="$cmd --install-extension $ext"
done
eval $cmd
