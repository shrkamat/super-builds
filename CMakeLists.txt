cmake_minimum_required(VERSION 3.19)

project(superbuild LANGUAGES CXX)

include(ExternalProject)

# ExternalProject_Add(expat
#             URL https://github.com/libexpat/libexpat/releases/download/R_2_2_10/expat-2.2.10.tar.gz
#             CONFIGURE_COMMAND ./configure --prefix=${CMAKE_BINARY_DIR} --disable-shared --enable-static
#             BUILD_COMMAND make
#             BUILD_IN_SOURCE 1
#         )

ExternalProject_Add(expat
            URL https://github.com/libexpat/libexpat/releases/download/R_2_2_10/expat-2.2.10.tar.gz
            CMAKE_ARGS
                -DCMAKE_INSTALL_PREFIX:PATH=${CMAKE_INSTALL_PREFIX}
                -DCMAKE_C_COMPILER=${CMAKE_C_COMPILER}
                -DCMAKE_CXX_COMPILER=${CMAKE_CXX_COMPILER}
            )
