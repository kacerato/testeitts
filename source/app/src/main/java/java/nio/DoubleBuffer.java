package java.nio;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/DoubleBuffer.class
 */
public abstract class DoubleBuffer extends Buffer implements Comparable<DoubleBuffer> {
    public abstract DoubleBuffer slice();

    public abstract DoubleBuffer duplicate();

    public abstract DoubleBuffer asReadOnlyBuffer();

    public abstract double get();

    public abstract DoubleBuffer put(double d10);

    public abstract double get(int i10);

    public abstract DoubleBuffer put(int i10, double d10);

    public abstract DoubleBuffer compact();

    @Override
    public abstract boolean isDirect();

    public abstract ByteOrder order();

    DoubleBuffer() {
        throw new RuntimeException("Stub!");
    }

    public static DoubleBuffer allocate(int capacity) {
        throw new RuntimeException("Stub!");
    }

    public static DoubleBuffer wrap(double[] array, int offset, int length) {
        throw new RuntimeException("Stub!");
    }

    public static DoubleBuffer wrap(double[] array) {
        throw new RuntimeException("Stub!");
    }

    public DoubleBuffer get(double[] dst, int offset, int length) {
        throw new RuntimeException("Stub!");
    }

    public DoubleBuffer get(double[] dst) {
        throw new RuntimeException("Stub!");
    }

    public DoubleBuffer put(DoubleBuffer src) {
        throw new RuntimeException("Stub!");
    }

    public DoubleBuffer put(double[] src, int offset, int length) {
        throw new RuntimeException("Stub!");
    }

    public final DoubleBuffer put(double[] src) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final boolean hasArray() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final double[] array() {
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
    public int compareTo(DoubleBuffer that) {
        throw new RuntimeException("Stub!");
    }
}
