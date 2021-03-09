from distutils.core import setup, Extension


extension = Extension(
	'_trace_skeleton',
	sources=[
		'trace_skeleton_wrap.c',
		'trace_skeleton.c'
	],
)

setup(
	name='trace_skeleton',
	# version='0.1',
	# author='SWIG Docs',
	# description='Simple swig example from docs',
	ext_modules=[extension],
	# py_modules=['example'],
)
