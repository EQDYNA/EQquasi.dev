#! user/bin/bash 

module load netcdf
ml

cd src
make
cd ..
mkdir bin
mv src/eqquasi bin

export EQQUASIROOT=$(pwd)
export PATH=$(pwd)/bin:$PATH
export PATH=$(pwd)/scripts:$PATH

chmod -R 755 scripts
