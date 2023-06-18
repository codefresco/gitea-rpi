wget -O gitea https://dl.gitea.com/gitea/1.19.3/gitea-1.19.3-linux-arm64
chmod +x gitea
sudo adduser --system --shell /bin/bash --gecos 'Git Version Control' --group --disabled-password --home /home/git git
apt install git -y
mkdir -p /var/lib/gitea/{custom,data,log}
chown -R git:git /var/lib/gitea/
chmod -R 750 /var/lib/gitea/
mkdir /etc/gitea
chown root:git /etc/gitea
chmod 770 /etc/gitea
cp gitea /usr/local/bin/gitea
wget https://raw.githubusercontent.com/go-gitea/gitea/release/v1.19/contrib/systemd/gitea.service
sudo cp gitea.service /etc/systemd/system/gitea.service
sudo systemctl enable gitea --now
sudo service gitea status
