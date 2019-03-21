#!/bin/bash

# SOMETHING I PICKUP FROM NICK NISI - https://github.com/nicknisi/dotfiles
# ------------------------------------------------------------------------

# colors
tm_color_active=colour32
tm_color_inactive=colour241
tm_color_feature=colour206
tm_color_music=colour215
tm_active_border_color=colour240
tm_color_battery=colour196

# separators
tm_separator_left_bold="◀"
#tm_separator_left_thin="❮"
tm_separator_right_bold="▶"
#tm_separator_right_thin="❯"

set -g status-left-length 32
set -g status-right-length 150
set -g status-interval 3

# default statusbar colors
set-option -g status-fg $tm_color_active
set-option -g status-bg default
set-option -g status-attr default

# default window title colors
set-window-option -g window-status-fg $tm_color_inactive
set-window-option -g window-status-bg default
set -g window-status-format "#I #W"

# active window title colors
set-window-option -g window-status-current-fg $tm_color_active
set-window-option -g window-status-current-bg default
set-window-option -g  window-status-current-format "#[bold]#I #W"

# pane border
set-option -g pane-border-fg $tm_color_inactive
set-option -g pane-active-border-fg $tm_active_border_color

# message text
set-option -g message-bg default
set-option -g message-fg $tm_color_active

# pane number display
set-option -g display-panes-active-colour $tm_color_active
set-option -g display-panes-colour $tm_color_inactive

# Set clock in tmux
set-window-option -g clock-mode-colour $tm_color_active

tm_tunes="#[fg=$tm_color_music]#(osascript ~/applescripts/itunes.scpt | cut -c 1-50)"
#tm_tunes="#[fg=$tm_color_music]#(osascript -l JavaScript ~/applescripts/itunes.js)"
tm_battery_percentage="#(bash ~/.tmux/bin/battery_indicator.sh)"
tm_battery="#[fg=$tm_color_battery]$tm_separator_left_bold $tm_battery_percentage $tm_separator_right_bold"

tm_date="#[fg=$tm_color_inactive] %R %d %b %Y"
#tm_host="#[fg=$tm_color_feature,bold]#h"
tm_host="#[fg=$tm_color_feature,bold]argethlam"
tm_session_name="#[fg=$tm_color_feature,bold]#S"

set -g status-left $tm_session_name' '
set -g status-right $tm_tunes' '$tm_battery' '$tm_date' '$tm_host