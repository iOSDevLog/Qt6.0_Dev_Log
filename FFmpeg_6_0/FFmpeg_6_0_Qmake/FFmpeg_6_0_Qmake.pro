TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += \
        main.c

win32 {
INCLUDEPATH += D:/Software/FFmpeg/ffmpeg-6.0-full_build-shared/include
LIBS += D:/Software/FFmpeg/ffmpeg-6.0-full_build-shared/lib/avformat.lib   \
          D:/Software/FFmpeg/ffmpeg-6.0-full_build-shared/lib/avcodec.lib    \
          D:/Software/FFmpeg/ffmpeg-6.0-full_build-shared/lib/avdevice.lib   \
          D:/Software/FFmpeg/ffmpeg-6.0-full_build-shared/lib/avfilter.lib   \
          D:/Software/FFmpeg/ffmpeg-6.0-full_build-shared/lib/avutil.lib     \
          D:/Software/FFmpeg/ffmpeg-6.0-full_build-shared/lib/postproc.lib   \
          D:/Software/FFmpeg/ffmpeg-6.0-full_build-shared/lib/swresample.lib \
          D:/Software/FFmpeg/ffmpeg-6.0-full_build-shared/lib/swscale.lib
}
