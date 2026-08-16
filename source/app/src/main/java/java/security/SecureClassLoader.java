package java.security;

import java.nio.ByteBuffer;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/SecureClassLoader.class
 */
public class SecureClassLoader extends ClassLoader {
    protected SecureClassLoader(ClassLoader parent) {
        throw new RuntimeException("Stub!");
    }

    public SecureClassLoader() {
        throw new RuntimeException("Stub!");
    }

    protected final Class<?> defineClass(String name, byte[] b10, int off, int len, CodeSource cs) {
        throw new RuntimeException("Stub!");
    }

    protected final Class<?> defineClass(String name, ByteBuffer b10, CodeSource cs) {
        throw new RuntimeException("Stub!");
    }

    protected PermissionCollection getPermissions(CodeSource codesource) {
        throw new RuntimeException("Stub!");
    }
}
