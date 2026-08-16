package Ib;

import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.IntBuffer;

public class k {

    public static final float f9015a = 5.0f;

    public class a implements Runnable {

        public final Vertex f9016b;

        public final float f9017c;

        public final Vertex f9018d;

        public a(final Vertex val$src, final float val$coplanarDeg, final Vertex val$out) {
            this.f9016b = val$src;
            this.f9017c = val$coplanarDeg;
            this.f9018d = val$out;
        }

        @Override
        public void run() {
            int i10;
            NativeFloatBuffer i12 = this.f9016b.i1();
            NativeIntBuffer V02 = this.f9016b.V0();
            if (i12 == null) {
                throw new IllegalArgumentException("src.getVertices() == null");
            }
            if (V02 == null) {
                throw new IllegalArgumentException("src.getTriangles() == null");
            }
            int capacity = i12.capacity() / 3;
            int capacity2 = V02.capacity();
            if (capacity <= 0) {
                throw new IllegalArgumentException("vertexCount <= 0");
            }
            if (capacity2 % 3 != 0) {
                throw new IllegalArgumentException("Triangle index count is not multiple of 3");
            }
            int i11 = capacity2 / 3;
            int i13 = i11 * 36;
            IntBuffer asIntBuffer = ByteBuffer.allocateDirect(i13).order(ByteOrder.nativeOrder()).asIntBuffer();
            int i14 = 0;
            while (true) {
                i10 = 2;
                if (i14 >= i11) {
                    break;
                }
                int i15 = i14 * 3;
                int i16 = V02.get(i15);
                int i17 = V02.get(i15 + 1);
                int i18 = V02.get(i15 + 2);
                if (k.t(i16, capacity, i14) && k.t(i17, capacity, i14) && k.t(i18, capacity, i14)) {
                    k.q(asIntBuffer, i16, i17, i18);
                    k.q(asIntBuffer, i17, i18, i16);
                    k.q(asIntBuffer, i18, i16, i17);
                }
                i14++;
            }
            asIntBuffer.flip();
            k.r(asIntBuffer, ByteBuffer.allocateDirect(i13).order(ByteOrder.nativeOrder()).asIntBuffer());
            float cos = (float) Math.cos(Math.toRadians(this.f9017c));
            IntBuffer asIntBuffer2 = ByteBuffer.allocateDirect(i11 * 24).order(ByteOrder.nativeOrder()).asIntBuffer();
            float[] fArr = new float[3];
            float[] fArr2 = new float[3];
            int limit = asIntBuffer.limit();
            int i19 = 0;
            while (i19 < limit) {
                int i20 = asIntBuffer.get(i19);
                int i21 = asIntBuffer.get(i19 + 1);
                int i22 = asIntBuffer.get(i19 + 2);
                i19 += 3;
                int i23 = Integer.MIN_VALUE;
                int i24 = 1;
                while (i19 < limit) {
                    if (asIntBuffer.get(i19) != i20 || asIntBuffer.get(i19 + 1) != i21) {
                        i10 = 2;
                        break;
                    }
                    if (i24 == 1) {
                        i23 = asIntBuffer.get(i19 + 2);
                    }
                    i24++;
                    i19 += 3;
                    i10 = 2;
                }
                if (i24 == i10 && i22 != i23) {
                    k.o(i12, i20, i21, i22, fArr);
                    k.o(i12, i20, i21, i23, fArr2);
                    if (Math.abs(k.n(k.p(fArr, fArr2), -1.0f, 1.0f)) >= cos) {
                    }
                }
                asIntBuffer2.put(i20);
                asIntBuffer2.put(i21);
            }
            asIntBuffer2.flip();
            int remaining = asIntBuffer2.remaining();
            NativeIntBuffer nativeIntBuffer = new NativeIntBuffer(remaining);
            for (int i25 = 0; i25 < remaining; i25++) {
                nativeIntBuffer.set(i25, asIntBuffer2.get(i25));
            }
            this.f9018d.q2(i12);
            this.f9018d.i2(nativeIntBuffer);
            this.f9018d.apply();
        }
    }

    public static Vertex g() {
        return h(0.5f, 0.5f, 0.5f);
    }

    public static Vertex h(float hx, float hy, float hz) {
        NativeFloatBuffer nativeFloatBuffer = new NativeFloatBuffer(24);
        float f10 = -hx;
        nativeFloatBuffer.set(0, f10);
        float f11 = -hy;
        nativeFloatBuffer.set(1, f11);
        float f12 = -hz;
        nativeFloatBuffer.set(2, f12);
        nativeFloatBuffer.set(3, hx);
        nativeFloatBuffer.set(4, f11);
        nativeFloatBuffer.set(5, f12);
        nativeFloatBuffer.set(6, hx);
        nativeFloatBuffer.set(7, hy);
        nativeFloatBuffer.set(8, f12);
        nativeFloatBuffer.set(9, f10);
        nativeFloatBuffer.set(10, hy);
        nativeFloatBuffer.set(11, f12);
        nativeFloatBuffer.set(12, f10);
        nativeFloatBuffer.set(13, f11);
        nativeFloatBuffer.set(14, hz);
        nativeFloatBuffer.set(15, hx);
        nativeFloatBuffer.set(16, f11);
        nativeFloatBuffer.set(17, hz);
        nativeFloatBuffer.set(18, hx);
        nativeFloatBuffer.set(19, hy);
        nativeFloatBuffer.set(20, hz);
        nativeFloatBuffer.set(21, f10);
        nativeFloatBuffer.set(22, hy);
        nativeFloatBuffer.set(23, hz);
        int[] iArr = {0, 1, 1, 2, 2, 3, 3, 0, 4, 5, 5, 6, 6, 7, 7, 4, 0, 4, 1, 5, 2, 6, 3, 7};
        NativeIntBuffer nativeIntBuffer = new NativeIntBuffer(24);
        for (int i10 = 0; i10 < 24; i10++) {
            nativeIntBuffer.set(i10, iArr[i10]);
        }
        Vertex vertex = new Vertex();
        vertex.q2(nativeFloatBuffer);
        vertex.i2(nativeIntBuffer);
        vertex.apply();
        return vertex;
    }

    public static Vertex i(float sx, float sy, float sz) {
        return h(sx * 0.5f, sy * 0.5f, sz * 0.5f);
    }

    public static Vertex j(Vertex src) {
        return k(src, 5.0f);
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x00dc, code lost:
    
        if (r12 == r14) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00de, code lost:
    
        o(r0, r10, r11, r12, r4);
        o(r0, r10, r11, r14, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00f6, code lost:
    
        if (java.lang.Math.abs(n(p(r4, r3), -1.0f, 1.0f)) < r1) goto L62;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Vertex k(Vertex src, float coplanarDeg) {
        if (src == null) {
            throw new IllegalArgumentException("src == null");
        }
        NativeFloatBuffer i12 = src.i1();
        NativeIntBuffer V02 = src.V0();
        if (i12 == null) {
            throw new IllegalArgumentException("src.getVertices() == null");
        }
        if (V02 == null) {
            throw new IllegalArgumentException("src.getTriangles() == null");
        }
        int capacity = i12.capacity() / 3;
        int capacity2 = V02.capacity();
        if (capacity <= 0) {
            throw new IllegalArgumentException("vertexCount <= 0");
        }
        if (capacity2 % 3 != 0) {
            throw new IllegalArgumentException("Triangle index count is not multiple of 3");
        }
        int i10 = capacity2 / 3;
        int i11 = i10 * 36;
        IntBuffer asIntBuffer = ByteBuffer.allocateDirect(i11).order(ByteOrder.nativeOrder()).asIntBuffer();
        for (int i13 = 0; i13 < i10; i13++) {
            int i14 = i13 * 3;
            int i15 = V02.get(i14);
            int i16 = V02.get(i14 + 1);
            int i17 = V02.get(i14 + 2);
            if (t(i15, capacity, i13) && t(i16, capacity, i13) && t(i17, capacity, i13)) {
                q(asIntBuffer, i15, i16, i17);
                q(asIntBuffer, i16, i17, i15);
                q(asIntBuffer, i17, i15, i16);
            }
        }
        asIntBuffer.flip();
        r(asIntBuffer, ByteBuffer.allocateDirect(i11).order(ByteOrder.nativeOrder()).asIntBuffer());
        float cos = (float) Math.cos(Math.toRadians(coplanarDeg));
        IntBuffer asIntBuffer2 = ByteBuffer.allocateDirect(i10 * 24).order(ByteOrder.nativeOrder()).asIntBuffer();
        float[] fArr = new float[3];
        float[] fArr2 = new float[3];
        int limit = asIntBuffer.limit();
        int i18 = 0;
        while (i18 < limit) {
            int i19 = asIntBuffer.get(i18);
            int i20 = asIntBuffer.get(i18 + 1);
            int i21 = asIntBuffer.get(i18 + 2);
            i18 += 3;
            int i22 = Integer.MIN_VALUE;
            int i23 = 1;
            while (i18 < limit && asIntBuffer.get(i18) == i19 && asIntBuffer.get(i18 + 1) == i20) {
                if (i23 == 1) {
                    i22 = asIntBuffer.get(i18 + 2);
                }
                i23++;
                i18 += 3;
            }
            asIntBuffer2.put(i19);
            asIntBuffer2.put(i20);
        }
        asIntBuffer2.flip();
        int remaining = asIntBuffer2.remaining();
        NativeIntBuffer nativeIntBuffer = new NativeIntBuffer(remaining);
        for (int i24 = 0; i24 < remaining; i24++) {
            nativeIntBuffer.set(i24, asIntBuffer2.get(i24));
        }
        Vertex vertex = new Vertex();
        vertex.q2(i12);
        vertex.i2(nativeIntBuffer);
        vertex.apply();
        return vertex;
    }

    public static Vertex l(Vertex src) {
        return m(src, 5.0f);
    }

    public static Vertex m(Vertex src, float coplanarDeg) {
        if (src == null) {
            throw new IllegalArgumentException("src == null");
        }
        Vertex vertex = new Vertex();
        ca.c.D(new a(src, coplanarDeg, vertex));
        return vertex;
    }

    public static float n(float x10, float lo, float hi2) {
        return Math.max(lo, Math.min(hi2, x10));
    }

    public static void o(NativeFloatBuffer vb2, int ia2, int ib2, int ic2, float[] out) {
        int i10 = ia2 * 3;
        float f10 = vb2.get(i10);
        float f11 = vb2.get(i10 + 1);
        float f12 = vb2.get(i10 + 2);
        int i11 = ib2 * 3;
        float f13 = vb2.get(i11);
        float f14 = vb2.get(i11 + 1);
        float f15 = vb2.get(i11 + 2);
        int i12 = ic2 * 3;
        float f16 = f13 - f10;
        float f17 = f14 - f11;
        float f18 = f15 - f12;
        float f19 = vb2.get(i12) - f10;
        float f20 = vb2.get(i12 + 1) - f11;
        float f21 = vb2.get(i12 + 2) - f12;
        float f22 = (f17 * f21) - (f18 * f20);
        float f23 = (f18 * f19) - (f21 * f16);
        float f24 = (f16 * f20) - (f17 * f19);
        float f25 = (f22 * f22) + (f23 * f23) + (f24 * f24);
        if (f25 <= 1.0E-20f) {
            out[0] = 0.0f;
            out[1] = 0.0f;
            out[2] = 1.0f;
        } else {
            float sqrt = (float) (1.0d / Math.sqrt(f25));
            out[0] = f22 * sqrt;
            out[1] = f23 * sqrt;
            out[2] = f24 * sqrt;
        }
    }

    public static float p(float[] a10, float[] b10) {
        return (a10[0] * b10[0]) + (a10[1] * b10[1]) + (a10[2] * b10[2]);
    }

    public static void q(IntBuffer ib2, int i02, int i12, int other) {
        int min = Math.min(i02, i12);
        int max = Math.max(i02, i12);
        ib2.put(min);
        ib2.put(max);
        ib2.put(other);
    }

    public static void r(IntBuffer edgesIB, IntBuffer tmpIB) {
        int limit = edgesIB.limit() / 3;
        if (limit <= 1) {
            return;
        }
        IntBuffer intBuffer = tmpIB;
        IntBuffer intBuffer2 = edgesIB;
        int i10 = 0;
        while (i10 < 8) {
            int i11 = (i10 % 4) * 8;
            boolean z10 = i10 >= 4;
            int[] iArr = new int[256];
            intBuffer2.position(0);
            int i12 = limit * 3;
            intBuffer2.limit(i12);
            for (int i13 = 0; i13 < limit; i13++) {
                int i14 = i13 * 3;
                int i15 = intBuffer2.get(i14);
                int i16 = intBuffer2.get(i14 + 1);
                if (!z10) {
                    i15 = i16;
                }
                int i17 = (i15 >>> i11) & 255;
                iArr[i17] = iArr[i17] + 1;
            }
            int i18 = 0;
            for (int i19 = 0; i19 < 256; i19++) {
                int i20 = iArr[i19];
                iArr[i19] = i18;
                i18 += i20;
            }
            intBuffer2.position(0);
            intBuffer2.limit(i12);
            intBuffer.position(0);
            intBuffer.limit(i12);
            for (int i21 = 0; i21 < limit; i21++) {
                int i22 = i21 * 3;
                int i23 = intBuffer2.get(i22);
                int i24 = intBuffer2.get(i22 + 1);
                int i25 = intBuffer2.get(i22 + 2);
                int i26 = ((z10 ? i23 : i24) >>> i11) & 255;
                int i27 = iArr[i26];
                iArr[i26] = i27 + 1;
                int i28 = i27 * 3;
                intBuffer.put(i28, i23);
                intBuffer.put(i28 + 1, i24);
                intBuffer.put(i28 + 2, i25);
            }
            i10++;
            IntBuffer intBuffer3 = intBuffer;
            intBuffer = intBuffer2;
            intBuffer2 = intBuffer3;
        }
        if (intBuffer2 == edgesIB) {
            edgesIB.position(0);
            edgesIB.limit(limit * 3);
            return;
        }
        intBuffer2.position(0);
        int i29 = limit * 3;
        intBuffer2.limit(i29);
        edgesIB.position(0);
        edgesIB.limit(i29);
        edgesIB.put(intBuffer2);
        edgesIB.flip();
    }

    public static void s(int idx, int vertexCount, int tri) {
        if (idx < 0 || idx >= vertexCount) {
            throw new IllegalArgumentException("Triangle index out of range at tri " + tri + " (idx=" + idx + ")");
        }
    }

    public static boolean t(int idx, int vertexCount, int tri) {
        return idx >= 0 && idx < vertexCount;
    }
}
