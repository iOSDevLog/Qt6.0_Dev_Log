#include <iostream>
// 包含ffmpeg头文件
#ifdef __cplusplus // 就是告诉编译器，如果定义了__cplusplus(即如果是cpp文件)
extern "C" {
#include "libavutil/avutil.h"
#endif
#ifdef __cplusplus
}
#endif

int main()
{
    std::cout << "Hello FFMPEG, version is " << av_version_info() << std::endl;
    return 0;
}
