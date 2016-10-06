rmdir fw4.0-debug /S /Q
rmdir fw4.5-debug /S /Q
rmdir fw4.0-release /S /Q
rmdir fw4.5-release /S /Q
git clone https://github.com/Lifemotion/Bwl.Framework
git clone https://github.com/Lifemotion/Bwl.Imaging
git clone https://github.com/Lifemotion/Bwl.Storage.UniversalORM
git clone https://github.com/Lifemotion/Bwl.Network.Transport
git clone https://github.com/Lifemotion/Bwl.Hardware.Serial
git clone https://github.com/Lifemotion/Bwl.SimplSerial.NET
git clone https://github.com/Lifemotion/Bwl.Video

cd Bwl.Framework
git pull
call !build-all.cmd
xcopy debug\dll ..\fw4.5-debug\bwl-framework\
xcopy release\dll ..\fw4.5-release\bwl-framework\
xcopy debug\dll-fw4 ..\fw4.0-debug\bwl-framework\
xcopy release\dll-fw4 ..\fw4.0-release\bwl-framework\
cd ..

cd Bwl.Imaging
git pull
call !build-all.cmd
xcopy debug\dll ..\fw4.5-debug\bwl-imaging\
xcopy release\dll ..\fw4.5-release\bwl-imaging\
xcopy debug\dll-mono ..\fw4.0-debug\bwl-imaging\
xcopy release\dll-mono ..\fw4.0-release\bwl-imaging\
cd ..

cd Bwl.Storage.UniversalORM
git pull
call build.cmd
xcopy debug\UniversalORM ..\fw4.5-debug\bwl-universal-orm\
xcopy release\UniversalORM ..\fw4.5-release\bwl-universal-orm\
cd ..

cd Bwl.Network.Transport
git pull
call !build-all.cmd
xcopy debug\bwl-network-transport ..\fw4.5-debug\bwl-network-transport\
xcopy release\bwl-network-transport ..\fw4.5-release\bwl-network-transport\
cd ..

cd Bwl.Hardware.Serial
git pull
call !build-all.cmd
xcopy debug\dll ..\fw4.5-debug\bwl-hardware-serial\
xcopy release\dll ..\fw4.5-release\bwl-hardware-serial\
xcopy debug\dll-mono ..\fw4.0-debug\bwl-hardware-serial\
xcopy release\dll-mono ..\fw4.0-release\bwl-hardware-serial\
cd ..

cd Bwl.Video
git pull
call !build.cmd
xcopy debug\dll ..\fw4.5-debug\bwl-video\
xcopy release\dll ..\fw4.5-release\bwl-video\
cd ..