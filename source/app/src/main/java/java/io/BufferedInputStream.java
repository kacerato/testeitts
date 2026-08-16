package java.io;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/io/BufferedInputStream.class
 */
public class BufferedInputStream extends FilterInputStream {
    protected volatile byte[] buf;
    protected int count;
    protected int marklimit;
    protected int markpos;
    protected int pos;

    public BufferedInputStream(InputStream in2) {
        super((InputStream) null);
        this.buf = null;
        throw new RuntimeException("Stub!");
    }

    public BufferedInputStream(InputStream in2, int size) {
        super((InputStream) null);
        this.buf = null;
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized int read() throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized int read(byte[] b10, int off, int len) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized long skip(long n10) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized int available() throws IOException {
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

    @Override
    public boolean markSupported() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void close() throws IOException {
        throw new RuntimeException("Stub!");
    }
}
