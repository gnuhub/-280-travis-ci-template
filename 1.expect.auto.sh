#!/usr/bin/expect -f
set timeout -1


spawn ./2.ci.run.sh

expect {
    "Are you sure you want to continue connecting"
    {
        send "yes\r"
        exp_continue
    }
    # "root"
    # {
    #     send "$env(SSH_PASSWORD)\r"
    #     exp_continue
    # }
    "Please input an option"
    {
        send "1\r"
        exp_continue
    }
    "Please ensure that your environment has met the above requirements"
    {
        send "yes\r"
        exp_continue
    }
    # "Password"
    # {
    #     send "$env(USER_PASSWORD)\r"
    #     exp_continue
    # }
    "incorrect password attempts"
    {
        exit 1
    }
    "Do you want java"
    {
        send "n\r"
        exp_continue
    }
    "Do you want to change your default shell to zsh"
    {
        send "Y\r"
        exp_continue
    }
    "Press 'space' for more"
    {
        send " "
        exp_continue
    }
    "By typing 'agree'"
    {
        send "agree\r"
        exp_continue
    }
    "Accept? (y/N):"
    {
        send "y\r"
        exp_continue
    }
    "Do you wish to create a custom hardware profile"
    {
        send "no\r"
        exp_continue
    }
    "Are you sure"
    {
        send "yes\r"
        exp_continue
    }
}
