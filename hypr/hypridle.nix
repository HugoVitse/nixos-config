{
    services.hypridle = {
        enable = true;

        settings = {

            general = {
                lock_cmd = "pidof hyprlock || hyprlock";#
                before_sleep_cmd = "loginctl lock-session";    
                after_sleep_cmd = "hyprctl dispatch dpms on"; # turn of screen after sleep (not strictly necessary, but just in case)
                ignore_dbus_inhibit = false;           # whether to ignore dbus-sent idle-inhibit requests (used by e.g. firefox or steam)
            };


            # Warn
            listener = [
                {
                    timeout = 540;                          # 9 min
                    on-timeout = "notify-send 'You are idle!'";
                    on-resume = "notify-send 'Welcome back!'";
                }

       
                {
                    timeout = 600;                   # 10 min
                    on-timeout = "loginctl lock-session";  # command to run when activity is detected after timeout has fired.
                }

            ];

    

        };
    };
}