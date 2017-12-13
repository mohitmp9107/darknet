@echo off

set prev_path=%path%

if exist cuda_9_cudnn_7.bat call cuda_9_cudnn_7.bat
if exist opencv_3_3_prebuilt.bat call opencv_3_3_prebuilt.bat

darknet.exe classifier predict cfg/imagenet1k.data cfg/densenet201.cfg densenet201.weights

set path=%prev_path%

pause

REM Download weights for DenseNet201 and ResNet50 by this link: https://pjreddie.com/darknet/imagenet/