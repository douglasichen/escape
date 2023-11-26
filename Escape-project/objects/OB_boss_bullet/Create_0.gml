if x < OB_boss1.bbox_left {
	direction = 180
	image_angle = 180
}
if x > OB_boss1.bbox_right {
	direction = 0
	image_angle = 0
}
if y < OB_boss1.bbox_top {
	direction = 90
	image_angle = 90
}

speed = 3