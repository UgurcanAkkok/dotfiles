# Defined in - @ line 1
function wheel-emulate-on --description 'alias wheel-emulate-on xinput set-prop "DELL0818:00 044E:121F Mouse" "libinput Scroll Method Enabled" 0 0 1'
	xinput set-prop "DELL0818:00 044E:121F Mouse" "libinput Scroll Method Enabled" 0 0 1 $argv;
end
