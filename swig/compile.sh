swig -python trace_skeleton.i

gcc -O3 -c trace_skeleton.c trace_skeleton_wrap.c -I/Users/freder/miniconda3/envs/landscape/include/python3.9/ \
	-Wall

gcc $(python3-config --ldflags) -undefined dynamic_lookup -dynamiclib *.o -o _trace_skeleton.so -I/Users/freder/miniconda3/envs/landscape/lib/libpython3.9.dylib

# quick tests
# python3 -i -c "import trace_skeleton; trace_skeleton.trace('\0\0\0\1\1\1\0\0\0',3,3); print(trace_skeleton.len_polyline());"
# python3 -i -c "import trace_skeleton; print(trace_skeleton.from_list([0,0,0,1,1,1,0,0,0],3,3))"
# python3 example.py
