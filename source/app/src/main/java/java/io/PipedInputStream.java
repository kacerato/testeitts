package java.io;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/io/PipedInputStream.class
 */
public class PipedInputStream extends InputStream {
    protected static final int PIPE_SIZE = 1024;
    protected byte[] buffer = null;

    protected int f92732in;
    protected int out;

    public PipedInputStream(PipedOutputStream src) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public PipedInputStream(PipedOutputStream src, int pipeSize) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public PipedInputStream() {
        throw new RuntimeException("Stub!");
    }

    public PipedInputStream(int pipeSize) {
        throw new RuntimeException("Stub!");
    }

    public void connect(PipedOutputStream src) throws IOException {
        throw new RuntimeException("Stub!");
    }

    protected synchronized void receive(int b10) throws IOException {
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
    public synchronized int available() throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void close() throws IOException {
        throw new RuntimeException("Stub!");
    }
}
