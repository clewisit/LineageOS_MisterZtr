repo sync --force-sync --optimized-fetch --no-tags --no-clone-bundle --prune -j4
bash LineageOS_gsi/patches/apply-patches.sh .
cd treble_app
./build.sh
cd ..
source build/envsetup.sh
breakfast lineage_arm64_bvN4-bp4a-userdebug
make systemimage -j$(nproc --all)
