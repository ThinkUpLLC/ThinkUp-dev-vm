# http://stackoverflow.com/questions/2783313/how-can-i-get-around-mysql-errcode-13-with-select-into-outfile
sudo /etc/init.d/apparmor kill
sudo /etc/init.d/apparmor stop
sudo update-rc.d -f apparmor remove