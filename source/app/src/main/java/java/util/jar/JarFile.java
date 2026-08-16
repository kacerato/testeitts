package java.util.jar;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.Enumeration;
import java.util.stream.Stream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/jar/JarFile.class
 */
public class JarFile extends ZipFile {
    public static final String MANIFEST_NAME = "META-INF/MANIFEST.MF";

    public JarFile(String name) throws IOException {
        super((File) null, (Charset) null);
        throw new RuntimeException("Stub!");
    }

    public JarFile(String name, boolean verify) throws IOException {
        super((File) null, (Charset) null);
        throw new RuntimeException("Stub!");
    }

    public JarFile(File file) throws IOException {
        super((File) null, (Charset) null);
        throw new RuntimeException("Stub!");
    }

    public JarFile(File file, boolean verify) throws IOException {
        super((File) null, (Charset) null);
        throw new RuntimeException("Stub!");
    }

    public JarFile(File file, boolean verify, int mode) throws IOException {
        super((File) null, (Charset) null);
        throw new RuntimeException("Stub!");
    }

    public Manifest getManifest() throws IOException {
        throw new RuntimeException("Stub!");
    }

    public JarEntry getJarEntry(String name) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ZipEntry getEntry(String name) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Enumeration<JarEntry> entries() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Stream<JarEntry> stream() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized InputStream getInputStream(ZipEntry ze2) throws IOException {
        throw new RuntimeException("Stub!");
    }
}
