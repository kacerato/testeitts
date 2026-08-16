package java.nio;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/ShortBuffer.class
 */
public abstract class ShortBuffer extends Buffer implements Comparable<ShortBuffer> {
    public abstract ShortBuffer slice();

    public abstract ShortBuffer duplicate();

    public abstract ShortBuffer asReadOnlyBuffer();

    public abstract short get();

    public abstract ShortBuffer put(short s10);

    public abstract short get(int i10);

    public abstract ShortBuffer put(int i10, short s10);

    public abstract ShortBuffer compact();

    @Override
    public abstract boolean isDirect();

    public abstract ByteOrder order();

    ShortBuffer() {
        throw new RuntimeException("Stub!");
    }

    public static ShortBuffer allocate(int capacity) {
        throw new RuntimeException("Stub!");
    }

    public static ShortBuffer wrap(short[] array, int offset, int length) {
        throw new RuntimeException("Stub!");
    }

    public static ShortBuffer wrap(short[] array) {
        throw new RuntimeException("Stub!");
    }

    public ShortBuffer get(short[] dst, int offset, int length) {
        throw new RuntimeException("Stub!");
    }

    public ShortBuffer get(short[] dst) {
        throw new RuntimeException("Stub!");
    }

    public ShortBuffer put(ShortBuffer src) {
        throw new RuntimeException("Stub!");
    }

    public ShortBuffer put(short[] src, int offset, int length) {
        throw new RuntimeException("Stub!");
    }

    public final ShortBuffer put(short[] src) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final boolean hasArray() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final short[] array() {
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
    public int compareTo(ShortBuffer that) {
        throw new RuntimeException("Stub!");
    }
}
