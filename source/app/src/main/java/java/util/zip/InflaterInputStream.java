package java.util.zip;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/zip/InflaterInputStream.class
 */
public class InflaterInputStream extends FilterInputStream {
    protected byte[] buf;
    protected boolean closed;
    protected Inflater inf;
    protected int len;

    public InflaterInputStream(InputStream in2, Inflater inf, int size) {
        super((InputStream) null);
        this.buf = null;
        throw new RuntimeException("Stub!");
    }

    public InflaterInputStream(InputStream in2, Inflater inf) {
        super((InputStream) null);
        this.buf = null;
        throw new RuntimeException("Stub!");
    }

    public InflaterInputStream(InputStream in2) {
        super((InputStream) null);
        this.buf = null;
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
    public int available() throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public long skip(long n10) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void close() throws IOException {
        throw new RuntimeException("Stub!");
    }

    protected void fill() throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean markSupported() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized void mark(int readlimit) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized void reset() throws IOException {
        throw new RuntimeException("Stub!");
    }
}
