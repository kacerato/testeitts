package java.io;

import java.nio.CharBuffer;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/io/Reader.class
 */
public abstract class Reader implements Readable, Closeable {
    protected Object lock;

    public abstract int read(char[] cArr, int i10, int i11) throws IOException;

    public abstract void close() throws IOException;

    public Reader() {
        throw new RuntimeException("Stub!");
    }

    protected Reader(Object lock) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int read(CharBuffer target) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public int read() throws IOException {
        throw new RuntimeException("Stub!");
    }

    public int read(char[] cbuf) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public long skip(long n10) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public boolean ready() throws IOException {
        throw new RuntimeException("Stub!");
    }

    public boolean markSupported() {
        throw new RuntimeException("Stub!");
    }

    public void mark(int readAheadLimit) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void reset() throws IOException {
        throw new RuntimeException("Stub!");
    }
}
