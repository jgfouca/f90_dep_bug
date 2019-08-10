cmake_minimum_required(VERSION 3.9)
cmake_policy(SET CMP0057 NEW)

project(E3SM Fortran)

add_library(demofail ice_state.F90 ice_flux.F90)
