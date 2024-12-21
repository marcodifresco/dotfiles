su
ls /games/
su
ifconfig
su
su
su
cat brave 
exit
mkdir ~/.local/share/fonts
cp /archive/software/fonts/* ~/.local/share/fonts
su
exit
eselect news list
eselect news read 11
systemctl --user --now enable pipewire.socket pipewire-pulse.socket
systemctl --user --force enable wireplumber.service
su
exit
su
exit
su
curl -sS https://raw.githubusercontent.com/diogocavilha/fancy-git/master/install.sh | sh
exit
#1734696141
uprecords 
#1734696222
uprecords -?
#1734696249
su
#1734704739
exit
#1734706096
eix libreoffice
#1734706321
eix gimp
#1734706540
su
#1734706982
systemctl --user enable syncthing.service
#1734706990
systemctl --user start syncthing.service
#1734707009
su
#1734707465
ls
#1734707469
ls -la
#1734707478
rm -r Documents
#1734707487
ls Documents/
#1734707489
rm -r Documents
#1734707501
ln -s /archive/documents Documents
#1734707508
ls Downloads/
#1734707514
rm -r Downloads/
#1734707530
ln-a /archive/zip/ Downloads
#1734707550
rn -r Sync/
#1734707556
rm -r Sync/
#1734707843
 ethtool eth0 | grep Speed
#1734707846
su
#1734714619
exit
su
#1734717529
exit
#1734716673
au
#1734716675
su
#1734717550
who
#1734717552
su
#1734718168
eix xclip
#1734718176
su
#1734718457
ls
#1734718461
ls -la
#1734718476
rm -r Pictures
#1734718491
ln -s /archive/documents/Pictures ./
#1734718494
ls -la
#1734718501
ls Public/
#1734718623
su
#1734734863
chmod 700 ~/.ssh
#1734734889
ls .ssh/
#1734735056
cp /etc/fstab /archive/nas/
#1734735320
mkdir /archive/nas/backup
#1734735320
mkdir /archive/nas/BigFiles
#1734735320
mkdir /archive/nas/documents
#1734735320
mkdir /archive/nas/zip
#1734735320
mkdir /archive/nas/multimedia
#1734735320
mkdir /archive/nas/virtualization
#1734735320
mkdir /archive/nas/games
#1734735320
mkdir /archive/nas/development
#1734735320
mkdir /archive/nas/software
#1734735320
mkdir /archive/nas/web
#1734735320
mkdir /archive/nas/misc
#1734735372
mount -t cifs -o noserverino,credentials=/root/credentials.txt,vers=3.0,domain=workgroup,sec=ntlmv2i,uid=1000,gid=1000,noauto,x-systemd.automount,actimeo=0 //192.168.0.12/Backup		/archive/nas/backup
#1734735372
mount -t cifs -o noserverino,credentials=/root/credentials.txt,vers=3.0,domain=workgroup,sec=ntlmv2i,uid=1000,gid=1000,noauto,x-systemd.automount,actimeo=0 //192.168.0.12/BigFiles		/archive/nas/BigFiles
#1734735372
mount -t cifs -o noserverino,credentials=/root/credentials.txt,vers=3.0,domain=workgroup,sec=ntlmv2i,uid=1000,gid=1000,noauto,x-systemd.automount,actimeo=0 //192.168.0.12/Documents	/archive/nas/documents
#1734735372
mount -t cifs -o noserverino,credentials=/root/credentials.txt,vers=3.0,domain=workgroup,sec=ntlmv2i,uid=1000,gid=1000,noauto,x-systemd.automount,actimeo=0 //192.168.0.12/Download		/archive/nas/zip
#1734735372
mount -t cifs -o noserverino,credentials=/root/credentials.txt,vers=3.0,domain=workgroup,sec=ntlmv2i,uid=1000,gid=1000,noauto,x-systemd.automount,actimeo=0 //192.168.0.12/Multimedia	/archive/nas/multimedia
#1734735372
mount -t cifs -o noserverino,credentials=/root/credentials.txt,vers=3.0,domain=workgroup,sec=ntlmv2i,uid=1000,gid=1000,noauto,x-systemd.automount,actimeo=0 //192.168.0.12/Virtualization	/archive/nas/virtualization
#1734735372
mount -t cifs -o noserverino,credentials=/root/credentials.txt,vers=3.0,domain=workgroup,sec=ntlmv2i,uid=1000,gid=1000,noauto,x-systemd.automount,actimeo=0 //192.168.0.12/Games		/archive/nas/games
#1734735372
mount -t cifs -o noserverino,credentials=/root/credentials.txt,vers=3.0,domain=workgroup,sec=ntlmv2i,uid=1000,gid=1000,noauto,x-systemd.automount,actimeo=0 //192.168.0.12/Development	/archive/nas/development
#1734735372
mount -t cifs -o noserverino,credentials=/root/credentials.txt,vers=3.0,domain=workgroup,sec=ntlmv2i,uid=1000,gid=1000,noauto,x-systemd.automount,actimeo=0 //192.168.0.12/Software		/archive/nas/software
#1734735372
mount -t cifs -o noserverino,credentials=/root/credentials.txt,vers=3.0,domain=workgroup,sec=ntlmv2i,uid=1000,gid=1000,noauto,x-systemd.automount,actimeo=0 //192.168.0.12/Web		/archive/nas/web
#1734735372
mount -t cifs -o noserverino,credentials=/root/credentials.txt,vers=3.0,domain=workgroup,sec=ntlmv2i,uid=1000,gid=1000,noauto,x-systemd.automount,actimeo=0 //192.168.0.12/Misc		/archive/nas/misc
#1734735401
su
#1734737284
exit
#1734736678
gpg --list-secret-keys, 
#1734736680
gpg --list-secret-keys,
#1734736681
gpg --list-secret-keys
#1734736734
find ~/.gnupg -type f -exec chmod 600 {} \;
#1734736741
find ~/.gnupg -type d -exec chmod 700 {} \;
#1734736879
gpg --card-status
#1734736936
cd .gnupg/
#1734736940
cat gpg-agent.conf 
#1734736948
pinentry-qt
#1734737067
gpg --export-ssh-key marco.difresco@gmail.com
#1734737185
ssh-add -L ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIITxDyWotHMOGtC05FenlNdUMl5TDXvVCploUT8C8TbQ openpgp:0xEA220145
#1734737204
ssh-add -L 
#1734737222
clear
#1734737225
gpg --export-ssh-key marco.difresco@gmail.com
#1734737227
ssh-add -L 
#1734737259
ssh git@github.com -vvv
#1734737285
exit
#1734739151
gpg --list-secret-keys
#1734739227
gpg --list-secret-keys --keyid-format LONG
#1734739266
gpg --card-status
#1734739352
gpg --export 569E589DDA95F84D09C711FEBF00744F3003041D
#1734739360
gpg --armor --export 569E589DDA95F84D09C711FEBF00744F3003041D
#1734740917
eix ms-fonts
#1734740920
eix fonts
#1734740956
su
#1734741295
vim /archive/zip/dxvk.txt
#1734742078
exit
#1734741774
eix wine-staging
#1734742082
exit
#1734743889
su
#1734744214
vim 
#1734744223
vim ~/.local/share/applications/curseforge.desktop
#1734745683
cd /games/blizzard/drive_c/Program\ Files\ \(x86\)/World\ of\ Warcraft/_retail_/
#1734745685
ls
#1734745706
ln -s /archive/Dropbox/Games/WoW/WTF ./
#1734745712
ln -s /archive/Dropbox/Games/WoW/Interface ./
#1734745721
ln -s /archive/Dropbox/Games/WoW/Screenshots ./
#1734746322
su
#1734782157
exit
#1734739751
eix krohnkite
#1734739879
ls /archive/
#1734740077
eix icc
#1734740097
systemctl status colord
#1734740109
emerge media-libs/icc-profiles-openicc
#1734740116
su
#1734740728
eix wine-staging
#1734740770
cat /archive/scripts/lotro-plugin 
#1734740811
export WINEPREFIX=/games/blizzard
#1734740821
su
#1734740848
wine --version
#1734740859
winetricks corefonts
#1734741016
rm -r /games/blizzard/
#1734741046
eix dxvk
#1734741069
su
#1734742268
export WINEPREFIX=/games/blizzard
#1734742320
wine /archive/zip/Battle.net-Setup.exe 
#1734742631
rm -r /games/blizzard/
#1734742755
wine /archive/zip/Battle.net-Setup.exe 
#1734743433
cd /games/blizzard/drive_c/Program
#1734743443
cd /games/blizzard/drive_c/Program\ Files\ \(x86\)/World\ of\ Warcraft/_classic_era_/
#1734743444
ls
#1734743466
ln -s /archive/Dropbox/Games/WoW-Classic/Interface ./
#1734743473
ln -s /archive/Dropbox/Games/WoW-Classic/WTF ./
#1734743482
ln -s /archive/Dropbox/Games/WoW-Classic/Screenshots ./
#1734744254
/games/blizzard/drive_c/Program\ Files\ \(x86\)/World\ of\ Warcraft/CurseForge.AppImage 
#1734744257
clear
#1734744258
cd 
#1734744323
ls /archive/software/icons/curseforge.png 
#1734782178
exit
#1734783269
cputemp 
#1734783276
su
#1734790532
/archive/backup/kmymoney-backup 
#1734790552
cat /archive/backup/kmymoney-backup 
#1734790560
ls /archive/backup/mysql/
#1734790591
crontab  -e
#1734793135
su
#1734798837
exit
#1734797950
crontab -e
#1734798082
mount -t cifs -o noserverino,credentials=/archive/zip/credentials.txt,vers=3.0,domain=workgroup,sec=ntlmv2i,uid=1000,gid=1000,noauto,x-systemd.automount,actimeo=0 //192.168.0.12/Backup /archive/nas/backup
#1734798272
mount -t cifs -o noserverino,credentials=/archive/zip/credentials.txt,vers=3.0,domain=workgroup,sec=ntlmv2i,uid=1000,gid=1000,noauto,actimeo=0 //192.168.0.12/Backup /archive/nas/backup
#1734798284
mount -t cifs -o noserverino,credentials=/archive/zip/credentials.txt,vers=3.0,domain=workgroup,sec=ntlmv2i,uid=1000,gid=1000 //192.168.0.12/Backup /archive/nas/backup
#1734798302
mount -t cifs -o credentials=/archive/zip/credentials.txt,vers=3.0,domain=workgroup,sec=ntlmv2i,uid=1000,gid=1000 //192.168.0.12/Backup /archive/nas/backup
#1734798368
mount  -o credentials=/archive/zip/credentials.txt,vers=3.0,domain=workgroup,sec=ntlmv2i,uid=1000,gid=1000 //192.168.0.12/Backup /archive/nas/backup
#1734798380
mount  -o credentials=/archive/zip/credentials.txt //192.168.0.12/Backup /archive/nas/backup
#1734798935
ls /archive/nas/backup/
#1734798947
mount  /archive/nas/backup
#1734799054
su
#1734799224
mount  /archive/nas/backup
#1734799265
su
#1734799297
mount  /archive/nas/backup
#1734799445
eix cifs-utils
#1734799585
cat /etc/group
#1734799763
mount -v  /archive/nas/backup
#1734799941
mount  -o credentials=/archive/zip/credentials.txt //192.168.0.12/Backup /archive/nas/backup
#1734799951
su
#1734800320
vim ~/.pam_mount.conf.xml
#1734800342
ls /archive/backup/registrations/nas-credentials.txt 
#1734800347
vim ~/.pam_mount.conf.xml
#1734800453
mount  -o credentials=/archive/zip/credentials.txt //192.168.0.12/Backup /archive/nas/backup
#1734800494
cat /etc/fstab 
#1734800552
cat /etc/groups
#1734800553
cat /etc/group
#1734800574
cat /etc/group | grep mount
#1734800603
su
#1734800766
mount  -o credentials=/archive/zip/credentials.txt //192.168.0.12/Backup /archive/nas/backup
#1734800774
mount -v  /archive/nas/backup
#1734800904
su
#1734801247
sudo mount  /archive/nas/backup
#1734801262
umount /archive/nas/backup
#1734801269
umount umount /archive/nas/backup
#1734801273
sudo umount /archive/nas/backup
#1734801281
su
#1734801382
exit
#1734801389
sudo mount  /archive/nas/backup
#1734801409
su
#1734801493
sudo mount  /archive/nas/backup
#1734801506
exit
#1734801511
su
#1734801656
sudo mount  /archive/nas/backup
#1734801671
mount  -o credentials=/archive/zip/credentials.txt //192.168.0.12/Backup /archive/nas/backup
#1734801675
sudo mount  -o credentials=/archive/zip/credentials.txt //192.168.0.12/Backup /archive/nas/backup
#1734801692
sudo mount  -o credentials=/archive/zip/nas-credentials.txt //192.168.0.12/Backup /archive/nas/backup
#1734801706
exit
#1734802427
ls /archive/scripts/
#1734802448
cp /archive/scripts/ascension /archive/backup/scripts/backup.sh
#1734802456
vim /archive/backup/scripts/backup.sh
#1734802586
exit
#1734801721
sudo mount.cifs -o credentials=/archive/zip/nas-credentials.txt //192.168.0.12/Backup /archive/nas/backup
#1734801740
sudo mount.cifs  /archive/nas/backup
#1734801767
sudo mount.cifs -o credentials=/archive/backup/registrations/nas-credentials.txt //192.168.0.12/Backup /archive/nas/backup
#1734801773
ls /archive/nas/backup/
#1734801814
ls
#1734801820
cp LICENSE /archive/nas/backup/
#1734801830
sudo umount /archive/nas/backup/
#1734801850
cat /etc/fstab 
#1734801864
noserverino,credentials=/archive/backup/registrations/nas-credentials.txt,vers=3.0,domain=workgroup,sec=ntlmv2i,file_mode=0777,dir_mode=0777,uid=1000,gid=1000
#1734801889
sudo mount.cifs -o noserverino,credentials=/archive/backup/registrations/nas-credentials.txt,vers=3.0,domain=workgroup,sec=ntlmv2i,file_mode=0777,dir_mode=0777,uid=1000,gid=1000 //192.168.0.12/Backup /archive/nas/backup
#1734801894
cp LICENSE /archive/nas/backup/
#1734801985
rsync -a /archive/backup/ /archive/nas/backup/
#1734802483
sudo /usr/sbin/mount.cifs -o noserverino,credentials=/archive/backup/registrations/nas-credentials.txt,vers=3.0,domain=workgroup,sec=ntlmv2i,file_mode=0777,dir_mode=0777,uid=1000,gid=1000 //192.168.0.12/Backup /archive/nas/backup
#1734802626
rsync -a /archive/backup/ /archive/nas/backup/
#1734802640
sudo /usr/sbin/umount /archive/nas/backup
#1734802734
cd /archive/backup/
#1734802734
/usr/bin/git add .
#1734802734
/usr/bin/git commit -am "Catch-all changes on `date +%d\ %m\ %Y`."
#1734802734
/usr/bin/git push
#1734802749
ls
#1734802805
cd ..
#1734802816
cp -r backup exbackup
#1734802832
git clone git@bitbucket.org:marcodifresco/misc-backup.git -o backup
#1734803244
cd /archive/backup/
#1734803244
/usr/bin/git add .
#1734803245
/usr/bin/git commit -am "Catch-all changes on `date +%d\ %m\ %Y`."
#1734803245
/usr/bin/git push
#1734803253
[200~  git config --global user.email "you@example.com"
#1734803257
~
#1734803270
git config --global user.email "marco.difresco@gmail.com"
#1734803283
git config --global user.name "Marco Di Fresco"
#1734803291
/usr/bin/git add .
#1734803303
cd /archive/backup/
#1734803303
/usr/bin/git add .
#1734803303
/usr/bin/git commit -am "Catch-all changes on `date +%d\ %m\ %Y`."
#1734803304
/usr/bin/git push
#1734803354
rm -r teamspeak/client-config/.ts3client/logs/ts3client_2023-*
#1734803517
cd 
#1734803519
sudo /usr/sbin/mount.cifs -o noserverino,credentials=/archive/backup/registrations/nas-credentials.txt,vers=3.0,domain=workgroup,sec=ntlmv2i,file_mode=0777,dir_mode=0777,uid=1000,gid=1000 //192.168.0.12/Documents /archive/nas/documents
#1734803561
sudo /usr/sbin/umount /archive/nas/documents
#1734803595
cd /archive/documents/
#1734803595
/usr/bin/git add .
#1734803596
/usr/bin/git commit -am "Catch-all changes on `date +%d\ %m\ %Y`."
#1734803600
/usr/bin/git push
#1734804263
su
#1734806351
exit
#1734807313
su
#1734808061
exit
