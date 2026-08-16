package java.util.zip;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/zip/DeflaterInputStream.class
 */
public class DeflaterInputStream extends FilterInputStream {
    protected final byte[] buf;
    protected final Deflater def;

    public DeflaterInputStream(InputStream in2) {
        super((InputStream) null);
        this.buf = null;
        throw new RuntimeException("Stub!");
    }

    public DeflaterInputStream(InputStream in2, Deflater defl) {
        super((InputStream) null);
        this.buf = null;
        throw new RuntimeException("Stub!");
    }

    public DeflaterInputStream(InputStream in2, Deflater defl, int bufLen) {
        super((InputStream) null);
        this.buf = null;
        throw new RuntimeException("Stub!");
    }

    @Override
    public void close() throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int read() throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int read(byte[] b10, int off, int len) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public long skip(long n10) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int available() throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean markSupported() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void mark(int limit) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void reset() throws IOException {
        throw new RuntimeException("Stub!");
    }
}
