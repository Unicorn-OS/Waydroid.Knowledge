# Doc: https://docs.waydro.id/debugging/troubleshooting

Gemini A.I.:
1. Stop the Waydroid container:
```
systemctl stop waydroid-container.service
```
2. Remove Waydroid data:
```
sudo rm -rf /var/lib/waydroid
sudo rm -rf /home/.waydroid
sudo rm -rf ~/waydroid
sudo rm -rf ~/.share/waydroid
sudo rm -rf ~/.local/share/applications/*aydroid*
```
3. Reinitialize Waydroid:
```
waydroid init -f
# or with custom images: waydroid init -f -i /usr/share/waydroid-extra/images
```
4. Start the Waydroid container:
```
systemctl start waydroid-container.service
```

sch: https://www.google.com/search?q=waydroid+reset
