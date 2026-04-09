cmake_minimum_required(VERSION 3.22)
project(DReyeGemmaAndroidJNI)

# Set up global C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# JNI bridge library
add_library(dreye_ai SHARED jni_bridge.cpp ../core/inference_engine.cpp)

# Link against Android standard libraries and Gemma core
target_link_libraries(dreye_ai PRIVATE log android gemma)

# Medical Edge Security / Safety Flags
# Adding strict compilation flags for medical device software stability
target_compile_options(dreye_ai PRIVATE 
    -fPIE -fstack-protector-strong -O3 -Wall -Wextra -Werror)
