# source: https://github.com/Unicorn-OS/Waydroid/tree/main/.graph/Addon%3A/Waydroid%20Extras%20Script
# first: ResetWaydroid()

# Clean install:
sudo waydroid init -f

git clone git@github.com:casualsnek/waydroid_script.git
cd waydroid_script/
python3 -m venv venv
venv/bin/pip install -r requirements.txt
sudo venv/bin/python3 main.py
sudo venv/bin/python3 main.py install libndk
sudo venv/bin/python3 main.py install libhoudini

# Use Script's version of Google Apps
sudo venv/bin/python3 main.py install gapps

# start:
waydroid session start

sudo waydroid shell
# inside:
bases/gservices.db "select * from main where name = \"android_id\";"
