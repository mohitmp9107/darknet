@echo off

set prev_path=%path%

if exist python_2_7_64.bat call python_2_7_64.bat
if exist cuda_9_cudnn_7.bat call cuda_9_cudnn_7.bat
if exist opencv_3_3_prebuilt.bat call opencv_3_3_prebuilt.bat

darknet.exe create obj_detection labeling
rem echo %path%


set path=%prev_path%
rem echo %path%

pause