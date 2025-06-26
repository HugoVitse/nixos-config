{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {

  

  packages = [
    (pkgs.python3.withPackages (python-pkgs: with python-pkgs; [
      # select Python packages here
      numpy
    ]))
  ];
  # Add packages to the shell environment
  LD_LIBRARY_PATH="${pkgs.zlib}/lib:${pkgs.gcc.cc.lib}/lib:${pkgs.stdenv.cc.cc.lib}/lib:$LD_LIBRARY_PATH";
  buildInputs = [
    pkgs.python3Full
    pkgs.python2
    pkgs.gcc.cc.lib   


    pkgs.python3Packages.pip          # Python 3 interpreter
    pkgs.python3Packages.virtualenv  # Virtual environment tool
    pkgs.python3Packages.libpcap
    pkgs.python3Packages.setuptools
    pkgs.python3Packages.wheel
    pkgs.python3Packages.tkinter
    pkgs.python312Packages.numpy
    pkgs.zlib
    pkgs.glew
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
    pkgs.freeglut
    pkgs.xorg.libX11
    pkgs.xorg.libXext
    pkgs.xorg.libXxf86vm
    pkgs.xorg.libXi
    pkgs.portaudio
  ];

  # Optional: Add a custom environment message
  shellHook = ''
    export _GLFW_WAYLAND=1
    export SDL_VIDEODRIVER=wayland
    export NIXPKGS_ALLOW_INSECURE=1
    export PYOPENGL_PLATFORM=x11
    export CMAKE_PREFIX_PATH=/home/hugo/pupil-dev/pupil/headers
    export LD_LIBRARY_PATH=${pkgs.portaudio}/lib:${pkgs.libxkbcommon}/lib:${pkgs.wayland}/lib:${pkgs.glib.out}/lib:${pkgs.libGL.out}/lib:${pkgs.libGL}/lib:e${pkgs.eigen}/lib:${pkgs.zlib}/lib:${pkgs.gcc.cc.lib}/lib:${pkgs.stdenv.cc.cc.lib}/lib
    export SHELL_THEME="Python"
  '';
}


