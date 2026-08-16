package java.nio;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/LongBuffer.class
 */
public abstract class LongBuffer extends Buffer implements Comparable<LongBuffer> {
    public abstract LongBuffer slice();

    public abstract LongBuffer duplicate();

    public abstract LongBuffer asReadOnlyBuffer();

    public abstract long get();

    public abstract LongBuffer put(long j10);

    public abstract long get(int i10);

    public abstract LongBuffer put(int i10, long j10);

    public abstract LongBuffer compact();

    @Override
    public abstract boolean isDirect();

    public abstract ByteOrder order();

    LongBuffer() {
        throw new RuntimeException("Stub!");
    }

    public static LongBuffer allocate(int capacity) {
        throw new RuntimeException("Stub!");
    }

    public static LongBuffer wrap(long[] array, int offset, int length) {
        throw new RuntimeException("Stub!");
    }

    public static LongBuffer wrap(long[] array) {
        throw new RuntimeException("Stub!");
    }

    public LongBuffer get(long[] dst, int offset, int length) {
        throw new RuntimeException("Stub!");
    }

    public LongBuffer get(long[] dst) {
        throw new RuntimeException("Stub!");
    }

    public LongBuffer put(LongBuffer src) {
        throw new RuntimeException("Stub!");
    }

    public LongBuffer put(long[] src, int offset, int length) {
        throw new RuntimeException("Stub!");
    }

    public final LongBuffer put(long[] src) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final boolean hasArray() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final long[] array() {
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
    public int compareTo(LongBuffer that) {
        throw new RuntimeException("Stub!");
    }
}
