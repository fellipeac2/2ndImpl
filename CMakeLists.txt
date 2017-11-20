cmake_minimum_required(VERSION 3.8)
project(2ndImpl_perceptron)
project(2ndImpl_adaline)

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES_perceptron perceptron.cpp)
set(SOURCE_FILES_adaline adaline.cpp)
add_executable(2ndImpl_perceptron ${SOURCE_FILES_perceptron})
add_executable(2ndImpl_adaline ${SOURCE_FILES_adaline})