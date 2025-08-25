let image &str = "/var/lib/waydroid/images"
let mirror &str = "~/.uni/android/waydroid/cache\|"

backup(){
  "cp {} {}", image, mirror
}
