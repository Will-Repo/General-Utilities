#include <string>
#pragma once
std::string getExecutablePath();

//Paths are relative to the executable path.
struct FilePaths {
    //Paths are from the executable path. By defualt, this assumes the executable is in the build/app directory.
    std::string srcPath = "../../app/src";
    std::string shadersPath = "../../app/shaders";
    std::string fontsPath = "../../app/fonts";
    std::string assetsPath = "../../app/assets";
    std::string corePath = "../../core";
    std::string executablePath = getExecutablePath();
};
