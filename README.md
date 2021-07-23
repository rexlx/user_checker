# user_checker
Small shell script to check which user accounts can and can't be signed into. Requires root privileges.
<hr>

user_checker.sh will loop over all of the users on the system (even users like mysql, apache, tight, etc...) and attempt to become that user.
<br><br>
any account that isn't a real user account (like root, or whatever your actual username is) should be locked down. essentially just keep pressing ctrl+d (or type exit) until the terminal you're using closes. during that time take note of the users you can become as root. any non user account you can login to should be locked down as a general rule of thumb. Here are accounts I had to fix using a debian based distro in GCP

```
usermod -L surx    # an old account that no longer needs access
usermod -L tight   # presumably for tightvnc?
usermod -L ubuntu  # not sure if this is normal for the ubuntu user
```
<br>
<hr>
get_users.sh just gives you a list of every user in the shadow file. good to run occasionaly after someone no longer needs access to a system (not that you should lock that account down, delete is instead)
