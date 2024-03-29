# プロンプトの表示を変更する。
autoload -Uz vcs_info
zstyle ':vcs_info:*' formats ':(%s)%b'
zstyle ':vcs_info:*' actionformats ':(%s)%b|%a'
precmd () {
  psvar=()
  LANG=en_US.UTF-8 vcs_info
  [[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
}

# when using hyper, the colors are overwritten in .hyper.js
PROMPT="%{${fg[yellow]}%}%#%n@%m[%~%1(v|%F{blue}%1v%f|)%{${fg[yellow]}%}]%{${reset_color}%}%b
> "
# 自動補完
autoload -U compinit
compinit -C

## タブ補完時に大文字小文字を区別しない
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# コマンドラインで記号の入力を許可する
setopt nonomatch

# コマンドの履歴
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_dups

# コマンドミスを修正
setopt correct

# cdの後にlsを実行
chpwd() { ls -lG }

# Ctrl + Rで履歴検索できる(peco)
function peco-history-selection() {
    BUFFER=`history -n 1 | tail | awk '!a[$0]++' | peco`
    CURSOR=$#BUFFER
    zle reset-prompt
}

zle -N peco-history-selection
bindkey '^R' peco-history-selection

# https://github.com/goldeneggg/lsec2
# list view of aws ec2 instances
lssh () {
  IP=$(lsec2 $@ | peco | awk -F "\t" '{print $2}')
  if [ $? -eq 0 -a "${IP}" != "" ]
  then
      echo ">>> SSH to ${IP}"
      ssh ${IP}
  fi
}
