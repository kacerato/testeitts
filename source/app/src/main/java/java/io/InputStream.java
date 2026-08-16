package java.io;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/io/InputStream.class
 */
public abstract class InputStream implements Closeable {
    public abstract int read() throws IOException;

    public InputStream() {
        throw new RuntimeException("Stub!");
    }

    public int read(byte[] b10) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public int read(byte[] b10, int off, int len) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public long skip(long n10) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public int available() throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void close() throws IOException {
        throw new RuntimeException("Stub!");
    }

    public synchronized void mark(int readlimit) {
        throw new RuntimeException("Stub!");
    }

    public synchronized void reset() throws IOException {
        throw new RuntimeException("Stub!");
    }

    public boolean markSupported() {
        throw new RuntimeException("Stub!");
    }
}
