if(NOT HOST_ARCH)
  message(SEND_ERROR "-DHOST_ARCH required to be specified")
endif()

list(APPEND CMAKE_TRY_COMPILE_PLATFORM_VARIABLES
  HOST_ARCH
  )

SET(CMAKE_SYSTEM_NAME Windows)
set(COMPILER_PREFIX "${HOST_ARCH}-w64-mingw32")
find_program(CMAKE_RC_COMPILER NAMES ${COMPILER_PREFIX}-windres)
find_program(CMAKE_C_COMPILER NAMES ${COMPILER_PREFIX}-gcc)
find_program(CMAKE_CXX_COMPILER NAMES ${COMPILER_PREFIX}-g++)

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)