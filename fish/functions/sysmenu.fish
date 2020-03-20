# Defined in - @ line 2
function sysmenu --description 'Log off, shut down, just lock or sleep the system'
	set -l opts "Shutdown\nLock\nHibernate\nSuspend\nReboot\n"
    switch (echo -e "Shutdown\nLock\nHibernate\nSuspend\nReboot\n" | dmenu -i)
        case "Shutdown"
            shutdown now
        case "Lock"
            slock
        case "Hibernate"
            systemctl hybrid-sleep & slock
        case "Suspend"
            systemctl suspend & slock
        case "Reboot"
            reboot
        case '*'
            notify-send "Unknown option"

    end
end
