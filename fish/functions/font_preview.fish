# Defined in /tmp/fish.9rlxAd/font_preview.fish @ line 2
function font_preview
    display (fc-list | grep -o -E ".*(o|t)tf" | dmenu -l 20)
end
