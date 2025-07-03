{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {

  


  # Add packages to the shell environment
  LD_LIBRARY_PATH="${pkgs.zlib}/lib:${pkgs.gcc.cc.lib}/lib:${pkgs.stdenv.cc.cc.lib}/lib:$LD_LIBRARY_PATH";
  buildInputs = [
    pkgs.python311Full
    pkgs.gcc.cc.lib   

    pkgs.glfw
    pkgs.python311Packages.pip          # Python 3 interpreter
    pkgs.python311Packages.virtualenv  # Virtual environment tool
    pkgs.python311Packages.libpcap
    pkgs.python311Packages.setuptools
    pkgs.python311Packages.wheel
    pkgs.python311Packages.glfw
    pkgs.python311Packages.eigenpy      # NumPy for numerical computations

    pkgs.python311Packages.numpy        # NumPy for numerical computations


    pkgs.python311Packages.pyopengl          # Python 3 interpreter

    pkgs.python311Packages.tkinter
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
    export SHELL_THEME="Pupil Dev Shell"
  '';
}


