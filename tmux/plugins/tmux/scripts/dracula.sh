#!/usr/bin/env bash
# setting the locale, some users have issues with different locales, this forces the correct one
export LC_ALL=en_US.UTF-8

current_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $current_dir/utils.sh

main()
{
  datafile=/tmp/.dracula-tmux-data

  # set configuration option variables
  show_fahrenheit=$(get_tmux_option "@dracula-show-fahrenheit" true)
  show_location=$(get_tmux_option "@dracula-show-location" true)
  fixed_location=$(get_tmux_option "@dracula-fixed-location")
  show_powerline=$(get_tmux_option "@dracula-show-powerline" false)
  show_flags=$(get_tmux_option "@dracula-show-flags" true)
  show_left_icon=$(get_tmux_option "@dracula-show-left-icon" smiley)
  show_left_icon_padding=$(get_tmux_option "@dracula-left-icon-padding" 0)
  show_military=$(get_tmux_option "@dracula-military-time" false)
  show_timezone=$(get_tmux_option "@dracula-show-timezone" true)
  show_left_sep=$(get_tmux_option "@dracula-show-left-sep" )
  show_right_sep=$(get_tmux_option "@dracula-show-right-sep" )
  show_border_contrast=$(get_tmux_option "@dracula-border-contrast" false)
  show_day_month=$(get_tmux_option "@dracula-day-month" false)
  show_refresh=$(get_tmux_option "@dracula-refresh-rate" 1)
  IFS=' ' read -r -a plugins <<< $(get_tmux_option "@dracula-plugins" "battery network weather")

  none='#00000000'

  # Dracula Color Pallette
  white='#f8f8f2'
  # gray='#44475a'
  # dark_gray='#282a36'
  # dark_gray='#26273C'
  # dark_gray='#444444'
  light_purple='#bd93f9'
  #main='#bd93f9'
  dark_purple='#6272a4'
  cyan='#8be9fd'
  green='#5CB281'
  #secondary='#5CB281'
  orange='#ffb86c'
  #red='#ff5555'
  pink='#ff79c6'
  yellow='#f1fa8c'


  # everforest
  # main='#afaf87'
  # dark_gray='#585858'
  # secondary='#87afaf'
  # red='#d78787'
  # cyan='#83c092'

  # nord
  # white='##FDF6E3'
  # main='##FDF6E3'
  # main='#81a1c1'
  # dark_gray='#2e3440'
  # secondary='#88c0d0'
  # red='#bf616a'
  # cyan='#5e81ac'

  # dark_gray='#2F3D44'
  # secondary='#2F3D44'
  #red='#E5201D'
  #secondary='#80FFF9'
  #white='#FDF6E3'
  # main='#15a186'
  # main='#5CB281'
  # main='#EE984F'
  # main='#87afff'
  # main='#6482c2'
  # secondary='#a6e3a1'
  # red='#f38ba8'


	# one dark
	dark_gray='#282c34'
	gray='#a0a8b7'
	secondary='#8ebd6b'
  main="#33aeff"
	#secondary='#61afef'
	yellow='#e2b86b'
	red='#e55561'

  # Handle left icon configuration
  case $show_left_icon in
    smiley)
      left_icon="☺";;
    session)
      left_icon="#S";;
    window)
      left_icon="#W";;
		icon)
			left_icon="";;
    *)
      left_icon=$show_left_icon;;
  esac

  # Handle left icon padding
  padding=""
  if [ "$show_left_icon_padding" -gt "0" ]; then
    padding="$(printf '%*s' $show_left_icon_padding)"
  fi
  left_icon="$left_icon$padding"

  # Handle powerline option
  if $show_powerline; then
    right_sep="$show_right_sep"
    left_sep="$show_left_sep"
  fi

  # start weather script in background
  if [[ "${plugins[@]}" =~ "weather" ]]; then
    $current_dir/sleep_weather.sh $show_fahrenheit $show_location $fixed_location &
  fi

  # Set timezone unless hidden by configuration
  case $show_timezone in
    false)
      timezone="";;
    true)
      timezone="#(date +%Z)";;
  esac

  case $show_flags in
    false)
      flags=""
      current_flags="";;
    true)
      flags="#{?window_flags,#[fg=${white}]#{window_flags},}"
      current_flags="#{?window_flags,#[fg=${dark_gray}]#{window_flags},}"
  esac

  # sets refresh interval to every 5 seconds
  tmux set-option -g status-interval $show_refresh

  # set the prefix + t time format
  if $show_military; then
    tmux set-option -g clock-mode-style 24
  else
    tmux set-option -g clock-mode-style 12
  fi

  # set length
  tmux set-option -g status-left-length 100
  tmux set-option -g status-right-length 100

  # pane border styling
  if $show_border_contrast; then
    tmux set-option -g pane-active-border-style "fg=${light_purple}"
  else
    #tmux set-option -g pane-active-border-style "fg=${dark_purple}"
    tmux set-option -g pane-active-border-style "fg=${main}"
  fi
  tmux set-option -g pane-border-style "fg=${gray}"

  # message styling
  tmux set-option -g message-style "bg=${dark_gray},fg=${white}"

  # status bar
  # tmux set-option -g status-style "bg=${blue},fg=${main}"
  tmux set-option -g status-style "bg=${dark_gray},fg=${white}"

  # Status left
  if $show_powerline; then
    #tmux set-option -g status-left "#[bg=${green},fg=${dark_gray}]#{?client_prefix,#[bg=${yellow}],} ${left_icon} #[fg=${green},bg=${gray}]#{?client_prefix,#[fg=${yellow}],}${left_sep}"
    tmux set-option -g status-left "#[bg=${main},fg=${dark_gray}, bold]#{?client_prefix,#[bg=${secondary}],} ${left_icon}#[fg=${main},bg=${dark_gray}]#{?client_prefix,#[fg=${secondary}],}${left_sep}"
    # tmux set-option -g status-left "#{?client_prefix,#[fg=${green}],}${right_sep}#[bg=${main},fg=${dark_gray}, bold]#{?client_prefix,#[bg=${green}],} ${left_icon}#[fg=${main},bg=${dark_gray}]#{?client_prefix,#[fg=${green}],}${left_sep} "
    powerbg=${dark_gray}
  else
    #tmux set-option -g status-left "#[bg=${main},fg=${dark_gray},bold]#{?client_prefix,#[bg=${secondary}],} ${left_icon}"
    tmux set-option -g status-left "#[bg=${main},fg=${dark_gray},bold]#{?client_prefix,#[bg=${secondary}],} ${left_icon}"
    # tmux set-option -g status-left "#[bg=${white},fg=${dark_gray},bold]#{?client_prefix,#[bg=${dark_gray}],} ${left_icon}"
  fi

  # Status right
  tmux set-option -g status-right ""

  for plugin in "${plugins[@]}"; do

    if [ $plugin = "git" ]; then
      IFS=' ' read -r -a colors  <<< $(get_tmux_option "@dracula-git-colors" "green dark_gray")
        script="#($current_dir/git.sh)"     
    fi

    if [ $plugin = "battery" ]; then
      IFS=' ' read -r -a colors <<< $(get_tmux_option "@dracula-battery-colors" "cyan dark_gray")
      script="#($current_dir/battery.sh)"
    fi

    if [ $plugin = "gpu-usage" ]; then
      IFS=' ' read -r -a colors <<< $(get_tmux_option "@dracula-gpu-usage-colors" "pink dark_gray")
      script="#($current_dir/gpu_usage.sh)"
    fi

    if [ $plugin = "cpu-usage" ]; then
      IFS=' ' read -r -a colors <<< $(get_tmux_option "@dracula-cpu-usage-colors" "orange dark_gray")
      script="#($current_dir/cpu_info.sh)"
    fi

    if [ $plugin = "ram-usage" ]; then
      IFS=' ' read -r -a colors <<< $(get_tmux_option "@dracula-ram-usage-colors" "green dark_gray")
      script="#($current_dir/ram_info.sh)"
    fi

    if [ $plugin = "network" ]; then
      IFS=' ' read -r -a colors <<< $(get_tmux_option "@dracula-network-colors" "cyan dark_gray")
      script="#($current_dir/network.sh)"
    fi

    if [ $plugin = "network-bandwidth" ]; then
      IFS=' ' read -r -a colors <<< $(get_tmux_option "@dracula-network-bandwidth-colors" "cyan dark_gray")
      tmux set-option -g status-right-length 250
      script="#($current_dir/network_bandwidth.sh)"
    fi

    if [ $plugin = "network-ping" ]; then
      IFS=' ' read -r -a colors <<<$(get_tmux_option "@dracula-network-ping-colors" "red dark_gray") 
			#IFS=' ' read -r -a colors <<<$(get_tmux_option "@dracula-network-ping-colors" "red white")
      script="#($current_dir/network_ping.sh)"
    fi

    if [ $plugin = "weather" ]; then
      # wait unit $datafile exists just to avoid errors
      # this should almost never need to wait unless something unexpected occurs
      while [ ! -f $datafile ]; do
        sleep 0.01
      done

      IFS=' ' read -r -a colors <<< $(get_tmux_option "@dracula-weather-colors" "orange dark_gray")
      script="#(cat $datafile)"
    fi

    if [ $plugin = "time" ]; then
      IFS=' ' read -r -a colors <<< $(get_tmux_option "@dracula-time-colors" "dark_purple white")
      if $show_day_month && $show_military ; then # military time and dd/mm
        script="%a %d/%m %R ${timezone} "
      elif $show_military; then # only military time
        script="%a %m/%d %R ${timezone} "
      elif $show_day_month; then # only dd/mm
        script="%a %d/%m %I:%M %p ${timezone} "
      else
        script="%a %d %b %I:%M %p ${timezone} "
      fi
    fi

    if $show_powerline; then
      # tmux set-option -ga status-right "#[fg=${!colors[0]},bg=${powerbg},nobold,nounderscore,noitalics]${right_sep}#[fg=${!colors[1]},bg=${!colors[0]}] $script #[fg=${!colors[0]},bg=${powerbg},nobold,nounderscore,noitalics]${left_sep}  "
      tmux set-option -ga status-right "#[fg=${!colors[0]},bg=${dark_gray},nobold,nounderscore,noitalics]${right_sep}#[fg=${!colors[1]},bg=${!colors[0]}] $script #[fg=${!colors[0]},bg=${dark_gray},nobold,nounderscore,noitalics]${left_sep}"
      powerbg=${!colors[0]}
    else
      tmux set-option -ga status-right "#[fg=${!colors[1]},bg=${!colors[0]},bold] $script "
    fi
  done

  # Window option
  if $show_powerline; then
    # tmux set-window-option -g window-status-current-format "#[fg=${gray},bg=${dark_purple}]${left_sep}#[fg=${white},bg=${dark_purple}] #I #W${current_flags} #[fg=${dark_purple},bg=${gray}]${left_sep}"
    # tmux set-window-option -g window-status-current-format "#[fg=${dark_gray},bg=${main}]${left_sep}#[fg=${dark_gray},bg=${main}] #W${current_flags} #[fg=${main},bg=${dark_gray}]${left_sep}"
    tmux set-window-option -g window-status-current-format "#[fg=${main},bg=${dark_gray}]${right_sep}#[fg=${dark_gray},bg=${main}, bold] #W${current_flags} #[fg=${main},bg=${dark_gray}]${left_sep}"
  else
    tmux set-window-option -g window-status-current-format "#[fg=${dark_gray},bg=${main},bold] #W ${current_flags} "
    # tmux set-window-option -g window-status-current-format "#[fg=${dark_gray},bg=${white},bold] #W${current_flags} "
  fi

  tmux set-window-option -g window-status-format " #[fg=${white}]#[bg=${dark_gray}]#W ${flags} "
  tmux set-window-option -g window-status-activity-style "bold"
  tmux set-window-option -g window-status-bell-style "bold"
}

# run main function
main
