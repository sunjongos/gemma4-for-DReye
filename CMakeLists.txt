cmake_minimum_required(VERSION 3.22)
project(DReyeGemmaEdgeAI VERSION 1.0)

# Set up global C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# DReye executable
add_executable(drey_ai_edge main.cpp)

# Include the gemma.cpp subdirectory
add_subdirectory(third_party/gemma.cpp)

# Link gemma.cpp target (the core inference library)
target_link_libraries(drey_ai_edge PRIVATE gemma)

# Medical CAD Flags for stability and safe execution
add_compile_options(-Wall -Wextra -Werror)

# Include Android Subsystem (JNI Bridge) if building for Android natively or via NDK
if (ANDROID OR DREYE_BUILD_ANDROID)
    add_subdirectory(android)
endif()
