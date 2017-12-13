@echo off

set prev_path=%path%

if exist cuda_9_cudnn_7.bat call cuda_9_cudnn_7.bat
if exist opencv_3_3_prebuilt.bat call opencv_3_3_prebuilt.bat

darknet.exe detector demo cfg/combine9k.data yolo9000.cfg yolo9000.weights street4k.mp4 -out_filename res.avi

set path=%prev_path%


pause