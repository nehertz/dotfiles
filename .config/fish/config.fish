# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /Users/nhertz/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

export FZF_DEFAULT_OPTS="--multi --marker='+ ' --tabstop=4 --preview='bat -n --theme=\"1337\" --color always --decorations always {}'"
starship init fish | source
