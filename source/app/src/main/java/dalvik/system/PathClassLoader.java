package dalvik.system;

import java.io.File;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:dalvik/system/PathClassLoader.class
 */
public class PathClassLoader extends BaseDexClassLoader {
    public PathClassLoader(String dexPath, ClassLoader parent) {
        super((String) null, (File) null, (String) null, (ClassLoader) null);
        throw new RuntimeException("Stub!");
    }

    public PathClassLoader(String dexPath, String librarySearchPath, ClassLoader parent) {
        super((String) null, (File) null, (String) null, (ClassLoader) null);
        throw new RuntimeException("Stub!");
    }
}
