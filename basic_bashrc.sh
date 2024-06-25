
# allows backspace to delete uninserted characters
bindkey -v '^?' backward-delete-char

# ctrl-r, ctrl-s to search forwards and backwards through history
# bindkey -M vicmd '/' history-incremental-search-backward
# bindkey -M vicmd '?' history-incremental-search-forward
bindkey -M viins ^R history-incremental-search-backward
bindkey -M viins ^S history-incremental-search-forward
