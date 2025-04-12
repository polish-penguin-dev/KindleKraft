#!/bin/bash
w() {
    sleep 0.3
}

eips 1 26 "===KindleKraft Extraction==="
w
eips 1 27 "By Penguins184"
w
eips 1 28 "Checking Archive..."

if ls -d /mnt/us/kindlekraft-* 2>/dev/null | grep -qv "\.tar\.gz"; then
    eips 1 29 "KindleKraft Already Installed!"
    exit
fi

if [ -f /mnt/us/kindlekraft-*.tar.gz ]; then
    w
    eips 1 29 "Beginning Installation..."
    w
    eips 1 30 "Extracting!"
    cd /mnt/us
    tar -zxvf kindlekraft-*.tar.gz
    mntroot rw
    cp /mnt/us/kindlekraft-*/kindlekraft /usr/bin/
    chmod +x /usr/bin/kindlekraft
    chmod +x /mnt/us/kindlekraft-*/Jdk8-Arm32-SF/bin/*
    mntroot ro
    eips 1 31 "Completed!"
    eips 1 32 "You May Now Exit The Install Wizard!"
    eips 1 33 "Run Launch In KUAL To Begin."
    w
    exit
else
    w
    eips 1 34 "Oops! KindleKraft Archive Not Found!"
    exit
fi
