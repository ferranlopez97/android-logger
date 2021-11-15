# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.


# If you keep the line number information, uncomment this to
# hide the original source file name.


-printmapping out.map
-renamesourcefileattribute SourceFile
-keepattributes Exceptions,InnerClasses,Signature,Deprecated,SourceFile,LineNumberTable,EnclosingMethod

-keep class flp.dev.lib.Log {
    public static <methods>;
    private static <methods>;
    private static <fields>;
    private <methods>;
    private <fields>;
    private <init>();
}

#-keepclassmembers class * extends java.lang.Enum {
#    public static **[] values();
#    public static ** valueOf(java.lang.String);
#}
#
#-keepclassmembernames class * {
#    java.lang.Class class$(java.lang.String);
#    java.lang.Class class$(java.lang.String, boolean);
#}




