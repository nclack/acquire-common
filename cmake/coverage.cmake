if ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "GNU")
    message("GCC")
    add_compile_options(-fdiagnostics-color=always)
    add_compile_options(--coverage)
elseif ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "Clang")
    message("Clang")
    add_compile_options(-fcolor-diagnostics)
    add_compile_options(--coverage -fprofile-instr-generate -fcoverage-mapping)
    add_link_options(-fprofile-instr-generate)
    link_libraries(clang_rt.profile-x86_64)
endif ()