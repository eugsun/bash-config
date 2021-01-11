VER=$(date -I)

CFLAGS="-O2" CPPFLAGS=$CFLAGS ./configure \
    --prefix=$HOME/Apps/emacs-$VER --enable-gcc-warnings=warn-only \
    --with-mailutils --with-nativecomp || \
        { echo "***CONFIGURE FAILED!***"; exit 1; }

NATIVE_FAST_BOOT=1 make -j4
make install
