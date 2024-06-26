cmake_minimum_required(VERSION 3.16.3)

project(qjsonrpc)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_AUTOMOC ON)

find_package(QT NAMES Qt6 Qt5 REQUIRED COMPONENTS Core)
find_package(Qt${QT_VERSION_MAJOR} COMPONENTS Core Network REQUIRED)

file(GLOB SOURCES
    libsrc/libQJsonRPC/*.cpp
    libsrc/libQJsonRPC/Private/*.cpp
    libsrc/libQJsonRPC/Private/http*/http*.c
)

file(GLOB HEADERS
    libsrc/libQJsonRPC/*.h
    libsrc/libQJsonRPC/Private/*.h
    libsrc/libQJsonRPC/Private/http*/http*.h
)

add_library(qjsonrpc STATIC ${SOURCES} ${HEADERS})

target_include_directories(qjsonrpc PUBLIC
    libsrc
    libsrc/libQJsonRPC
    libsrc/libQJsonRPC/Private
    libsrc/libQJsonRPC/Private/http-parser
)

target_link_libraries(qjsonrpc Qt${QT_VERSION_MAJOR}::Core Qt${QT_VERSION_MAJOR}::Network)



