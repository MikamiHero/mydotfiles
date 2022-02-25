PROMPT='%F{cyan}%*%f:%F{blue}%~%f %% '
# Find and set branch name var if in git repository.
function git_branch_name()
{
  branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
  if [[ $branch == "" ]];
  then
    :
  else
    echo '- ('$branch')'
  fi
}

# Enable substitution in the prompt.
setopt prompt_subst

# Config for prompt. PS1 synonym.
prompt='%1~ %F{cyan}$(git_branch_name)%f > '

export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd

alias v='vi'
alias sss='source ~/.zshrc'
alias c='clear'
