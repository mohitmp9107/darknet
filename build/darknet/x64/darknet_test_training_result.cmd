@echo off

set prev_path=%path%

if exist cuda_9_cudnn_7.bat call cuda_9_cudnn_7.bat
if exist opencv_3_3_prebuilt.bat call opencv_3_3_prebuilt.bat

darknet.exe detector test data/obj.data my-yolo-voc.2.0.cfg my-yolo-voc_600.weights "data/lNGtinB1LpZkaboE8EYtUIV1DbMydtbMSJUU0uERFKnVz0YK7vtidekvMNgk0kHp.jpg"

set path=%prev_path%


pause

