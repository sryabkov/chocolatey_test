bootstrap_machine.ps1 is Arsen's script using only chocolatey

install_server is Sergei's boxstarter test

To run install_server, on the target server, open a PowerShell command prompt and launch

START http://boxstarter.org/package/url?https://raw.githubusercontent.com/sryabkov/chocolatey_test/master/install_server

If you run the above START command on a brand new Windows Server, you will get blocked by IE and we'll need to add boxstarter.org to the list of Trusted Sites. Also, for this command to work, the IE has to be the default browser.
