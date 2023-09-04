android_hello_world
===================

Hello World Android App

<img src="http://i.imgur.com/dio0DXF.png" width="450" />


Run the below commad in the jenkins server to configure the Android-sdk for the androif build

1. sudo apt-get update
2. sudo apt install openjdk-8-jdk
3. sudo apt install android-sdk
4. sudo mkdir /usr/lib/android-sdk/cmdline-tools
5. cd /usr/lib/android-sdk/cmdline-tools
6. sudo  wget https://dl.google.com/android/repository/commandlinetools-linux-6609375_latest.zip
7. sudo unzip commandlinetools-linux-6609375_latest.zip 
8. sudo rm commandlinetools-linux-6609375_latest.zip  
9. rm commandlinetools-linux-6609375_latest.zip 
10. export ANDROID_HOME=/usr/lib/android-sdk/
11. export PATH=$PATH:$ANDROID_HOME/cmdline-tools/tools/bin
12. export PATH=$PATH:$ANDROID_HOME/platform-tools
13. sdkmanager --version
14. sdkmanager --list
15. sudo chmod 777 $ANDROID_HOME -R
16. yes | sdkmanager --licenses
17.  yes | sdkmanager "platform-tools" "platforms;android-29"


**Jenkins Pipeline:**

Create a FreeStyle job in jenkins.
In the execute shell write the following commands


export ANDROID_HOME=/usr/lib/android-sdk/

export PATH=$PATH:$ANDROID_HOME/cmdline-tools/tools/bin

export PATH=$PATH:$ANDROID_HOME/platform-tools

rm -rf assessment3

git clone https://github.com/codepath/android_hello_world.git assessment3

cd assessment3

chmod +x gradlew

./gradlew clean

./gradlew assembleRelease

cd app/build/outputs/apk/release


