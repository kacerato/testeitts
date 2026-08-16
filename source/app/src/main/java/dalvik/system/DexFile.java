package dalvik.system;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Enumeration;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:dalvik/system/DexFile.class
 */
@Deprecated
public final class DexFile {
    public static native boolean isDexOptNeeded(String str) throws FileNotFoundException, IOException;

    @Deprecated
    public DexFile(File file) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public DexFile(String fileName) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public static DexFile loadDex(String sourcePathName, String outputPathName, int flags) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public String getName() {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    public void close() throws IOException {
        throw new RuntimeException("Stub!");
    }

    public Class loadClass(String name, ClassLoader loader) {
        throw new RuntimeException("Stub!");
    }

    public Enumeration<String> entries() {
        throw new RuntimeException("Stub!");
    }

    protected void finalize() throws Throwable {
        throw new RuntimeException("Stub!");
    }
}
