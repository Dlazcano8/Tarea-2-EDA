cmake_minimum_required(VERSION 3.10)
set(CMAKE_CXX_COMPILER "/usr/bin/g++")

project(imagepro VERSION 1.0 LANGUAGES CXX)

# Configurar el estándar de C++
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Incluir los archivos de encabezado y fuente
include_directories(include)
file(GLOB SOURCES "src/*.cpp")

# Crear el ejecutable a partir de todos los archivos fuente y el archivo principal imagepro.cpp
add_executable(imagepro imagepro.cpp ${SOURCES})

# Incluir directorios de encabezado
target_include_directories(imagepro PUBLIC ${PROJECT_SOURCE_DIR}/include)
