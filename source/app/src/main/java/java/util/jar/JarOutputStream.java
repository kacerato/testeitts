package java.util.jar;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/jar/JarOutputStream.class
 */
public class JarOutputStream extends ZipOutputStream {
    public JarOutputStream(OutputStream out, Manifest man) throws IOException {
        super((OutputStream) null, (Charset) null);
        throw new RuntimeException("Stub!");
    }

    public JarOutputStream(OutputStream out) throws IOException {
        super((OutputStream) null, (Charset) null);
        throw new RuntimeException("Stub!");
    }

    @Override
    public void putNextEntry(ZipEntry ze2) throws IOException {
        throw new RuntimeException("Stub!");
    }
}
