package java.nio;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/IntBuffer.class
 */
public abstract class IntBuffer extends Buffer implements Comparable<IntBuffer> {
    public abstract IntBuffer slice();

    public abstract IntBuffer duplicate();

    public abstract IntBuffer asReadOnlyBuffer();

    public abstract int get();

    public abstract IntBuffer put(int i10);

    public abstract int get(int i10);

    public abstract IntBuffer put(int i10, int i11);

    public abstract IntBuffer compact();

    @Override
    public abstract boolean isDirect();

    public abstract ByteOrder order();

    IntBuffer() {
        throw new RuntimeException("Stub!");
    }

    public static IntBuffer allocate(int capacity) {
        throw new RuntimeException("Stub!");
    }

    public static IntBuffer wrap(int[] array, int offset, int length) {
        throw new RuntimeException("Stub!");
    }

    public static IntBuffer wrap(int[] array) {
        throw new RuntimeException("Stub!");
    }

    public IntBuffer get(int[] dst, int offset, int length) {
        throw new RuntimeException("Stub!");
    }

    public IntBuffer get(int[] dst) {
        throw new RuntimeException("Stub!");
    }

    public IntBuffer put(IntBuffer src) {
        throw new RuntimeException("Stub!");
    }

    public IntBuffer put(int[] src, int offset, int length) {
        throw new RuntimeException("Stub!");
    }

    public final IntBuffer put(int[] src) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final boolean hasArray() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final int[] array() {
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
    public int compareTo(IntBuffer that) {
        throw new RuntimeException("Stub!");
    }
}
