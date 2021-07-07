cmake_minimum_required(VERSION 3.5)
set(CMAKE_EXPORT_COMPILE_COMMANDS "ON")
set(CMAKE_BUILD_TYPE "Debug")

project(NewProject VERSION 0.0.1)


add_executable(NewProject main.cpp)

add_custom_target(
  test
  DEPENDS NewProject
  COMMAND ./NewProject < input.txt
  )
