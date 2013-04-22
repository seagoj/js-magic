# af-magic-square.zsh-theme
#
# Author: Jeremy Seago
# URL: http://seagoj.com
# Repo: https://github.com/seagoj/af-magic-square
#
# This is a very slightly modified version of Andy Fleming's af-magic theme, so I've left
# his author information below.
#
# Author: Andy Fleming
# URL: http://andyfleming.com/
# Repo: https://github.com/andyfleming/oh-my-zsh
# Direct Link: https://github.com/andyfleming/oh-my-zsh/blob/master/themes/af-magic.zsh-theme

if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="green"; fi
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

# primary prompt
PROMPT='$FG[075]%*%{$reset_color%}$FG[237]----------------------------------%n@%m%{$reset_color%}
$FG[032]%~\
$FG[105]%(!.#.»)%{$reset_color%} '
PROMPT2='%{$fg[red]%}\ %{$reset_color%}'
RPS1='${return_code}'

# color vars
eval my_gray='$FG[237]'
eval my_orange='$FG[214]'

# right prompt
# RPROMPT='$my_gray%n@%m%{$reset_color%}%'
RPROMPT='$(git_prompt_info)'

# git settings
ZSH_THEME_GIT_PROMPT_PREFIX="$FG[075]"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="$my_orange*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$FG[075]%{$reset_color%}"

