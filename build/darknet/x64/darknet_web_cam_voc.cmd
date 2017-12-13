# play video from Web-Camera number 0
@echo off

set prev_path=%path%

if exist cuda_9_cudnn_7.bat call cuda_9_cudnn_7.bat
if exist opencv_3_3_prebuilt.bat call opencv_3_3_prebuilt.bat

darknet.exe detector demo data/voc.data yolo-voc.cfg yolo-voc.weights -c 0

set path=%prev_path%


pause