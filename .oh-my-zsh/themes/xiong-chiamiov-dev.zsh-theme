# user, host, full path, and time/date
# on two lines for easier vgrepping
# entry in a nice long thread on the Arch Linux forums: https://bbs.archlinux.org/viewtopic.php?pid=521888#p521888

PROMPT=$'%{\e[0;31m%}%B┌─[%b%{\e[0m%}%{\e[38;5;208m%}%n%{\e[1;33m%}💀%{\e[0m%}%{\e[0;35m%}%m%{\e[0;31m%}%B]%b%{\e[0m%} %b%{\e[0;31m%}%B(%b%{\e[1;37m%}$SHELL_THEME%{\e[0;31m%}%B)%b%{\e[0m%} - %b%{\e[0;31m%}%B[%b%{\e[1;37m%}%~%{\e[0;31m%}%B]%b%{\e[0m%} - %{\e[0;31m%}%B[%b%{\e[0;33m%}'%D{"%a %b %d, %H:%M"}%b$'%{\e[0;31m%}%B]%b%{\e[0m%}
%{\e[0;31m%}%B└─%B[%{\e[1;35m%}$%{\e[0;31m%}%B] <$(git_prompt_info)>%{\e[0m%}%b '
PS2=$' \e[0;31m%}%B>%{\e[0m%}%b '
