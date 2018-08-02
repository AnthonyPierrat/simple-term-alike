cmake_minimum_required(VERSION 3.8)
project(shell)

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES main.c colors.h line.c execute.c prompt.c handler.h handler.c)
add_executable(shell ${SOURCE_FILES})