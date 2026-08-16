package Xg;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;

public class p {
    public static void A(A obj, FloatBuffer target, int dimensions, boolean flipY) {
        if (!flipY) {
            for (int i10 = 0; i10 < obj.h(); i10++) {
                i v10 = obj.v(i10);
                for (int i11 = 0; i11 < dimensions; i11++) {
                    target.put(v10.get(i11));
                }
            }
            return;
        }
        for (int i12 = 0; i12 < obj.h(); i12++) {
            i v11 = obj.v(i12);
            for (int i13 = 0; i13 < dimensions; i13++) {
                if (i13 == 1) {
                    target.put(1.0f - v11.get(i13));
                } else {
                    target.put(v11.get(i13));
                }
            }
        }
    }

    public static float[] B(A obj, int dimensions) {
        return C(obj, dimensions, false);
    }

    public static float[] C(A obj, int dimensions, boolean flipY) {
        float[] fArr = new float[obj.h() * dimensions];
        A(obj, FloatBuffer.wrap(fArr), dimensions, flipY);
        return fArr;
    }

    public static int D(A obj) {
        return H(w(obj));
    }

    public static FloatBuffer E(A obj) {
        FloatBuffer b10 = b(obj.a() * 3);
        F(obj, b10);
        b10.position(0);
        return b10;
    }

    public static void F(A obj, FloatBuffer target) {
        for (int i10 = 0; i10 < obj.a(); i10++) {
            i n10 = obj.n(i10);
            target.put(n10.getX());
            target.put(n10.getY());
            target.put(n10.getZ());
        }
    }

    public static float[] G(A obj) {
        float[] fArr = new float[obj.a() * 3];
        F(obj, FloatBuffer.wrap(fArr));
        return fArr;
    }

    public static int H(int[] array) {
        int i10 = 0;
        for (int i11 : array) {
            i10 += i11;
        }
        return i10;
    }

    public static ShortBuffer a(IntBuffer intBuffer) {
        ShortBuffer d10 = d(intBuffer.capacity());
        for (int i10 = 0; i10 < intBuffer.capacity(); i10++) {
            d10.put(i10, (short) intBuffer.get());
        }
        return d10;
    }

    public static FloatBuffer b(int size) {
        return ByteBuffer.allocateDirect(size * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
    }

    public static IntBuffer c(int size) {
        return ByteBuffer.allocateDirect(size * 4).order(ByteOrder.nativeOrder()).asIntBuffer();
    }

    public static ShortBuffer d(int size) {
        return ByteBuffer.allocateDirect(size * 2).order(ByteOrder.nativeOrder()).asShortBuffer();
    }

    public static IntBuffer e(A obj) {
        IntBuffer c10 = c(D(obj));
        g(obj, c10);
        c10.position(0);
        return c10;
    }

    public static IntBuffer f(A obj, int numVerticesPerFace) {
        IntBuffer c10 = c(obj.getNumFaces() * numVerticesPerFace);
        g(obj, c10);
        c10.position(0);
        return c10;
    }

    public static void g(A obj, IntBuffer target) {
        for (int i10 = 0; i10 < obj.getNumFaces(); i10++) {
            q b10 = obj.b(i10);
            for (int i11 = 0; i11 < b10.a(); i11++) {
                target.put(b10.c(i11));
            }
        }
    }

    public static int[] h(A obj) {
        int[] iArr = new int[D(obj)];
        g(obj, IntBuffer.wrap(iArr));
        return iArr;
    }

    public static int[] i(A obj, int numVerticesPerFace) {
        int[] iArr = new int[obj.getNumFaces() * numVerticesPerFace];
        g(obj, IntBuffer.wrap(iArr));
        return iArr;
    }

    public static IntBuffer j(A obj) {
        IntBuffer c10 = c(D(obj));
        l(obj, c10);
        c10.position(0);
        return c10;
    }

    public static IntBuffer k(A obj, int numVerticesPerFace) {
        IntBuffer c10 = c(obj.getNumFaces() * numVerticesPerFace);
        l(obj, c10);
        c10.position(0);
        return c10;
    }

    public static void l(A obj, IntBuffer target) {
        for (int i10 = 0; i10 < obj.getNumFaces(); i10++) {
            q b10 = obj.b(i10);
            for (int i11 = 0; i11 < b10.a(); i11++) {
                target.put(b10.e(i11));
            }
        }
    }

    public static int[] m(A obj) {
        int[] iArr = new int[D(obj)];
        l(obj, IntBuffer.wrap(iArr));
        return iArr;
    }

    public static int[] n(A obj, int numVerticesPerFace) {
        int[] iArr = new int[obj.getNumFaces() * numVerticesPerFace];
        l(obj, IntBuffer.wrap(iArr));
        return iArr;
    }

    public static IntBuffer o(A obj) {
        IntBuffer c10 = c(D(obj));
        q(obj, c10);
        c10.position(0);
        return c10;
    }

    public static IntBuffer p(A obj, int numVerticesPerFace) {
        IntBuffer c10 = c(obj.getNumFaces() * numVerticesPerFace);
        q(obj, c10);
        c10.position(0);
        return c10;
    }

    public static void q(A obj, IntBuffer target) {
        for (int i10 = 0; i10 < obj.getNumFaces(); i10++) {
            q b10 = obj.b(i10);
            for (int i11 = 0; i11 < b10.a(); i11++) {
                target.put(b10.f(i11));
            }
        }
    }

    public static int[] r(A obj) {
        int[] iArr = new int[D(obj)];
        q(obj, IntBuffer.wrap(iArr));
        return iArr;
    }

    public static int[] s(A obj, int numVerticesPerFace) {
        int[] iArr = new int[obj.getNumFaces() * numVerticesPerFace];
        q(obj, IntBuffer.wrap(iArr));
        return iArr;
    }

    public static FloatBuffer t(A obj) {
        FloatBuffer b10 = b(obj.x() * 3);
        u(obj, b10);
        b10.position(0);
        return b10;
    }

    public static void u(A obj, FloatBuffer target) {
        for (int i10 = 0; i10 < obj.x(); i10++) {
            i o10 = obj.o(i10);
            target.put(o10.getX());
            target.put(o10.getY());
            target.put(o10.getZ());
        }
    }

    public static float[] v(A obj) {
        float[] fArr = new float[obj.x() * 3];
        u(obj, FloatBuffer.wrap(fArr));
        return fArr;
    }

    public static int[] w(A obj) {
        int[] iArr = new int[obj.getNumFaces()];
        for (int i10 = 0; i10 < obj.getNumFaces(); i10++) {
            iArr[i10] = obj.b(i10).a();
        }
        return iArr;
    }

    public static FloatBuffer x(A obj, int dimensions) {
        return y(obj, dimensions, false);
    }

    public static FloatBuffer y(A obj, int dimensions, boolean flipY) {
        FloatBuffer b10 = b(obj.h() * dimensions);
        A(obj, b10, dimensions, flipY);
        b10.position(0);
        return b10;
    }

    public static void z(A obj, FloatBuffer target, int dimensions) {
        A(obj, target, dimensions, false);
    }
}
