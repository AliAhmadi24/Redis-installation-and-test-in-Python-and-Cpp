
# Run setRedis.py in a new terminal to set the variable's value :
# "exec bash" keeps terminal open even if the program is finished.
gnome-terminal -- bash -c "python3 setRedis.py; exec bash"

# Run the compiled C++ program (getRadis) in new terminal to get the variable's value :
gnome-terminal -- bash -c "./getRedis; exec bash"

