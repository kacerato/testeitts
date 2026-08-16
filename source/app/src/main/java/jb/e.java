package Jb;

import com.google.android.filament.Box;
import com.google.android.filament.IndexBuffer;
import com.google.android.filament.VertexBuffer;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentVertexBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.IntBuffer;

public class e {

    public static final float f10423i = 5.0f;

    public static final int f10424j = 12;

    public final NativeFloatBuffer f10425a;

    public final NativeIntBuffer f10426b;

    public final float f10427c;

    public int f10428d;

    public int f10429e;

    public ByteBuffer f10430f;

    public ByteBuffer f10431g;

    public Box f10432h;

    public interface a {
        void a(FilamentVertexBuffer vertexBuffer, Rb.d indexBuffer, Box boundingBox);
    }

    public e(NativeFloatBuffer verticesBuffer, NativeIntBuffer trianglesBuffer) {
        this(verticesBuffer, trianglesBuffer, 5.0f);
    }

    public static float c(float x10, float lo, float hi2) {
        return Math.max(lo, Math.min(hi2, x10));
    }

    public static void d(NativeFloatBuffer vb2, int ia2, int ib2, int ic2, float[] out) {
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

    public static float e(float[] a10, float[] b10) {
        return (a10[0] * b10[0]) + (a10[1] * b10[1]) + (a10[2] * b10[2]);
    }

    public static void i(int i10, ByteBuffer byteBuffer, int i11, ByteBuffer byteBuffer2, a aVar, Box box) {
        if (Qb.a.f() == null) {
            return;
        }
        FilamentVertexBuffer filamentVertexBuffer = new FilamentVertexBuffer(new VertexBuffer.b().h(i10).c(1).b(VertexBuffer.c.POSITION, 0, VertexBuffer.a.FLOAT3, 0, 12));
        filamentVertexBuffer.q(0, byteBuffer);
        Rb.d dVar = new Rb.d(new IndexBuffer.a().c(i11).a(IndexBuffer.a.b.UINT));
        dVar.r(byteBuffer2);
        aVar.a(filamentVertexBuffer, dVar, box);
    }

    public static void k(IntBuffer ib2, int i02, int i12, int other) {
        int min = Math.min(i02, i12);
        int max = Math.max(i02, i12);
        ib2.put(min);
        ib2.put(max);
        ib2.put(other);
    }

    public static void l(IntBuffer edgesIB, IntBuffer tmpIB) {
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
            for (int i12 = 0; i12 < limit; i12++) {
                int i13 = i12 * 3;
                int i14 = intBuffer2.get(i13);
                int i15 = intBuffer2.get(i13 + 1);
                if (!z10) {
                    i14 = i15;
                }
                int i16 = (i14 >>> i11) & 255;
                iArr[i16] = iArr[i16] + 1;
            }
            int i17 = 0;
            for (int i18 = 0; i18 < 256; i18++) {
                int i19 = iArr[i18];
                iArr[i18] = i17;
                i17 += i19;
            }
            for (int i20 = 0; i20 < limit; i20++) {
                int i21 = i20 * 3;
                int i22 = intBuffer2.get(i21);
                int i23 = intBuffer2.get(i21 + 1);
                int i24 = intBuffer2.get(i21 + 2);
                int i25 = ((z10 ? i22 : i23) >>> i11) & 255;
                int i26 = iArr[i25];
                iArr[i25] = i26 + 1;
                int i27 = i26 * 3;
                intBuffer.put(i27, i22);
                intBuffer.put(i27 + 1, i23);
                intBuffer.put(i27 + 2, i24);
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
        edgesIB.position(0);
        int i28 = limit * 3;
        edgesIB.limit(i28);
        intBuffer2.position(0);
        intBuffer2.limit(i28);
        edgesIB.put(intBuffer2);
        edgesIB.flip();
    }

    public void b(final a listener) {
        ByteBuffer byteBuffer;
        final int i10;
        final int i11;
        if (listener == null) {
            throw new NullPointerException("listener can't be null");
        }
        final Box box = this.f10432h;
        if (box == null || (byteBuffer = this.f10430f) == null || this.f10431g == null || (i10 = this.f10428d) == 0 || (i11 = this.f10429e) == 0) {
            return;
        }
        final ByteBuffer order = byteBuffer.duplicate().order(ByteOrder.nativeOrder());
        final ByteBuffer order2 = this.f10431g.duplicate().order(ByteOrder.nativeOrder());
        order.rewind();
        order2.rewind();
        K8.a.I(new Runnable() {
            @Override
            public final void run() {
                e.i(i10, order, i11, order2, listener, box);
            }
        });
    }

    public Box f() {
        return this.f10432h;
    }

    public final int g() {
        NativeIntBuffer nativeIntBuffer = this.f10426b;
        if (nativeIntBuffer != null) {
            return nativeIntBuffer.capacity();
        }
        return 0;
    }

    public final int h() {
        NativeFloatBuffer nativeFloatBuffer = this.f10425a;
        if (nativeFloatBuffer != null) {
            return nativeFloatBuffer.capacity() / 3;
        }
        return 0;
    }

    public final void j() {
        int i10;
        int h10 = h();
        int g10 = g() / 3;
        if (h10 == 0 || g10 == 0) {
            return;
        }
        this.f10428d = h10;
        float f10 = Float.NEGATIVE_INFINITY;
        float f11 = Float.NEGATIVE_INFINITY;
        float f12 = Float.POSITIVE_INFINITY;
        float f13 = Float.POSITIVE_INFINITY;
        float f14 = Float.POSITIVE_INFINITY;
        int i11 = 0;
        float f15 = Float.NEGATIVE_INFINITY;
        while (true) {
            i10 = 2;
            if (i11 >= h10) {
                break;
            }
            int i12 = i11 * 3;
            float f16 = this.f10425a.get(i12);
            float f17 = this.f10425a.get(i12 + 1);
            float f18 = this.f10425a.get(i12 + 2);
            if (f16 < f12) {
                f12 = f16;
            }
            if (f16 > f10) {
                f10 = f16;
            }
            if (f17 < f13) {
                f13 = f17;
            }
            if (f17 > f15) {
                f15 = f17;
            }
            if (f18 < f14) {
                f14 = f18;
            }
            if (f18 > f11) {
                f11 = f18;
            }
            i11++;
        }
        this.f10432h = new Box((f12 + f10) * 0.5f, (f13 + f15) * 0.5f, (f14 + f11) * 0.5f, Math.max(0.0f, f10 - f12) * 0.5f, Math.max(0.0f, f15 - f13) * 0.5f, Math.max(0.0f, f11 - f14) * 0.5f);
        ByteBuffer order = ByteBuffer.allocateDirect(h10 * 12).order(ByteOrder.nativeOrder());
        for (int i13 = 0; i13 < h10; i13++) {
            int i14 = i13 * 3;
            order.putFloat(this.f10425a.get(i14));
            order.putFloat(this.f10425a.get(i14 + 1));
            order.putFloat(this.f10425a.get(i14 + 2));
        }
        order.flip();
        this.f10430f = order;
        int i15 = g10 * 36;
        IntBuffer asIntBuffer = ByteBuffer.allocateDirect(i15).order(ByteOrder.nativeOrder()).asIntBuffer();
        for (int i16 = 0; i16 < g10; i16++) {
            int i17 = i16 * 3;
            int i18 = this.f10426b.get(i17);
            int i19 = this.f10426b.get(i17 + 1);
            int i20 = this.f10426b.get(i17 + 2);
            k(asIntBuffer, i18, i19, i20);
            k(asIntBuffer, i19, i20, i18);
            k(asIntBuffer, i20, i18, i19);
        }
        asIntBuffer.flip();
        l(asIntBuffer, ByteBuffer.allocateDirect(i15).order(ByteOrder.nativeOrder()).asIntBuffer());
        float cos = (float) Math.cos(Math.toRadians(this.f10427c));
        ByteBuffer order2 = ByteBuffer.allocateDirect(g10 * 24).order(ByteOrder.nativeOrder());
        IntBuffer asIntBuffer2 = order2.asIntBuffer();
        int limit = asIntBuffer.limit();
        float[] fArr = new float[3];
        float[] fArr2 = new float[3];
        int i21 = 0;
        while (i21 < limit) {
            int i22 = asIntBuffer.get(i21);
            int i23 = asIntBuffer.get(i21 + 1);
            int i24 = asIntBuffer.get(i21 + 2);
            i21 += 3;
            int i25 = Integer.MIN_VALUE;
            int i26 = 1;
            while (i21 < limit) {
                if (asIntBuffer.get(i21) != i22 || asIntBuffer.get(i21 + 1) != i23) {
                    i10 = 2;
                    break;
                }
                if (i26 == 1) {
                    i25 = asIntBuffer.get(i21 + 2);
                }
                i26++;
                i21 += 3;
                i10 = 2;
            }
            if (i26 == i10 && i24 != i25) {
                d(this.f10425a, i22, i23, i24, fArr);
                d(this.f10425a, i22, i23, i25, fArr2);
                if (Math.abs(c(e(fArr, fArr2), -1.0f, 1.0f)) >= cos) {
                }
            }
            asIntBuffer2.put(i22);
            asIntBuffer2.put(i23);
        }
        asIntBuffer2.flip();
        int remaining = asIntBuffer2.remaining();
        this.f10429e = remaining;
        if (remaining == 0) {
            return;
        }
        order2.position(0);
        order2.limit(asIntBuffer2.limit() * 4);
        this.f10431g = order2;
    }

    public e(NativeFloatBuffer verticesBuffer, NativeIntBuffer trianglesBuffer, float coplanarDeg) {
        this.f10425a = verticesBuffer;
        this.f10426b = trianglesBuffer;
        this.f10427c = coplanarDeg;
        j();
    }
}
