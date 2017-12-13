@echo off

set prev_path=%path%

if exist cuda_9_cudnn_7.bat call cuda_9_cudnn_7.bat
if exist opencv_3_3_prebuilt.bat call opencv_3_3_prebuilt.bat

darknet.exe detector test data/coco.data yolo.cfg yolo.weights -i 0 -thresh 0.3

set path=%prev_path%


pause