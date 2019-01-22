#clone data generator kit
git clone https://github.com/gregrahn/tpch-kit.git

cd tpch-kit/dbgen
make OS=LINUX

cd $HOME
mkdir emrdata

export DSS_PATH=$HOME/emrdata
cd tpch-kit/dbgen

#It may take some time(approx. 5 min)
./dbgen -v -T o -s 10
