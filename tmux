# ---

# set shell
set-option -g default-shell /usr/bin/zsh


# set term
set -g default-terminal xterm-256color-italic


# utf-8
set-option -g utf8 on


# history limit
set -g history-limit 200000


# mouse mode
setw -g mode-mouse on
setw -g mouse-resize-pane on
setw -g mouse-select-pane on
setw -g mouse-select-window on


# Start numbering at 1
set -g base-index 1


# Allows for faster key repetition
set -s escape-time 0


# Rather than constraining window size to the maximum size of any client
# connected to the *session*, constrain window size to the maximum size of any
# client connected to *that window*. Much more reasonable.
setw -g aggressive-resize on


# ---

# status line
set -g status-bg black
set -g status-fg white
set -g status-interval 60
set -g status-left-length 30
set -g status-left '#[fg=green](#S) #(whoami)@#H#[default]'
set -g status-right '#[fg=yellow]#(cut -d " " -f 1-3 /proc/loadavg)#[default] #[fg=blue]%H:%M#[default]'


# ---

# act like GNU screen
unbind C-b
set -g prefix C-a


# Allows us to use C-a a <command> to send commands to a TMUX session inside
# another TMUX session
bind a send-prefix


# C-a C-a toggle
bind C-a last-window


# window management
unbind '"'
unbind %
bind | split-window -h # -c '#{pane_current_path}' # these don't work on nix
bind - split-window -v # -c '#{pane_current_path}'


# reload config
bind r source-file ~/.tmux.conf \; display-message "Config reloaded..."


# confirm before killing a window or the server
bind x confirm kill-window
bind X confirm kill-server


# copy and paste to clipboard
bind C-p run "tmux set-buffer \"$(xclip -o)\"; tmux paste-buffer"
bind C-y run "tmux save-buffer - | xclip -i"


# ---

# viiiiiiiiiiiim
setw -g mode-keys vi
bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R
bind-key -r C-h select-window -t :-
bind-key -r C-l select-window -t :+


# Vi copypaste mode
unbind [
bind Escape copy-mode
unbind p
bind p paste-buffer
bind-key -t vi-copy 'v' begin-selection
bind-key -t vi-copy 'V' rectangle-toggle
bind-key -t vi-copy 'y' copy-selection
bind-key -t vi-copy 'Y' copy-end-of-line
