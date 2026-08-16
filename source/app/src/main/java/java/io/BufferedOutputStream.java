package java.io;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/io/BufferedOutputStream.class
 */
public class BufferedOutputStream extends FilterOutputStream {
    protected byte[] buf;
    protected int count;

    public BufferedOutputStream(OutputStream out) {
        super((OutputStream) null);
        this.buf = null;
        throw new RuntimeException("Stub!");
    }

    public BufferedOutputStream(OutputStream out, int size) {
        super((OutputStream) null);
        this.buf = null;
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized void write(int b10) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized void write(byte[] b10, int off, int len) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized void flush() throws IOException {
        throw new RuntimeException("Stub!");
    }
}
