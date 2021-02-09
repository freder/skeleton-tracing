import trace_skeleton
import cv2
import random

for i in range(2000):
	im = cv2.imread("../test_images/opencv-thinning-src-img.png", 0)
	_, im = cv2.threshold(im, 128, 255, cv2.THRESH_BINARY)
	# cv2.imshow("", im);cv2.waitKey(0)
	polys = trace_skeleton.from_numpy(im)

print(polys)

# for line in polys:
# 	color = (200 * random.random(), 200 * random.random(), 200 * random.random())
# 	for i in range(0, len(line) - 1):
# 		cv2.line(
# 			im,
# 			(line[i][0], line[i][1]),
# 			(line[i + 1][0], line[i + 1][1]),
# 			color
# 		)

# cv2.imshow('', im)
# cv2.waitKey(0)
