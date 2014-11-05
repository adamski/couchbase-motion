couchbase-motion
================

Very simple example project to demonstrate errors building Rubymotion Android projects using jar libraries. 

Full stack trace from ```rake device```:

```
rake device --trace
/Library/RubyMotionPre/lib/motion/project.rb:42: warning: Insecure world writable dir /Users/adamwilson/.rvm/gems/ruby-1.9.3-p194/bin in PATH, mode 040777
** Invoke device (first_time)
** Invoke build (first_time)
** Execute build
mkdir -p ./build/Development-17
mkdir -p ./build/Development-17/java/com/codegarden/couchbaselite
"/Users/adamelemental/dev/android-rubymotion/sdk/build-tools/android-4.4W/aapt" package -f -M "./build/Development-17/AndroidManifest.xml" -A "./assets" -S "./resources" -I "/Users/adamelemental/dev/android-rubymotion/sdk/platforms/android-17/android.jar" -m -J "./build/Development-17/java"  --auto-add-overlay
mkdir -p ./build/Development-17/classes
/Library/RubyMotionPre/bin/android/gen_bridge_metadata  -o "./build/Development-17/R.bridgesupport"
mkdir -p ./build/Development-17/jni
mkdir -p ./build/Development-17/classes
** Invoke device:install (first_time)
** Execute device:install
"/Users/adamelemental/dev/android-rubymotion/sdk/platform-tools/adb" -d install -r "./build/Development-17/CouchbaseLite.apk"
1272 KB/s (889107 bytes in 0.682s)
	pkg: /data/local/tmp/CouchbaseLite.apk
Success
** Invoke device:start (first_time)
** Execute device:start
"/Users/adamelemental/dev/android-rubymotion/sdk/platform-tools/adb" -d logcat -c
"/Users/adamelemental/dev/android-rubymotion/sdk/platform-tools/adb" -d shell am start -a android.intent.action.MAIN -n com.codegarden.couchbaselite/.MainActivity
Starting: Intent { act=android.intent.action.MAIN cmp=com.codegarden.couchbaselite/.MainActivity }
"/Users/adamelemental/dev/android-rubymotion/sdk/platform-tools/adb" -d forward tcp:33333 tcp:33333
"/Library/RubyMotionPre/bin/android/repl" "/Library/RubyMotionPre/data/android/17/armv5te/kernel-armv5te.bc" 0.0.0.0 33333
--------- beginning of /dev/log/system
--------- beginning of /dev/log/main
>> E/com/codegarden/couchbaselite(28403): Exception raised: NameError: uninitialized constant `Com'
I/com/codegarden/couchbaselite(28403): uninitialized constant `Com'
E/com/codegarden/couchbaselite(28403): Exception raised: NoMethodError: undefined method `backtrace' for <NameError: uninitialized constant `Com'>:NameError
E/AndroidRuntime(28403): FATAL EXCEPTION: main
E/AndroidRuntime(28403): java.lang.RuntimeException: Unable to start activity ComponentInfo{com.codegarden.couchbaselite/com.codegarden.couchbaselite.MainActivity}: com.rubymotion.NoMethodError: undefined method `backtrace' for <NameError: uninitialized constant `Com'>:NameError
E/AndroidRuntime(28403): 	at android.app.ActivityThread.performLaunchActivity(ActivityThread.java:2307)
E/AndroidRuntime(28403): 	at android.app.ActivityThread.handleLaunchActivity(ActivityThread.java:2357)
E/AndroidRuntime(28403): 	at android.app.ActivityThread.access$600(ActivityThread.java:153)
E/AndroidRuntime(28403): 	at android.app.ActivityThread$H.handleMessage(ActivityThread.java:1247)
E/AndroidRuntime(28403): 	at android.os.Handler.dispatchMessage(Handler.java:99)
E/AndroidRuntime(28403): 	at android.os.Looper.loop(Looper.java:137)
E/AndroidRuntime(28403): 	at android.app.ActivityThread.main(ActivityThread.java:5226)
E/AndroidRuntime(28403): 	at java.lang.reflect.Method.invokeNative(Native Method)
E/AndroidRuntime(28403): 	at java.lang.reflect.Method.invoke(Method.java:511)
E/AndroidRuntime(28403): 	at com.android.internal.os.ZygoteInit$MethodAndArgsCaller.run(ZygoteInit.java:795)
E/AndroidRuntime(28403): 	at com.android.internal.os.ZygoteInit.main(ZygoteInit.java:562)
E/AndroidRuntime(28403): 	at dalvik.system.NativeStart.main(Native Method)
E/AndroidRuntime(28403): Caused by: com.rubymotion.NoMethodError: undefined method `backtrace' for <NameError: uninitialized constant `Com'>:NameError
E/AndroidRuntime(28403): 	at com.codegarden.couchbaselite.MainActivity.onCreate(Native Method)
E/AndroidRuntime(28403): 	at com.codegarden.couchbaselite.MainActivity.onCreate(Native Method)
E/AndroidRuntime(28403): 	at com.codegarden.couchbaselite.MainActivity.onCreate(Native Method)
E/AndroidRuntime(28403): 	at com.codegarden.couchbaselite.MainActivity.onCreate(Native Method)
E/AndroidRuntime(28403): 	at android.app.Activity.performCreate(Activity.java:5104)
E/AndroidRuntime(28403): 	at android.app.Instrumentation.callActivityOnCreate(Instrumentation.java:1080)
E/AndroidRuntime(28403): 	at android.app.ActivityThread.performLaunchActivity(ActivityThread.java:2261)
E/AndroidRuntime(28403): 	... 11 more
```
