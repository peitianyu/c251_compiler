if [ ! -d "build" ]; then
    mkdir build
fi

cd $1
cp ../build.sh .
./build.sh
cd ..