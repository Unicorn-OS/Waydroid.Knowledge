import os, pathlib, shutil, glob

waydroid_root_dir = "/var/lib/waydroid"
waydroid_cache = f"{waydroid_root_dir}/cache_http"
my_bac = f"{pathlib.Path.home()}/.uni/android/waydroid/bac"

def make_bac_dir():
    os.makedirs(my_bac, exist_ok=True)


def backup_cache():
    cache = waydroid_cache
    bac = f"{my_bac}/"

    pattern = "*"
    files = glob.glob(f"{cache}/*")

    make_bac_dir()
    for file in files:
        file_name = os.path.basename(file)
        shutil.copyfile(file, bac + file_name)
        print('Moved:', file)

if __name__ == '__main__':
    backup_cache()