package java.io;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/io/Writer.class
 */
public abstract class Writer implements Appendable, Closeable, Flushable {
    protected Object lock;

    public abstract void write(char[] cArr, int i10, int i11) throws IOException;

    public abstract void flush() throws IOException;

    public abstract void close() throws IOException;

    public Writer() {
        throw new RuntimeException("Stub!");
    }

    protected Writer(Object lock) {
        throw new RuntimeException("Stub!");
    }

    public void write(int c10) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void write(char[] cbuf) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void write(String str) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void write(String str, int off, int len) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Writer append(CharSequence csq) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Writer append(CharSequence csq, int start, int end) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Writer append(char c10) throws IOException {
        throw new RuntimeException("Stub!");
    }
}
