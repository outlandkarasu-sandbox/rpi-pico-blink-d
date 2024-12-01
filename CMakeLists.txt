cmake_minimum_required(VERSION 3.13)

# initialize the SDK based on PICO_SDK_PATH
set(PICO_BOARD pico_w) # 今回 RPi Pico Wなのでこちらを追加(RPi Picoの場合はpicoにする)
set(PICO_SDK_FETCH_FROM_GIT on)
include(pico_sdk_import.cmake)

project(rpi_pico_blink_d C CXX ASM)
set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

# initialize the Raspberry Pi Pico SDK
pico_sdk_init()

# rest of your project
add_executable(rpi_pico_blink_d)

target_link_libraries(rpi_pico_blink_d pico_stdlib)
target_link_libraries(rpi_pico_blink_d pico_cyw43_arch_none)
target_link_libraries(rpi_pico_blink_d ${CMAKE_CURRENT_SOURCE_DIR}/librpi_pico_blink_d.a)

pico_add_extra_outputs(rpi_pico_blink_d)
