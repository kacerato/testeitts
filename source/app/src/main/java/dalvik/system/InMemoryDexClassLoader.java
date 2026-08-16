package dalvik.system;

import java.io.File;
import java.nio.ByteBuffer;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:dalvik/system/InMemoryDexClassLoader.class
 */
public final class InMemoryDexClassLoader extends BaseDexClassLoader {
    public InMemoryDexClassLoader(ByteBuffer dexBuffer, ClassLoader parent) {
        super((String) null, (File) null, (String) null, (ClassLoader) null);
        throw new RuntimeException("Stub!");
    }
}
