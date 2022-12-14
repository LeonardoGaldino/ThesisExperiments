
./dist-newstyle/build/x86_64-linux/ghc-$GHC_V/tg-0.1.0.0/x/tg/build/tg/tg $1 $2 $3 $4 $5
exec_time=$(cat tg.prof | grep "total time"  | cut -d"=" -f2 | cut -d"s" -f1 | sed "s/ //g" | sed "s/,//g")
exec_memory=$(cat tg.prof | grep "total alloc" | cut -d"=" -f2 | cut -d"b" -f1 | sed "s/ //g" | sed "s/,//g")
exec_energy_pkg=$(cat tg.prof | grep "total energy pkg" | cut -d"=" -f2 | cut -d"j" -f1 | sed "s/ //g" | sed "s/,//g")
exec_energy_dram=$(cat tg.prof | grep "total energy dram" | cut -d"=" -f2 | cut -d"j" -f1 | sed "s/ //g" | sed "s/,//g")
echo "$exec_time,$exec_memory,$exec_energy_pkg,$exec_energy_dram"
