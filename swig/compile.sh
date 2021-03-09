swig -python trace_skeleton.i

baseDir=$HOME/miniconda3/envs/landscape/

gcc -Wall -O3 \
	-c trace_skeleton.c trace_skeleton_wrap.c \
	-I $baseDir/include/python3.8/

python setup.py build_ext --inplace

# platformSpecific=""
# if [ `uname -s` = "Darwin" ] ; then
# 	platformSpecific="-undefined dynamic_lookup -dynamiclib *.o"
# else
# 	platformSpecific="-shared"
# fi
# gcc $(python3-config --ldflags) \
# 	-I $baseDir/lib/libpython3.8.dylib \
# 	$platformSpecific \
# 	-o _trace_skeleton.so

# quick tests
# python3 -i -c "import trace_skeleton; trace_skeleton.trace('\0\0\0\1\1\1\0\0\0',3,3); print(trace_skeleton.len_polyline());"
# python3 -i -c "import trace_skeleton; print(trace_skeleton.from_list([0,0,0,1,1,1,0,0,0],3,3))"
# python3 example.py
