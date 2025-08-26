https://docs.waydro.id/faq/google-play-certification


in Linux:
```
sudo waydroid shell

ANDROID_RUNTIME_ROOT=/apex/com.android.runtime ANDROID_DATA=/data ANDROID_TZDATA_ROOT=/apex/com.android.tzdata ANDROID_I18N_ROOT=/apex/com.android.i18n sqlite3 /data/data/com.google.android.gsf/databases/gservices.db "select * from main where name = \"android_id\";"
```

in Browser:  
https://www.google.com/android/uncertified

# Discuss:
https://www.reddit.com/r/waydroid/comments/162iso7/how_to_fix_this_device_isnt_play_protect/

# info:
- https://g.co/AndroidCertifiedDevice = 
https://support.google.com/android/answer/10248227
