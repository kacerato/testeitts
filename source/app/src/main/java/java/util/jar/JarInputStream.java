package java.util.jar;

import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/jar/JarInputStream.class
 */
public class JarInputStream extends ZipInputStream {
    public JarInputStream(InputStream in2) throws IOException {
        super((InputStream) null, (Charset) null);
        throw new RuntimeException("Stub!");
    }

    public JarInputStream(InputStream in2, boolean verify) throws IOException {
        super((InputStream) null, (Charset) null);
        throw new RuntimeException("Stub!");
    }

    public Manifest getManifest() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ZipEntry getNextEntry() throws IOException {
        throw new RuntimeException("Stub!");
    }

    public JarEntry getNextJarEntry() throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int read(byte[] b10, int off, int len) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected ZipEntry createZipEntry(String name) {
        throw new RuntimeException("Stub!");
    }
}
