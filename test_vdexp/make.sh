#export LD_LIBRARY_PATH="/opt/intel/composer_xe_2013_sp1.2.144/mkl/lib/intel64":"/home/nebula/openmpi/lib:/opt/intel/composer_xe_2013_sp1.2.144/compiler/lib/intel64:/opt/intel/composer_xe_2013_sp1.2.144/mpirt/lib/intel64:/opt/intel/composer_xe_2013_sp1.2.144/ipp/../compiler/lib/intel64:/opt/intel/composer_xe_2013_sp1.2.144/ipp/lib/intel64:/opt/intel/composer_xe_2013_sp1.2.144/compiler/lib/intel64:/opt/intel/composer_xe_2013_sp1.2.144/mkl/lib/intel64:/opt/intel/composer_xe_2013_sp1.2.144/tbb/lib/intel64/gcc4.4":"/usr/lib"; icc   -w -vec-report0 -I/opt/intel/composer_xe_2013_sp1.2.144/mkl/include ./test_vdexp.c -Wl,--start-group "/opt/intel/composer_xe_2013_sp1.2.144/mkl/lib/intel64"/libmkl_intel_lp64.a "/opt/intel/composer_xe_2013_sp1.2.144/mkl/lib/intel64"/libmkl_intel_thread.a "/opt/intel/composer_xe_2013_sp1.2.144/mkl/lib/intel64"/libmkl_core.a -Wl,--end-group -L"/opt/intel/composer_xe_2013_sp1.2.144/mkl/../compiler/lib/intel64" -liomp5 -lm -ldl -lpthread

#icc   -w -vec-report0 ./test_vdexp.c \
#    -Wl,--start-group "/opt/intel/composer_xe_2013_sp1.2.144/mkl/lib/intel64"/libmkl_intel_lp64.a "/opt/intel/composer_xe_2013_sp1.2.144/mkl/lib/intel64"/libmkl_intel_thread.a "/opt/intel/composer_xe_2013_sp1.2.144/mkl/lib/intel64"/libmkl_core.a \
#    -Wl,--end-group -L"/opt/intel/composer_xe_2013_sp1.2.144/mkl/../compiler/lib/intel64" -liomp5 -lm -ldl -lpthread

icc -w -vec-report0 ./test_vdexp.c \
    -liomp5 -lm -ldl -lpthread \
    -mkl=sequential


