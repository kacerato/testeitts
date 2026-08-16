package java.io;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/io/PushbackInputStream.class
 */
public class PushbackInputStream extends FilterInputStream {
    protected byte[] buf;
    protected int pos;

    public PushbackInputStream(InputStream in2, int size) {
        super((InputStream) null);
        this.buf = null;
        throw new RuntimeException("Stub!");
    }

    public PushbackInputStream(InputStream in2) {
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

    public void unread(int b10) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void unread(byte[] b10, int off, int len) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void unread(byte[] b10) throws IOException {
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

    @Override
    public synchronized void close() throws IOException {
        throw new RuntimeException("Stub!");
    }
}
