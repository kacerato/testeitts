package java.io;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/io/OutputStream.class
 */
public abstract class OutputStream implements Closeable, Flushable {
    public abstract void write(int i10) throws IOException;

    public OutputStream() {
        throw new RuntimeException("Stub!");
    }

    public void write(byte[] b10) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void write(byte[] b10, int off, int len) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void flush() throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void close() throws IOException {
        throw new RuntimeException("Stub!");
    }
}
