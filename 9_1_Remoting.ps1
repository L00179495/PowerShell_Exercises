$REMOTE_SERVER = 'Server1'

# Connect to server-1
Enter-PSSession $REMOTE_SERVER
# Do stuff on the remote server
Exit-PSSession