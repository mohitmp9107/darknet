@echo off

set prev_path=%path%

if exist cuda_9_cudnn_7.bat call cuda_9_cudnn_7.bat
if exist opencv_3_3_prebuilt.bat call opencv_3_3_prebuilt.bat

darknet.exe detector train data/voc.data yolo-voc.cfg darknet19_448.conv.23

set path=%prev_path%
