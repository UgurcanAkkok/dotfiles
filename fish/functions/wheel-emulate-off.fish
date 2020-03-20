# Defined in - @ line 1
function wheel-emulate-off --description 'alias wheel-emulate-off xinput set-prop "DELL0818:00 044E:121F Mouse" "libinput Scroll Method Enabled" 0 0 0'
	xinput set-prop "DELL0818:00 044E:121F Mouse" "libinput Scroll Method Enabled" 0 0 0 $argv;
end
