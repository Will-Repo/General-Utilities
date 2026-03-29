cmake_minimum_required(VERSION 3.13)
set(CMAKE_CXX_STANDARD 17)  
set(CMAKE_CXX_STANDARD_REQUIRED ON)  

project(General-Utils)

include(Dependencies.cmake)

file(GLOB GENERAL_SRC
    src/*.cpp
    ${whereami_SOURCE_DIR}/src/whereami.c
)

add_library(General-Utils STATIC ${GENERAL_SRC})

#target_link_libraries(core PUBLIC 
#    glm glew_s glfw OpenAL freetype
#)


target_include_directories(general_utils PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}/src
)

