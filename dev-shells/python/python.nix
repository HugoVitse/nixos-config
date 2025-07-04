{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {

  


  # Add packages to the shell environment
  LD_LIBRARY_PATH="${pkgs.zlib}/lib:${pkgs.gcc.cc.lib}/lib:${pkgs.stdenv.cc.cc.lib}/lib:$LD_LIBRARY_PATH";
  buildInputs = [
    pkgs.python312Full
    pkgs.python2
    pkgs.gcc.cc.lib   

    pkgs.glfw
    pkgs.python312Packages.pip          # Python 3 interpreter
    pkgs.python312Packages.virtualenv  # Virtual environment tool
    pkgs.python312Packages.libpcap
    pkgs.python312Packages.setuptools
    pkgs.python312Packages.wheel
    pkgs.python312Packages.glfw
    pkgs.python312Packages.eigenpy      # NumPy for numerical computations

    pkgs.python312Packages.numpy        # NumPy for numerical computations


    pkgs.python312Packages.pyopengl          # Python 3 interpreter

    pkgs.python312Packages.tkinter
    pkgs.zlib
    pkgs.glew
    pkgs.libuvc
    pkgs.eigen
    pkgs.glm
    pkgs.libGL
    pkgs.glib
    pkgs.glfw-wayland
    pkgs.libxkbcommon
    pkgs.libglibutil
    pkgs.pkg-config
    pkgs.gnumake 
    pkgs.cmake
    pkgs.libjpeg
    pkgs.ffmpeg_4
    pkgs.opencv
    pkgs.gnumake 
    pkgs.cmake
    pkgs.gpp
    pkgs.pkg-config
    pkgs.libGLU
    pkgs.freeglut
    pkgs.mesa
    pkgs.libgcc
    pkgs.boost
    pkgs.freeglut
    pkgs.xorg.libX11
    pkgs.xorg.libXext
    pkgs.xorg.libXxf86vm
    pkgs.xorg.libXi
    pkgs.portaudio
    pkgs.ssdeep
  ];

  # Optional: Add a custom environment message
  shellHook = ''
    export _GLFW_WAYLAND=1
    export SDL_VIDEODRIVER=wayland
    export NIXPKGS_ALLOW_INSECURE=1
    export PYOPENGL_PLATFORM=x11
    export CMAKE_PREFIX_PATH=/home/hugo/pupil-dev/pupil/headers
    export LD_LIBRARY_PATH=${pkgs.libuvc}/lib:${pkgs.glfw}/lib:${pkgs.glfw-wayland}/lib:${pkgs.libgcc}/lib:${pkgs.boost}/lib:${pkgs.portaudio}/lib:${pkgs.libxkbcommon}/lib:${pkgs.wayland}/lib:${pkgs.glib.out}/lib:${pkgs.libGL.out}/lib:${pkgs.libGL}/lib:${pkgs.eigen}/lib:${pkgs.zlib}/lib:${pkgs.gcc.cc.lib}/lib:${pkgs.stdenv.cc.cc.lib}/lib
    export SHELL_THEME="Python"
  '';
}


