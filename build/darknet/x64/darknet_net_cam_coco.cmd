# Download for Android phone mjpeg-stream: IP Webcam / Smart WebCam
#
# Smart WebCam - preferably: https://play.google.com/store/apps/details?id=com.acontech.android.SmartWebCam
# IP Webcam: https://play.google.com/store/apps/details?id=com.pas.webcam
#
# Replace the address below, on shown in the phone application
@echo off

set prev_path=%path%

if exist cuda_9_cudnn_7.bat call cuda_9_cudnn_7.bat
if exist opencv_3_3_prebuilt.bat call opencv_3_3_prebuilt.bat

darknet.exe detector demo data/coco.data yolo.cfg yolo.weights http://192.168.0.80:8080/video?dummy=param.mjpg -i 0

set path=%prev_path%


pause