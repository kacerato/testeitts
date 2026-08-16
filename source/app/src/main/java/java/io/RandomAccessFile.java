package java.io;

import java.nio.channels.FileChannel;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/io/RandomAccessFile.class
 */
public class RandomAccessFile implements DataOutput, DataInput, Closeable {
    public RandomAccessFile(String name, String mode) throws FileNotFoundException {
        throw new RuntimeException("Stub!");
    }

    public RandomAccessFile(File file, String mode) throws FileNotFoundException {
        throw new RuntimeException("Stub!");
    }

    public final FileDescriptor getFD() throws IOException {
        throw new RuntimeException("Stub!");
    }

    public final FileChannel getChannel() {
        throw new RuntimeException("Stub!");
    }

    public int read() throws IOException {
        throw new RuntimeException("Stub!");
    }

    public int read(byte[] b10, int off, int len) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public int read(byte[] b10) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final void readFully(byte[] b10) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final void readFully(byte[] b10, int off, int len) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int skipBytes(int n10) throws IOException {
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

    public long getFilePointer() throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void seek(long offset) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public long length() throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void setLength(long newLength) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void close() throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final boolean readBoolean() throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final byte readByte() throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final int readUnsignedByte() throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final short readShort() throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final int readUnsignedShort() throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final char readChar() throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final int readInt() throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final long readLong() throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final float readFloat() throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final double readDouble() throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final String readLine() throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final String readUTF() throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final void writeBoolean(boolean v10) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final void writeByte(int v10) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final void writeShort(int v10) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final void writeChar(int v10) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final void writeInt(int v10) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final void writeLong(long v10) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final void writeFloat(float v10) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final void writeDouble(double v10) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final void writeBytes(String s10) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final void writeChars(String s10) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final void writeUTF(String str) throws IOException {
        throw new RuntimeException("Stub!");
    }

    protected void finalize() throws Throwable {
        throw new RuntimeException("Stub!");
    }
}
