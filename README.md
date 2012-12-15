stockfishchess-android
========================

DroidFish Android app: Automated CI for Android apps using CloudBees/Jenkins.  Based on Peter Osterlund's [DroidFish](http://web.comhem.se/petero2home/droidfish/) version of the [Stockfish](http://stockfishchess.org) chess engine.  This build runs entirely in the Cloud, using the CloudBees Jenkins service - the required Android SDK, NDK and platform libraries will be downloaded to the workspace automatically. 

<a href="https://grandcentral.cloudbees.com/?CB_clickstart=https://raw.github.com/mqprichard/stockfishchess-android/master/clickstart.json"><img src="https://d3ko533tu1ozfq.cloudfront.net/clickstart/deployInstantly.png"/></a>
 
The final APK can be downloaded from the workspace: _/DroidFish/bin/DroidFish-debug.apk_ 

To run the application using the Android emulator:

<code>create avd -n android.16 -t "android-16" -b armeabi-v7a -c 128M</code>

<code>emulator -avd android.16</code>

Wait for the emulator to start...

<code>adb connect localhost:5554</code>

<code>adb install DroidFish-debug.apk</code>

<code>adb shell am start -n org.petero.droidfish/.DroidFish</code> 

See this [CloudBees blog](http://blog.cloudbees.com/2012/12/mobile-builds-with-jenkins-in-cloud.html) for more information 
