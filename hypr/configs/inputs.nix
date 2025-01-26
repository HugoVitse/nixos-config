{
    kb_layout = "fr";
    repeat_rate = 50;
    repeat_delay = 300;

    sensitivity = 0;
    numlock_by_default = true;
    left_handed = false;
    follow_mouse = true;
    float_switch_override_focus = false;

    touchpad ={
        disable_while_typing = true;
        natural_scroll = false ;
        clickfinger_behavior = false;
        middle_button_emulation = true;
        tap-to-click = true;
        drag_lock = false;
    };

    # below for devices with touchdevice ie. touchscreen
    touchdevice = {
        enabled = true;
    };

    # below is for table see link above for proper variables
    tablet = {
        transform = 0;
        left_handed = 0;
    };
}