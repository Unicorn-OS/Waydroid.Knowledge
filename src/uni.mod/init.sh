patch=uni.backup.patch

apply_patch(){
  cd $waydroid_dir
  git apply $patch
}

devel(){
  waydroid_dir=~/git/waydroid
  if [ -f $devel ]; then
    ln -sf `pwd`/uni $waydroid_dir/tools/
  fi

  ln -sf `pwd`/patch/${patch} $waydroid_dir/
  apply_patch
}

prod(){
  waydroid_dir=/usr/lib/waydroid
  ln -sf `pwd`/python/uni $waydroid_dir/tools/
  
  ln -sf `pwd`/patch/$patch $waydroid_dir/
  apply_patch
}

#prod
devel
