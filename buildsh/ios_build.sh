MY_DIR=/Users/syl/Dev/rust/rust-bevy-baios
LIBS=$MY_DIR/ios/ios/libs
FILE_NM=librust_bevy_baios.a
#aarch64-apple-ios or aarch64-apple-ios-sim
TARGET=aarch64-apple-ios-sim
cd ../
cargo build --target $TARGET --release
rm -rf $LIBS
mkdir $LIBS
cp $MY_DIR/target/$TARGET/release/$FILE_NM $LIBS/$FILE_NM