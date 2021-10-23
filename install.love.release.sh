sudo apt install build-essential libreadline-dev unzip love libzip-dev
wget http://www.lua.org/ftp/lua-5.3.5.tar.gz
tar -zxf lua-5.3.5.tar.gz
cd lua-5.3.5
make linux test
sudo make install
wget https://luarocks.org/releases/luarocks-3.3.1.tar.gz
tar -zxf luarocks-3.3.1.tar.gz
cd luarocks-3.3.1
./configure --with-lua-include=/usr/local/include
make
sudo make install
sudo luarocks install love-release
rm -rf lua-5.3.5
rm -rf luarocks-3.3.1
rm -rf lua-5.3.5.tar.gz
rm -rf luarocks-3.3.1.tar.gz
