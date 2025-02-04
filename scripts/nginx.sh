
#!/usr/bin/bash

sudo systemctl daemon-reload
sudo rm -f /etc/nginx/sites-enabled/default

sudo cp /home/ubuntu/devops_project/nginx/nginx.conf /etc/nginx/sites-available/devops
sudo ln -s /etc/nginx/sites-available/devops /etc/nginx/sites-enabled/
#sudo ln -s /etc/nginx/sites-available/nom /etc/nginx/sites-enabled
#sudo nginx -t
sudo gpasswd -a www-data ubuntu
sudo systemctl restart nginx

