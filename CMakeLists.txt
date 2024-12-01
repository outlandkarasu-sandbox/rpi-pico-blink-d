cmake_minimum_required(VERSION 3.13...3.27)

# initialize the SDK based on PICO_SDK_PATH
set(PICO_SDK_FETCH_FROM_GIT 1)
include(pico_sdk_import.cmake)

project(rpi_pico_blink_d)

# initialize the Raspberry Pi Pico SDK
pico_sdk_init()

# rest of your project

add_executable(rpi_pico_blink_d
    blink.c
    )
target_compile_definitions(rpi_pico_blink_d PUBLIC CYW43_WL_GPIO_LED_PIN)

target_link_libraries(rpi_pico_blink_d pico_stdlib)
target_link_libraries(rpi_pico_blink_d pico_cyw43_arch_none)

pico_add_extra_outputs(rpi_pico_blink_d)
