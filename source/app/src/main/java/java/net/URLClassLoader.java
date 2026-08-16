package java.net;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.security.CodeSource;
import java.security.PermissionCollection;
import java.security.SecureClassLoader;
import java.util.Enumeration;
import java.util.jar.Manifest;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/net/URLClassLoader.class
 */
public class URLClassLoader extends SecureClassLoader implements Closeable {
    public URLClassLoader(URL[] urls, ClassLoader parent) {
        throw new RuntimeException("Stub!");
    }

    public URLClassLoader(URL[] urls) {
        throw new RuntimeException("Stub!");
    }

    public URLClassLoader(URL[] urls, ClassLoader parent, URLStreamHandlerFactory factory) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public InputStream getResourceAsStream(String name) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void close() throws IOException {
        throw new RuntimeException("Stub!");
    }

    protected void addURL(URL url) {
        throw new RuntimeException("Stub!");
    }

    public URL[] getURLs() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Class<?> findClass(String name) throws ClassNotFoundException {
        throw new RuntimeException("Stub!");
    }

    protected Package definePackage(String name, Manifest man, URL url) throws IllegalArgumentException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public URL findResource(String name) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Enumeration<URL> findResources(String name) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected PermissionCollection getPermissions(CodeSource codesource) {
        throw new RuntimeException("Stub!");
    }

    public static URLClassLoader newInstance(URL[] urls, ClassLoader parent) {
        throw new RuntimeException("Stub!");
    }

    public static URLClassLoader newInstance(URL[] urls) {
        throw new RuntimeException("Stub!");
    }
}
