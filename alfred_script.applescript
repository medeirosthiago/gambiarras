-- https://github.com/vitorgalvao/custom-alfred-iterm-scripts
-- https://eastmanreference.com/how-to-automate-your-keyboard-in-mac-os-x-with-applescript
-- https://eastmanreference.com/complete-list-of-applescript-key-codes

on call_forward()
	tell application "iTerm" to activate
end call_forward

on split_tmux_pane()
  tell application "System Events"
    key code 38 using control down
    delay 0.5
    key code 27
  end tell
end split_tmux_pane

on send_text(custom_text)
	tell application "iTerm" to tell the first window to tell current session to write text custom_text
end send_text

-- for alfred add the following lines inside `alfred_script(query)` function
call_forward()
split_tmux_pane()
send_text("echo logico")
call_forward()
