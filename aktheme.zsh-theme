PROMPT=">.%(?:%{$fg_bold[cyan]%} /:%{$fg_bold[red]%} /)"
PROMPT+='%{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)
>. '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[magenta]%} /%{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[cyan]%}%{$fg[red]%} !"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[cyan]%}"
