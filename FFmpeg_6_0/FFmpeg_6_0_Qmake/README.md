## 1. CMake Demo

1. New Project
2. Non-Qt Project - Plain C Application
3. Build System - CMake

修改 CMakeLists.txt

```
# 设置FFmpeg的路径变量
set(FFMPEG_INCLUDE_DIRS
    D:/Software/FFmpeg/ffmpeg-6.0-full_build-shared/include
)
set(FFMPEG_LIBRARIES
    D:/Software/FFmpeg/ffmpeg-6.0-full_build-shared/lib/avcodec.lib
    D:/Software/FFmpeg/ffmpeg-6.0-full_build-shared/lib/avdevice.lib
    D:/Software/FFmpeg/ffmpeg-6.0-full_build-shared/lib/avfilter.lib
    D:/Software/FFmpeg/ffmpeg-6.0-full_build-shared/lib/avformat.lib
    D:/Software/FFmpeg/ffmpeg-6.0-full_build-shared/lib/avutil.lib
    D:/Software/FFmpeg/ffmpeg-6.0-full_build-shared/lib/avcodec.lib
    D:/Software/FFmpeg/ffmpeg-6.0-full_build-shared/lib/postproc.lib
    D:/Software/FFmpeg/ffmpeg-6.0-full_build-shared/lib/swresample.lib
    D:/Software/FFmpeg/ffmpeg-6.0-full_build-shared/lib/swscale.lib
)

# 添加FFmpeg的头文件目录
include_directories(${FFMPEG_INCLUDE_DIRS})

add_executable(Qt6_FFmpeg6_Cmake main.c)

# 链接库文件
target_link_libraries(Qt6_FFmpeg6_Cmake ${FFMPEG_LIBRARIES})
```

