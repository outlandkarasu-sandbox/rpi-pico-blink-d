cmake_minimum_required(VERSION 3.13...3.27)

# initialize the SDK based on PICO_SDK_PATH
set(PICO_SDK_FETCH_FROM_GIT 1)
include(pico_sdk_import.cmake)

project(rpi_pico_blink_d)

# initialize the Raspberry Pi Pico SDK
pico_sdk_init()

# rest of your project
