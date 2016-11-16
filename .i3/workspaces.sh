#!/bin/bash

for i in {1..9}
do
  printf "Creating workspace $i from $HOME/.i3/workspace-$i.json...  "
  if [ -f "$HOME/.i3/workspace-$i.json" ]
  then
    i3-msg "workspace $i; append_layout $HOME/.i3/workspace-$i.json"
    if [ $i = 1 ]
    then
      i3-msg exec 'dbus-launch gnome-terminal --working-directory="/home/robbo/projects"'
      i3-msg exec 'dbus-launch gnome-terminal --working-directory="/home/robbo/projects"'
      i3-msg exec 'dbus-launch gnome-terminal --working-directory="/home/robbo/projects"'
      i3-msg exec 'dbus-launch gnome-terminal --working-directory="/home/robbo/projects"'
      i3-msg exec 'dbus-launch gnome-terminal --working-directory="/home/robbo/projects"'
    fi
    # if [ $i = 2 ]
    # then
    #   i3-msg exec vivaldi-snapshot
    # fi
    # if [ $i = 3 ]
    # then
    #   i3-msg exec ~/Komodo-IDE-10/bin/komodo
    #   i3-msg exec dbus-launch gnome-terminal
    #   i3-msg exec dbus-launch gnome-terminal
    #   i3-msg exec dbus-launch gnome-terminal
    #   i3-msg exec dbus-launch gnome-terminal
    # fi
    # if [ $i = 6 ]
    # then
    #   i3-msg exec dbus-launch gnome-terminal
    #   i3-msg exec dbus-launch gnome-terminal
    #   i3-msg exec dbus-launch gnome-terminal
    #   i3-msg exec dbus-launch gnome-terminal
    # fi
    # if [ $i = 8 ]
    # then
    #   i3-msg exec spotify
    #   i3-msg exec google-chrome-stable
    # fi
    printf "done\n"
  else
    printf "skipping, no file found\n"
  fi
done
