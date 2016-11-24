#!/bin/bash

for i in {1..9}
do
  printf "Creating workspace $i from $HOME/.i3/workspace-$i.json...  "
  if [ -f "$HOME/.i3/workspace-$i.json" ]
  then
    i3-msg "workspace $i";
    sleep 0.2
    if [ $i = 1 ]
    then
      i3-msg "move workspace to output eDP1; append_layout $HOME/.i3/workspace-$i.json"
      i3-msg exec 'dbus-launch gnome-terminal --working-directory="/home/robbo/projects"' && sleep 0.2
      i3-msg exec 'dbus-launch gnome-terminal --working-directory="/home/robbo/projects/postedin/setup"' && sleep 0.2
      i3-msg exec 'dbus-launch gnome-terminal --working-directory="/home/robbo/projects/postedin/marketplace"' && sleep 0.2
      i3-msg exec 'dbus-launch gnome-terminal --working-directory="/home/robbo/projects/postedin/beta"' && sleep 0.2
      i3-msg exec 'dbus-launch gnome-terminal --working-directory="/home/robbo/projects"'
    fi
    if [ $i = 2 ]
    then
      i3-msg "move workspace to output eDP1; append_layout $HOME/.i3/workspace-$i.json"
      i3-msg exec dbus-launch gnome-system-monitor
    fi
    if [ $i = 3 ]
    then
      i3-msg "move workspace to output DP2-3; append_layout $HOME/.i3/workspace-$i.json"
      i3-msg exec 'dbus-launch atom /home/robbo/projects/postedin/marketplace' && sleep 2
      i3-msg exec 'dbus-launch gnome-terminal --working-directory="/home/robbo/projects/postedin/marketplace"' && sleep 0.2
      i3-msg exec 'dbus-launch gnome-terminal --working-directory="/home/robbo/projects/postedin/marketplace/api"' && sleep 0.2
      i3-msg exec 'dbus-launch gnome-terminal --working-directory="/home/robbo/projects/postedin/marketplace"'
    fi
    if [ $i = 4 ]
    then
      i3-msg "move workspace to output DP2-3; append_layout $HOME/.i3/workspace-$i.json"
      i3-msg exec 'dbus-launch atom /home/robbo/projects/postedin/beta' && sleep 2
      i3-msg exec 'dbus-launch gnome-terminal --working-directory="/home/robbo/projects/postedin/beta"' && sleep 0.2
      i3-msg exec 'dbus-launch gnome-terminal --working-directory="/home/robbo/projects/postedin/beta/public/app/public"' && sleep 0.2
      i3-msg exec 'dbus-launch gnome-terminal --working-directory="/home/robbo/projects/postedin/beta/public/app/admin"'
    fi
    if [ $i = 5 ]
    then
      i3-msg "move workspace to output DP2-3; append_layout $HOME/.i3/workspace-$i.json"
      i3-msg exec 'dbus-launch atom /home/robbo/projects/postedin/editors' && sleep 2
      i3-msg exec 'dbus-launch gnome-terminal --working-directory="/home/robbo/projects/postedin/editors"' && sleep 0.2
      i3-msg exec 'dbus-launch gnome-terminal --working-directory="/home/robbo/projects/postedin/editors"' && sleep 0.2
      i3-msg exec 'dbus-launch gnome-terminal --working-directory="/home/robbo/projects/postedin/editors"'
    fi
    if [ $i = 6 ]
    then
      i3-msg "move workspace to output DP2-3; append_layout $HOME/.i3/workspace-$i.json"
      i3-msg exec dbus-launch vivaldi-snapshot && sleep 0.2
    fi
    if [ $i = 7 ]
    then
      i3-msg "move workspace to output DP2-2; append_layout $HOME/.i3/workspace-$i.json"
      i3-msg exec dbus-launch google-chrome-beta && sleep 0.2
    fi
    if [ $i = 8 ]
    then
      i3-msg "move workspace to output DP2-2; append_layout $HOME/.i3/workspace-$i.json"
      #i3-msg exec dbus-launch discord-canary && sleep 0.2
      #i3-msg exec dbus-launch spotify && sleep 0.2
    fi
    printf "done\n"
  else
    printf "skipping, no file found\n"
  fi
done
