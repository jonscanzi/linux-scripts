rm -rf yuzu-mainline
sudo apt install -y libsdl2-2.0-0 libsdl2-dev qtbase5-dev libqt5opengl5-dev build-essential libboost-all-dev cmake clang libc++-dev
git clone --recursive https://github.com/yuzu-emu/yuzu-mainline
cd yuzu-mainline && mkdir build && cd build && cmake .. -DCMAKE_BUILD_TYPE=Release && make -j16
