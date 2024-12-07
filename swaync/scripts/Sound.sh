#!/bin/bash

# Check if swaync is in DND mode
if swaync-client -D | grep -q "true"; then
    # If DND is active, play the chime sound
    mpg123 '~/Notifications/dnd.mp3'
else
    # If DND is not active, play the classic sound
   mpg123 '~/Notifications/(iOS) Popcorn.mp3'
fi
