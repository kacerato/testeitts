package jf;

import androidx.constraintlayout.motion.widget.Key;
import com.jme3.math.Matrix3f;
import com.jme3.math.Quaternion;
import com.jme3.math.Transform;
import com.jme3.math.Vector3f;
import com.jme3.math.Vector4f;
import com.jme3.util.BufferUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;
import java.util.Set;
import java.util.TreeSet;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.commons.math3.linear.ConjugateGradient;
import p000if.C13702E;
import p000if.C13724t;

public final class d {

    public static final int f92898a = 3;

    public static final Logger f92899b = Logger.getLogger(d.class.getName());

    public static final boolean f92900c = false;

    public static Matrix3f a(FloatBuffer floatBuffer, int i10, int i11, Matrix3f matrix3f) {
        C13702E.t(floatBuffer, "buffer");
        C13702E.i(i10, "start position", 0, i11 - 6);
        C13702E.i(i11, "end position", i10 + 6, floatBuffer.capacity());
        if (matrix3f == null) {
            matrix3f = new Matrix3f();
        }
        int i12 = i11 - i10;
        C13702E.H(i12 % 3 == 0, "numFloats a multiple of 3");
        int i13 = i12 / 3;
        Vector3f n10 = n(floatBuffer, i10, i11, null);
        matrix3f.zero();
        for (int i14 = 0; i14 < i13; i14++) {
            int i15 = (i14 * 3) + i10;
            float[] fArr = {floatBuffer.get(i15) - n10.f81611x, floatBuffer.get(i15 + 1) - n10.f81612y, floatBuffer.get(i15 + 2) - n10.f81613z};
            for (int i16 = 0; i16 < 3; i16++) {
                for (int i17 = i16; i17 < 3; i17++) {
                    matrix3f.set(i16, i17, matrix3f.get(i16, i17) + (fArr[i16] * fArr[i17]));
                }
            }
        }
        float f10 = i13 - 1;
        for (int i18 = 0; i18 < 3; i18++) {
            for (int i19 = i18; i19 < 3; i19++) {
                float f11 = matrix3f.get(i18, i19) / f10;
                matrix3f.set(i18, i19, f11);
                matrix3f.set(i19, i18, f11);
            }
        }
        return matrix3f;
    }

    public static float b(FloatBuffer floatBuffer, int i10, int i11, int i12) {
        float f10;
        C13702E.t(floatBuffer, "buffer");
        C13702E.i(i10, "start position", 0, i11);
        C13702E.i(i11, "end position", i10, floatBuffer.capacity());
        C13702E.a(i12, "axis index");
        int i13 = i11 - i10;
        C13702E.H(i13 % 3 == 0, "numFloats a multiple of 3");
        int i14 = i13 / 3;
        double d10 = 0.0d;
        for (int i15 = 0; i15 < i14; i15++) {
            int i16 = (i15 * 3) + i10;
            float f11 = floatBuffer.get(i16);
            float f12 = floatBuffer.get(i16 + 1);
            float f13 = floatBuffer.get(i16 + 2);
            if (i12 == 0) {
                f10 = (f12 * f12) + (f13 * f13);
            } else if (i12 == 1) {
                f10 = (f11 * f11) + (f13 * f13);
            } else {
                if (i12 != 2) {
                    throw new RuntimeException(Integer.toString(i12));
                }
                f10 = (f11 * f11) + (f12 * f12);
            }
            double d11 = f10;
            if (d11 > d10) {
                d10 = d11;
            }
        }
        return (float) Math.sqrt(d10);
    }

    public static o c(FloatBuffer floatBuffer, int i10, int i11) {
        C13702E.t(floatBuffer, "buffer");
        C13702E.i(i10, "start position", 0, i11);
        C13702E.i(i11, "end position", i10, floatBuffer.capacity());
        int i12 = i11 - i10;
        C13702E.H(i12 % 3 == 0, "numFloats a multiple of 3");
        int i13 = i12 / 3;
        o qVar = i13 > 20 ? new q(i13) : new p(i13, false);
        Vector3f vector3f = new Vector3f();
        for (int i14 = 0; i14 < i13; i14++) {
            g(floatBuffer, (i14 * 3) + i10, vector3f);
            qVar.a(vector3f);
        }
        return qVar;
    }

    public static FloatBuffer d(int i10, FloatBuffer floatBuffer) {
        C13702E.q(i10, "minimum number of elements");
        if (floatBuffer == null) {
            return BufferUtils.createFloatBuffer(i10);
        }
        int capacity = floatBuffer.capacity();
        if (capacity >= i10) {
            return floatBuffer;
        }
        f92899b.log(Level.SEVERE, "capacity={0}", Integer.valueOf(capacity));
        throw new IllegalArgumentException(String.format("Buffer capacity must be greater than or equal to %d.", Integer.valueOf(i10)));
    }

    public static void e(FloatBuffer floatBuffer, float... fArr) {
        C13702E.t(floatBuffer, "buffer");
        C13702E.t(fArr, "float values");
        int limit = floatBuffer.limit();
        int length = fArr.length;
        int i10 = 0;
        for (int i11 = 0; i11 < limit; i11++) {
            floatBuffer.put(i11, fArr[i10]);
            i10 = (i10 + 1) % length;
        }
    }

    public static int f(IntBuffer intBuffer, int i10, int i11, int i12) {
        C13702E.t(intBuffer, "buffer");
        int i13 = 0;
        C13702E.i(i10, "start position", 0, i11);
        C13702E.i(i11, "end position", i10, intBuffer.capacity());
        while (i10 < i11) {
            if (intBuffer.get(i10) == i12) {
                i13++;
            }
            i10++;
        }
        return i13;
    }

    public static void g(FloatBuffer floatBuffer, int i10, Vector3f vector3f) {
        C13702E.t(floatBuffer, "buffer");
        C13702E.q(i10, "start position");
        C13702E.t(vector3f, "store vector");
        vector3f.f81611x = floatBuffer.get(i10);
        vector3f.f81612y = floatBuffer.get(i10 + 1);
        vector3f.f81613z = floatBuffer.get(i10 + 2);
    }

    public static boolean h(FloatBuffer floatBuffer, int i10, int i11) {
        C13702E.t(floatBuffer, "buffer");
        C13702E.i(i10, "start position", 0, i11);
        C13702E.i(i11, "end position", i10, floatBuffer.capacity());
        while (i10 < i11) {
            if (!Float.isFinite(floatBuffer.get(i10))) {
                return false;
            }
            i10++;
        }
        return true;
    }

    public static Set<b> i(FloatBuffer floatBuffer, int i10, int i11, float f10) {
        C13702E.t(floatBuffer, "buffer");
        C13702E.p(f10, "max distance");
        int i12 = 0;
        C13702E.i(i10, "start position", 0, i11);
        C13702E.i(i11, "end position", i10, floatBuffer.capacity());
        int i13 = i11 - i10;
        C13702E.H(i13 % 3 == 0, "numFloats a multiple of 3");
        double M10 = f.M(f10);
        int i14 = i13 / 3;
        Vector3f vector3f = new Vector3f();
        Vector3f vector3f2 = new Vector3f();
        TreeSet treeSet = new TreeSet();
        while (i12 < i14) {
            g(floatBuffer, (i12 * 3) + i10, vector3f);
            int i15 = i12 + 1;
            for (int i16 = i15; i16 < i14; i16++) {
                g(floatBuffer, (i16 * 3) + i10, vector3f2);
                if (h.o(vector3f, vector3f2) <= M10) {
                    treeSet.add(new b(i12, i16));
                }
            }
            i12 = i15;
        }
        return treeSet;
    }

    public static ByteBuffer j(String str) {
        FileInputStream fileInputStream;
        String s10 = C13724t.s(str);
        File file = new File(str);
        if (!file.exists()) {
            throw new RuntimeException("file doesn't exist:  " + s10);
        }
        if (!file.isFile()) {
            throw new RuntimeException("file isn't normal:  " + s10);
        }
        if (!file.canRead()) {
            throw new RuntimeException("file isn't readable:  " + s10);
        }
        FileInputStream fileInputStream2 = null;
        try {
            fileInputStream = new FileInputStream(file);
        } catch (IOException unused) {
            fileInputStream = null;
        }
        if (fileInputStream == null) {
            throw new RuntimeException("no input stream for file:  " + s10);
        }
        byte[] bArr = new byte[4096];
        int i10 = 0;
        while (true) {
            try {
                int read = fileInputStream.read(bArr);
                if (read < 0) {
                    break;
                }
                i10 += read;
            } catch (IOException unused2) {
                throw new RuntimeException("failed to read file " + s10);
            }
        }
        fileInputStream.close();
        ByteBuffer createByteBuffer = BufferUtils.createByteBuffer(i10);
        try {
            fileInputStream2 = new FileInputStream(file);
        } catch (IOException unused3) {
        }
        if (fileInputStream2 == null) {
            throw new RuntimeException("no input stream for file:  " + s10);
        }
        while (true) {
            try {
                int read2 = fileInputStream2.read(bArr);
                if (read2 < 0) {
                    fileInputStream2.close();
                    createByteBuffer.flip();
                    return createByteBuffer;
                }
                if (read2 == 4096) {
                    createByteBuffer.put(bArr);
                } else {
                    for (int i11 = 0; i11 < read2; i11++) {
                        createByteBuffer.put(bArr[i11]);
                    }
                }
            } catch (IOException unused4) {
                throw new RuntimeException("failed to read file " + s10);
            }
        }
    }

    public static Vector3f k(FloatBuffer floatBuffer, int i10, int i11, Vector3f vector3f) {
        C13702E.t(floatBuffer, "buffer");
        C13702E.i(i10, "start position", 0, i11);
        C13702E.i(i11, "end position", i10, floatBuffer.capacity());
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        int i12 = i11 - i10;
        C13702E.H(i12 % 3 == 0, "numFloats a multiple of 3");
        int i13 = i12 / 3;
        vector3f.zero();
        for (int i14 = 0; i14 < i13; i14++) {
            int i15 = (i14 * 3) + i10;
            float f10 = floatBuffer.get(i15);
            float f11 = floatBuffer.get(i15 + 1);
            float f12 = floatBuffer.get(i15 + 2);
            vector3f.f81611x = Math.max(vector3f.f81611x, Math.abs(f10));
            vector3f.f81612y = Math.max(vector3f.f81612y, Math.abs(f11));
            vector3f.f81613z = Math.max(vector3f.f81613z, Math.abs(f12));
        }
        return vector3f;
    }

    public static float l(FloatBuffer floatBuffer, int i10, int i11) {
        C13702E.t(floatBuffer, "buffer");
        C13702E.i(i10, "start position", 0, i11);
        C13702E.i(i11, "end position", i10, floatBuffer.capacity());
        int i12 = i11 - i10;
        C13702E.H(i12 % 3 == 0, "numFloats a multiple of 3");
        int i13 = i12 / 3;
        double d10 = 0.0d;
        for (int i14 = 0; i14 < i13; i14++) {
            int i15 = (i14 * 3) + i10;
            double P10 = f.P(floatBuffer.get(i15), floatBuffer.get(i15 + 1), floatBuffer.get(i15 + 2));
            if (P10 > d10) {
                d10 = P10;
            }
        }
        return (float) Math.sqrt(d10);
    }

    public static void m(FloatBuffer floatBuffer, int i10, int i11, Vector3f vector3f, Vector3f vector3f2) {
        C13702E.t(floatBuffer, "buffer");
        C13702E.i(i10, "start position", 0, i11);
        C13702E.i(i11, "end position", i10, floatBuffer.capacity());
        int i12 = i11 - i10;
        C13702E.H(i12 % 3 == 0, "numFloats a multiple of 3");
        vector3f.set(Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY);
        vector3f2.set(Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY);
        Vector3f vector3f3 = new Vector3f();
        int i13 = i12 / 3;
        for (int i14 = 0; i14 < i13; i14++) {
            g(floatBuffer, (i14 * 3) + i10, vector3f3);
            h.b(vector3f2, vector3f3);
            h.a(vector3f, vector3f3);
        }
    }

    public static Vector3f n(FloatBuffer floatBuffer, int i10, int i11, Vector3f vector3f) {
        C13702E.t(floatBuffer, "buffer");
        C13702E.i(i10, "start position", 0, i11 - 3);
        C13702E.i(i11, "end position", i10 + 3, floatBuffer.capacity());
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        int i12 = i11 - i10;
        C13702E.H(i12 % 3 == 0, "numFloats a multiple of 3");
        int i13 = i12 / 3;
        vector3f.zero();
        for (int i14 = 0; i14 < i13; i14++) {
            int i15 = (i14 * 3) + i10;
            vector3f.addLocal(floatBuffer.get(i15), floatBuffer.get(i15 + 1), floatBuffer.get(i15 + 2));
        }
        vector3f.divideLocal(i13);
        return vector3f;
    }

    public static void o(FloatBuffer floatBuffer, int i10, int i11) {
        C13702E.t(floatBuffer, "buffer");
        C13702E.i(i10, "start position", 0, i11 - 3);
        C13702E.i(i11, "end position", i10 + 3, floatBuffer.capacity());
        int i12 = i11 - i10;
        C13702E.H(i12 % 3 == 0, "numFloats a multiple of 3");
        int i13 = i12 / 3;
        Vector3f vector3f = new Vector3f();
        for (int i14 = 0; i14 < i13; i14++) {
            int i15 = (i14 * 3) + i10;
            g(floatBuffer, i15, vector3f);
            h.P(vector3f);
            p(floatBuffer, i15, vector3f);
        }
    }

    public static void p(FloatBuffer floatBuffer, int i10, Vector3f vector3f) {
        C13702E.t(floatBuffer, "buffer");
        C13702E.q(i10, "start position");
        C13702E.t(vector3f, ConjugateGradient.VECTOR);
        floatBuffer.put(i10, vector3f.f81611x);
        floatBuffer.put(i10 + 1, vector3f.f81612y);
        floatBuffer.put(i10 + 2, vector3f.f81613z);
    }

    public static void q(FloatBuffer floatBuffer, int i10, Vector4f vector4f) {
        C13702E.t(floatBuffer, "buffer");
        C13702E.q(i10, "start position");
        C13702E.t(vector4f, ConjugateGradient.VECTOR);
        floatBuffer.put(i10, vector4f.f81615x);
        floatBuffer.put(i10 + 1, vector4f.f81616y);
        floatBuffer.put(i10 + 2, vector4f.f81617z);
        floatBuffer.put(i10 + 3, vector4f.f81614w);
    }

    public static int r(Buffer buffer) {
        C13702E.t(buffer, "buffer");
        if (buffer instanceof ByteBuffer) {
            return ((ByteBuffer) buffer).get() & 255;
        }
        if (buffer instanceof IntBuffer) {
            return ((IntBuffer) buffer).get();
        }
        if (buffer instanceof ShortBuffer) {
            return ((ShortBuffer) buffer).get() & 65535;
        }
        throw new IllegalArgumentException(buffer.getClass().getName());
    }

    public static void s(FloatBuffer floatBuffer, int i10, int i11, Quaternion quaternion) {
        C13702E.t(floatBuffer, "buffer");
        C13702E.t(quaternion, Key.ROTATION);
        C13702E.i(i10, "start position", 0, i11);
        C13702E.i(i11, "end position", i10, floatBuffer.capacity());
        int i12 = i11 - i10;
        C13702E.H(i12 % 3 == 0, "numFloats a multiple of 3");
        int i13 = i12 / 3;
        Vector3f vector3f = new Vector3f();
        for (int i14 = 0; i14 < i13; i14++) {
            int i15 = (i14 * 3) + i10;
            g(floatBuffer, i15, vector3f);
            g.r(quaternion, vector3f, vector3f);
            p(floatBuffer, i15, vector3f);
        }
    }

    public static void t(FloatBuffer floatBuffer, int i10, int i11, Quaternion quaternion) {
        C13702E.t(floatBuffer, "buffer");
        C13702E.t(quaternion, Key.ROTATION);
        C13702E.i(i10, "start position", 0, i11);
        C13702E.i(i11, "end position", i10, floatBuffer.capacity());
        int i12 = i11 - i10;
        C13702E.H(i12 % 4 == 0, "numFloats a multiple of 4");
        int i13 = i12 / 4;
        Vector3f vector3f = new Vector3f();
        for (int i14 = 0; i14 < i13; i14++) {
            int i15 = (i14 * 4) + i10;
            g(floatBuffer, i15, vector3f);
            g.r(quaternion, vector3f, vector3f);
            p(floatBuffer, i15, vector3f);
        }
    }

    public static void u(FloatBuffer floatBuffer, int i10, int i11, Vector3f vector3f) {
        C13702E.t(floatBuffer, "buffer");
        C13702E.d(vector3f, "scale factors");
        C13702E.i(i10, "start position", 0, i11);
        C13702E.i(i11, "end position", i10, floatBuffer.capacity());
        int i12 = i11 - i10;
        C13702E.H(i12 % 3 == 0, "numFloats a multiple of 3");
        Vector3f vector3f2 = new Vector3f();
        int i13 = i12 / 3;
        for (int i14 = 0; i14 < i13; i14++) {
            int i15 = (i14 * 3) + i10;
            g(floatBuffer, i15, vector3f2);
            vector3f.mult(vector3f2, vector3f2);
            p(floatBuffer, i15, vector3f2);
        }
    }

    public static float[] v(FloatBuffer floatBuffer, int i10, int i11) {
        C13702E.t(floatBuffer, "buffer");
        C13702E.i(i10, "start position", 0, i11);
        C13702E.i(i11, "end position", i10, floatBuffer.capacity());
        int i12 = i11 - i10;
        float[] fArr = new float[i12];
        for (int i13 = 0; i13 < i12; i13++) {
            fArr[i13] = floatBuffer.get(i10 + i13);
        }
        return fArr;
    }

    public static int[] w(IntBuffer intBuffer, int i10, int i11) {
        C13702E.t(intBuffer, "buffer");
        C13702E.i(i10, "start position", 0, i11);
        C13702E.i(i11, "end position", i10, intBuffer.capacity());
        int i12 = i11 - i10;
        int[] iArr = new int[i12];
        for (int i13 = 0; i13 < i12; i13++) {
            iArr[i13] = intBuffer.get(i10 + i13);
        }
        return iArr;
    }

    public static void x(FloatBuffer floatBuffer, int i10, int i11, Transform transform) {
        C13702E.t(floatBuffer, "buffer");
        C13702E.t(transform, "transform");
        C13702E.i(i10, "start position", 0, i11);
        C13702E.i(i11, "end position", i10, floatBuffer.capacity());
        int i12 = i11 - i10;
        C13702E.H(i12 % 3 == 0, "numFloats a multiple of 3");
        Vector3f vector3f = new Vector3f();
        int i13 = i12 / 3;
        for (int i14 = 0; i14 < i13; i14++) {
            int i15 = (i14 * 3) + i10;
            g(floatBuffer, i15, vector3f);
            f.S(transform, vector3f, vector3f);
            p(floatBuffer, i15, vector3f);
        }
    }

    public static void y(FloatBuffer floatBuffer, int i10, int i11, Vector3f vector3f) {
        C13702E.t(floatBuffer, "buffer");
        C13702E.i(i10, "start position", 0, i11);
        C13702E.i(i11, "end position", i10, floatBuffer.capacity());
        C13702E.d(vector3f, "offset vector");
        int i12 = i11 - i10;
        C13702E.H(i12 % 3 == 0, "numFloats a multiple of 3");
        int i13 = i12 / 3;
        Vector3f vector3f2 = new Vector3f();
        for (int i14 = 0; i14 < i13; i14++) {
            int i15 = (i14 * 3) + i10;
            g(floatBuffer, i15, vector3f2);
            vector3f2.addLocal(vector3f);
            p(floatBuffer, i15, vector3f2);
        }
    }
}
