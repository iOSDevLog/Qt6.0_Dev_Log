cmake_minimum_required(VERSION 3.5)

project(FFmpeg_6_0_Cmake_Cpp LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)


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

add_executable(FFmpeg_6_0_Cmake_Cpp main.cpp)

# 链接库文件
target_link_libraries(FFmpeg_6_0_Cmake_Cpp ${FFMPEG_LIBRARIES})

install(TARGETS FFmpeg_6_0_Cmake_Cpp
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
