#!/bin/bash

# Nombre para la sesion:
sn=so

# Arrancar la sesion en $HOME, con la primera ventana:
cd $HOME
tmux new-session -s "$sn" -d 

# Crear 1 terminal mas para mi usuario y una para "root"
tmux new-window -t "$sn" 'cd /media/pablo/DATOS/2018/Facultad/SistemasOp/ | vim' 
tmux split-window -h -p 20 
tmux attach -t so
