package java.io;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/io/ByteArrayInputStream.class
 */
public class ByteArrayInputStream extends InputStream {
    protected byte[] buf = null;
    protected int count;
    protected int mark;
    protected int pos;

    public ByteArrayInputStream(byte[] buf) {
        throw new RuntimeException("Stub!");
    }

    public ByteArrayInputStream(byte[] buf, int offset, int length) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized int read() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized int read(byte[] b10, int off, int len) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized long skip(long n10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized int available() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean markSupported() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void mark(int readAheadLimit) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized void reset() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void close() throws IOException {
        throw new RuntimeException("Stub!");
    }
}
