swig -python trace_skeleton.i

baseDir=/Users/freder/miniconda3/envs/landscape/

gcc -Wall -O3 \
	-c trace_skeleton.c trace_skeleton_wrap.c \
	-I $baseDir/include/python3.8/

gcc $(python3-config --ldflags) \
	-I $baseDir/lib/libpython3.8.dylib \
	-undefined dynamic_lookup -dynamiclib *.o \
	-o _trace_skeleton.so

# quick tests
# python3 -i -c "import trace_skeleton; trace_skeleton.trace('\0\0\0\1\1\1\0\0\0',3,3); print(trace_skeleton.len_polyline());"
# python3 -i -c "import trace_skeleton; print(trace_skeleton.from_list([0,0,0,1,1,1,0,0,0],3,3))"
# python3 example.py
