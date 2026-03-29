include(FetchContent)


find_package(whereamit QUIET)
if (NOT whereami_FOUND)
    # whereami - latest - gets exe file location.
    FetchContent_Declare(
        whereami
        GIT_REPOSITORY	https://github.com/gpakosz/whereami.git
        GIT_TAG 	dcb52a058dc14530ba9ae05e4339bd3ddfae0e0e
        GIT_SHALLOW TRUE
    )
    FetchContent_MakeAvailable(whereami)
    set(WHEREAMI_INCLUDE_DIR ${whereami_SOURCE_DIR}/src)
    #whereami doesn't define its cmake target, so must do manually, but as its a single file library, i will just add it as a source for the core library/
endif()
