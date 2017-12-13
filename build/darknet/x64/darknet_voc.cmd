@echo off

set prev_path=%path%

if exist cuda_9_cudnn_7.bat call cuda_9_cudnn_7.bat
if exist opencv_3_3_prebuilt.bat call opencv_3_3_prebuilt.bat

darknet.exe detector test data/voc.data yolo-voc.cfg yolo-voc.weights 009460.jpg


darknet.exe detector test data/voc.data yolo-voc.cfg yolo-voc.weights -i 0 -thresh 0.1 dogr.jpg

set path=%prev_path%


pause