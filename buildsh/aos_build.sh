MY_DIR=/Users/syl/Dev/rust/rust-bevy-baios
LIBS=$MY_DIR/aos/app/src/main/jniLibs
FILE_NM=librust_bevy_baios.so
cd ../
cargo build --target aarch64-linux-android --release
cargo build --target armv7-linux-androideabi --release
cargo build --target i686-linux-android --release
rm -rf $LIBS
mkdir $LIBS
mkdir $LIBS/arm64-v8a
mkdir $LIBS/armeabi-v7a
mkdir $LIBS/x86
cp $MY_DIR/target/aarch64-linux-android/release/$FILE_NM $LIBS/arm64-v8a/$FILE_NM
cp $MY_DIR/target/armv7-linux-androideabi/release/$FILE_NM $LIBS/armeabi-v7a/$FILE_NM
cp $MY_DIR/target/i686-linux-android/release/$FILE_NM $LIBS/x86/$FILE_NM