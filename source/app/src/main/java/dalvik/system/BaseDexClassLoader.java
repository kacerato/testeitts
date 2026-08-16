package dalvik.system;

import java.io.File;
import java.net.URL;
import java.util.Enumeration;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:dalvik/system/BaseDexClassLoader.class
 */
public class BaseDexClassLoader extends ClassLoader {
    public BaseDexClassLoader(String dexPath, File optimizedDirectory, String librarySearchPath, ClassLoader parent) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Class<?> findClass(String name) throws ClassNotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected URL findResource(String name) {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected Enumeration<URL> findResources(String name) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String findLibrary(String name) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized Package getPackage(String name) {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
