package wn;

import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;

public class I {
    public static void a(float[] e02, float[] a10, float[] verts, int i10) {
        e02[0] = a10[0] + verts[i10];
        e02[1] = a10[1] + verts[i10 + 1];
        e02[2] = a10[2] + verts[i10 + 2];
    }

    public static void b(float[] out, int n10, NativeFloatBuffer in2, int m10) {
        out[n10] = in2.get(m10);
        out[n10 + 1] = in2.get(m10 + 1);
        out[n10 + 2] = in2.get(m10 + 2);
    }

    public static void c(float[] out, int n10, float[] in2, int m10) {
        out[n10] = in2[m10];
        out[n10 + 1] = in2[m10 + 1];
        out[n10 + 2] = in2[m10 + 2];
    }

    public static void d(float[] out, NativeFloatBuffer in2, int i10) {
        b(out, 0, in2, i10);
    }

    public static void e(float[] out, float[] in2) {
        c(out, 0, in2, 0);
    }

    public static void f(float[] out, float[] in2, int i10) {
        c(out, 0, in2, i10);
    }

    public static void g(float[] dest, float[] v12, float[] v22) {
        float f10 = v12[1];
        float f11 = v22[2];
        float f12 = v12[2];
        dest[0] = (f10 * f11) - (v22[1] * f12);
        float f13 = v22[0];
        float f14 = v12[0];
        dest[1] = (f12 * f13) - (f11 * f14);
        dest[2] = (f14 * v22[1]) - (v12[1] * f13);
    }

    public static float h(float[] v12, float[] v22) {
        return (v12[0] * v22[0]) + (v12[1] * v22[1]) + (v12[2] * v22[2]);
    }

    public static void i(float[] a10, NativeFloatBuffer b10, int i10) {
        a10[0] = Math.max(a10[0], b10.get(i10));
        a10[1] = Math.max(a10[1], b10.get(i10 + 1));
        a10[2] = Math.max(a10[2], b10.get(i10 + 2));
    }

    public static void j(float[] a10, float[] b10, int i10) {
        a10[0] = Math.max(a10[0], b10[i10]);
        a10[1] = Math.max(a10[1], b10[i10 + 1]);
        a10[2] = Math.max(a10[2], b10[i10 + 2]);
    }

    public static void k(float[] a10, NativeFloatBuffer b10, int i10) {
        a10[0] = Math.min(a10[0], b10.get(i10));
        a10[1] = Math.min(a10[1], b10.get(i10 + 1));
        a10[2] = Math.min(a10[2], b10.get(i10 + 2));
    }

    public static void l(float[] a10, float[] b10, int i10) {
        a10[0] = Math.min(a10[0], b10[i10]);
        a10[1] = Math.min(a10[1], b10[i10 + 1]);
        a10[2] = Math.min(a10[2], b10[i10 + 2]);
    }

    public static void m(float[] v10) {
        float f10 = v10[0];
        float f11 = v10[1];
        float f12 = v10[2];
        float sqrt = (float) (1.0d / Math.sqrt(((f10 * f10) + (f11 * f11)) + (f12 * f12)));
        v10[0] = v10[0] * sqrt;
        v10[1] = v10[1] * sqrt;
        v10[2] = v10[2] * sqrt;
    }

    public static void n(float[] e02, NativeFloatBuffer verts, int i10, int j10) {
        e02[0] = verts.get(i10) - verts.get(j10);
        e02[1] = verts.get(i10 + 1) - verts.get(j10 + 1);
        e02[2] = verts.get(i10 + 2) - verts.get(j10 + 2);
    }

    public static void o(float[] e02, float[] verts, int i10, int j10) {
        e02[0] = verts[i10] - verts[j10];
        e02[1] = verts[i10 + 1] - verts[j10 + 1];
        e02[2] = verts[i10 + 2] - verts[j10 + 2];
    }

    public static void p(float[] e02, float[] i10, float[] verts, int j10) {
        e02[0] = i10[0] - verts[j10];
        e02[1] = i10[1] - verts[j10 + 1];
        e02[2] = i10[2] - verts[j10 + 2];
    }
}
