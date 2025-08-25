sudo btrfs sub create /compile


Restore(){
    btrfs sub delete /compile
    btrfs sub snap /root/patched /compile
}