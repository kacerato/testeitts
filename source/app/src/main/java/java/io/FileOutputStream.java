package java.io;

import java.nio.channels.FileChannel;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/io/FileOutputStream.class
 */
public class FileOutputStream extends OutputStream {
    public FileOutputStream(String name) throws FileNotFoundException {
        throw new RuntimeException("Stub!");
    }

    public FileOutputStream(String name, boolean append) throws FileNotFoundException {
        throw new RuntimeException("Stub!");
    }

    public FileOutputStream(File file) throws FileNotFoundException {
        throw new RuntimeException("Stub!");
    }

    public FileOutputStream(File file, boolean append) throws FileNotFoundException {
        throw new RuntimeException("Stub!");
    }

    public FileOutputStream(FileDescriptor fdObj) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void write(int b10) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void write(byte[] b10) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void write(byte[] b10, int off, int len) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void close() throws IOException {
        throw new RuntimeException("Stub!");
    }

    public final FileDescriptor getFD() throws IOException {
        throw new RuntimeException("Stub!");
    }

    public FileChannel getChannel() {
        throw new RuntimeException("Stub!");
    }

    protected void finalize() throws IOException {
        throw new RuntimeException("Stub!");
    }
}
