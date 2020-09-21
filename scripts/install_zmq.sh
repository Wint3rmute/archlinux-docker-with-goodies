# Install libzmq

cd /tmp

git clone https://github.com/zeromq/libzmq.git
cd libzmq

mkdir build
cd build

cmake ..
make
make install

# Install cpp headers for zmq

cd /tmp

git clone https://github.com/zeromq/cppzmq.git
cd cppzmq

mkdir build
cd build

cmake ..
make
make install