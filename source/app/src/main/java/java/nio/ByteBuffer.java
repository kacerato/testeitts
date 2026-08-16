package java.nio;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/ByteBuffer.class
 */
public abstract class ByteBuffer extends Buffer implements Comparable<ByteBuffer> {
    public abstract ByteBuffer slice();

    public abstract ByteBuffer duplicate();

    public abstract ByteBuffer asReadOnlyBuffer();

    public abstract byte get();

    public abstract ByteBuffer put(byte b10);

    public abstract byte get(int i10);

    public abstract ByteBuffer put(int i10, byte b10);

    public abstract ByteBuffer compact();

    @Override
    public abstract boolean isDirect();

    public abstract char getChar();

    public abstract ByteBuffer putChar(char c10);

    public abstract char getChar(int i10);

    public abstract ByteBuffer putChar(int i10, char c10);

    public abstract CharBuffer asCharBuffer();

    public abstract short getShort();

    public abstract ByteBuffer putShort(short s10);

    public abstract short getShort(int i10);

    public abstract ByteBuffer putShort(int i10, short s10);

    public abstract ShortBuffer asShortBuffer();

    public abstract int getInt();

    public abstract ByteBuffer putInt(int i10);

    public abstract int getInt(int i10);

    public abstract ByteBuffer putInt(int i10, int i11);

    public abstract IntBuffer asIntBuffer();

    public abstract long getLong();

    public abstract ByteBuffer putLong(long j10);

    public abstract long getLong(int i10);

    public abstract ByteBuffer putLong(int i10, long j10);

    public abstract LongBuffer asLongBuffer();

    public abstract float getFloat();

    public abstract ByteBuffer putFloat(float f10);

    public abstract float getFloat(int i10);

    public abstract ByteBuffer putFloat(int i10, float f10);

    public abstract FloatBuffer asFloatBuffer();

    public abstract double getDouble();

    public abstract ByteBuffer putDouble(double d10);

    public abstract double getDouble(int i10);

    public abstract ByteBuffer putDouble(int i10, double d10);

    public abstract DoubleBuffer asDoubleBuffer();

    public ByteBuffer() {
        throw new RuntimeException("Stub!");
    }

    public static ByteBuffer allocateDirect(int capacity) {
        throw new RuntimeException("Stub!");
    }

    public static ByteBuffer allocate(int capacity) {
        throw new RuntimeException("Stub!");
    }

    public static ByteBuffer wrap(byte[] array, int offset, int length) {
        throw new RuntimeException("Stub!");
    }

    public static ByteBuffer wrap(byte[] array) {
        throw new RuntimeException("Stub!");
    }

    public ByteBuffer get(byte[] dst, int offset, int length) {
        throw new RuntimeException("Stub!");
    }

    public ByteBuffer get(byte[] dst) {
        throw new RuntimeException("Stub!");
    }

    public ByteBuffer put(ByteBuffer src) {
        throw new RuntimeException("Stub!");
    }

    public ByteBuffer put(byte[] src, int offset, int length) {
        throw new RuntimeException("Stub!");
    }

    public final ByteBuffer put(byte[] src) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final boolean hasArray() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final byte[] array() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final int arrayOffset() {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object ob2) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int compareTo(ByteBuffer that) {
        throw new RuntimeException("Stub!");
    }

    public final ByteOrder order() {
        throw new RuntimeException("Stub!");
    }

    public final ByteBuffer order(ByteOrder bo) {
        throw new RuntimeException("Stub!");
    }
}
