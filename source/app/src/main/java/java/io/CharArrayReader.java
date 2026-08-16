package java.io;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/io/CharArrayReader.class
 */
public class CharArrayReader extends Reader {
    protected char[] buf = null;
    protected int count;
    protected int markedPos;
    protected int pos;

    public CharArrayReader(char[] buf) {
        throw new RuntimeException("Stub!");
    }

    public CharArrayReader(char[] buf, int offset, int length) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int read() throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int read(char[] b10, int off, int len) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public long skip(long n10) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean ready() throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean markSupported() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void mark(int readAheadLimit) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void reset() throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void close() {
        throw new RuntimeException("Stub!");
    }
}
