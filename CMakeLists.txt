cmake_minimum_required(VERSION 3.23.5)

project(templae VERSION 0.0.1)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_FLAGS "-Wall -Wno-deprecated-declarations -Wno-unused-but-set-variable")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g")
set(CMAKE_SHARED_LINKER_FLAGS "-pg")
set(CMAKE_EXPORT_COMPILE_COMMANDSo ON)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

# find_package(<package> CONFIG REQUIRED)

add_executable(${PROJECT_NAME})

file(GLOB_RECURSE SOURCES src/*.cpp)

target_sources(
  ${PROJECT_NAME}
  PRIVATE
  ${SOURCES}
)
target_include_directories(
  ${PROJECT_NAME}
  PRIVATE
  src
)
target_link_libraries(
  ${PROJECT_NAME}
  PRIVATE
  mcap::mcap
)
