package java.util.zip;

import java.io.IOException;
import java.io.OutputStream;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/zip/GZIPOutputStream.class
 */
public class GZIPOutputStream extends DeflaterOutputStream {
    protected CRC32 crc;

    public GZIPOutputStream(OutputStream out, int size) throws IOException {
        super((OutputStream) null);
        throw new RuntimeException("Stub!");
    }

    public GZIPOutputStream(OutputStream out, int size, boolean syncFlush) throws IOException {
        super((OutputStream) null);
        throw new RuntimeException("Stub!");
    }

    public GZIPOutputStream(OutputStream out) throws IOException {
        super((OutputStream) null);
        throw new RuntimeException("Stub!");
    }

    public GZIPOutputStream(OutputStream out, boolean syncFlush) throws IOException {
        super((OutputStream) null);
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized void write(byte[] buf, int off, int len) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void finish() throws IOException {
        throw new RuntimeException("Stub!");
    }
}
