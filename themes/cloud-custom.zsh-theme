

###
# Modify Git prompt
ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%}✔%{ %}"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[green]%}✱%{ %}"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}✖%{ %}"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[green]%}➜%{ %}"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[green]%}═%{ %}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg_bold[black]%}☁%{ %}"


PR_HBAR='-'
local TERMWIDTH
(( TERMWIDTH = ${COLUMNS} - 1 ))
PR_FILLBAR="\${(l.(($TERMWIDTH))..${PR_HBAR}.)}"
  
PROMPT='${(e)PR_FILLBAR}
%{$fg_bold[cyan]%}☁  %{$fg[blue]%}%~\
%{$fg_bold[cyan]%}$(git_prompt_info)$(git_prompt_status)%{$fg[yellow]%} ➜ %{$reset_color%}'
