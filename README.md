# ffmpeg_build_for_ubuntu_script

Test in ffmpeg4.1 release branch
At any folder:
for example : /home/jamesli/work/open/ffmpeg
1. mkdir bin
2. mkdir ffmpeg_build
3. git clone https://git.ffmpeg.org/ffmpeg.git ffmpeg
4. cd ffmpeg
5. git checkout release/4.1
6. git clone this project: https://github.com/coloriy/ffmpeg_build_for_ubuntu_script.git 
   then you can get the folders like this:
   bin  ffmpeg  ffmpeg_build  ffmpeg_build_for_ubuntu_script
6. cd ffmpeg_build_for_ubuntu_script, and run the script from 0.*.sh to 9.*.sh
7. set the bin folder to $PATH
