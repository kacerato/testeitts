package java.nio;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/FloatBuffer.class
 */
public abstract class FloatBuffer extends Buffer implements Comparable<FloatBuffer> {
    public abstract FloatBuffer slice();

    public abstract FloatBuffer duplicate();

    public abstract FloatBuffer asReadOnlyBuffer();

    public abstract float get();

    public abstract FloatBuffer put(float f10);

    public abstract float get(int i10);

    public abstract FloatBuffer put(int i10, float f10);

    public abstract FloatBuffer compact();

    @Override
    public abstract boolean isDirect();

    public abstract ByteOrder order();

    FloatBuffer() {
        throw new RuntimeException("Stub!");
    }

    public static FloatBuffer allocate(int capacity) {
        throw new RuntimeException("Stub!");
    }

    public static FloatBuffer wrap(float[] array, int offset, int length) {
        throw new RuntimeException("Stub!");
    }

    public static FloatBuffer wrap(float[] array) {
        throw new RuntimeException("Stub!");
    }

    public FloatBuffer get(float[] dst, int offset, int length) {
        throw new RuntimeException("Stub!");
    }

    public FloatBuffer get(float[] dst) {
        throw new RuntimeException("Stub!");
    }

    public FloatBuffer put(FloatBuffer src) {
        throw new RuntimeException("Stub!");
    }

    public FloatBuffer put(float[] src, int offset, int length) {
        throw new RuntimeException("Stub!");
    }

    public final FloatBuffer put(float[] src) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final boolean hasArray() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final float[] array() {
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
    public int compareTo(FloatBuffer that) {
        throw new RuntimeException("Stub!");
    }
}
