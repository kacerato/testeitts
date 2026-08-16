package z9;

import com.google.android.filament.IndexBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.HashMap;
import java.util.Map;
import z9.C16279f;
import z9.C16282i;

public final class C16282i {

    public final Object f130787a = new Object();

    public final Map<c, b> f130788b = new HashMap();

    public static final class b {

        public final C16282i f130789a;

        public final c f130790b;

        public final NativeFloatBuffer f130791c;

        public final NativeIntBuffer f130792d;

        public volatile Rb.d f130793e;

        public volatile boolean f130794f;

        public volatile boolean f130795g;

        public volatile boolean f130796h;

        public int f130797i;

        public class a implements Runnable {

            public class C2260a implements C16279f.b {

                public final boolean f130799a;

                public final ByteBuffer f130800b;

                public class RunnableC2261a implements Runnable {

                    public final Rb.d f130802b;

                    public RunnableC2261a(final Rb.d val$created) {
                        this.f130802b = val$created;
                    }

                    @Override
                    public void run() {
                        boolean z10;
                        ByteBuffer byteBuffer = C2260a.this.f130800b;
                        byteBuffer.position(byteBuffer.position());
                        synchronized (b.this) {
                            try {
                                z10 = false;
                                b.this.f130794f = false;
                                if (!b.this.f130796h && b.this.f130797i > 0) {
                                    b.this.f130793e = this.f130802b;
                                }
                                z10 = true;
                                b.this.f130796h = true;
                            } catch (Throwable th2) {
                                throw th2;
                            }
                        }
                        if (z10) {
                            b.this.A(this.f130802b);
                            b.this.m();
                            b.this.f130789a.i(b.this.f130790b, b.this);
                        }
                    }
                }

                public C2260a(final boolean val$useUshort, final ByteBuffer val$indexData) {
                    this.f130799a = val$useUshort;
                    this.f130800b = val$indexData;
                }

                @Override
                public boolean a() {
                    try {
                        synchronized (b.this) {
                            if (!b.this.f130796h && b.this.f130797i > 0) {
                                Rb.d dVar = new Rb.d(new IndexBuffer.a().c(b.this.f130792d.capacity()).a(this.f130799a ? IndexBuffer.a.b.USHORT : IndexBuffer.a.b.UINT));
                                dVar.s(this.f130800b, new RunnableC2261a(dVar));
                                return true;
                            }
                            b.this.f130794f = false;
                            b.this.f130796h = true;
                            b.this.m();
                            b.this.f130789a.i(b.this.f130790b, b.this);
                            return false;
                        }
                    } catch (RuntimeException e10) {
                        synchronized (b.this) {
                            b.this.f130794f = false;
                            throw e10;
                        }
                    }
                }
            }

            public a() {
            }

            @Override
            public void run() {
                try {
                    boolean z10 = b.this.f130792d.findMaxValue() <= 65535;
                    C16279f.d(new C2260a(z10, C16282i.e(b.this.f130792d, z10)));
                } catch (RuntimeException e10) {
                    synchronized (b.this) {
                        b.this.f130794f = false;
                        throw e10;
                    }
                }
            }
        }

        public final void A(Rb.d buffer) {
            if (buffer == null) {
                return;
            }
            try {
                K8.a.r();
            } catch (RuntimeException e10) {
                e10.printStackTrace();
            }
        }

        public final void B() {
            synchronized (this) {
                if (!this.f130794f && !this.f130796h) {
                    this.f130794f = true;
                    O9.b.d(new a());
                }
            }
        }

        public final void m() {
            NativeFloatBuffer nativeFloatBuffer = this.f130791c;
            if (nativeFloatBuffer != null) {
                nativeFloatBuffer.validate();
            }
            NativeIntBuffer nativeIntBuffer = this.f130792d;
            if (nativeIntBuffer != null) {
                nativeIntBuffer.validate();
            }
        }

        public final void n() {
            synchronized (this) {
                this.f130795g = false;
                if (!this.f130796h && this.f130797i <= 0) {
                    this.f130796h = true;
                    Rb.d dVar = this.f130793e;
                    this.f130793e = null;
                    A(dVar);
                    m();
                    this.f130789a.i(this.f130790b, this);
                }
            }
        }

        public Rb.d o() {
            if (this.f130793e == null) {
                B();
            }
            return this.f130793e;
        }

        public Rb.d p() {
            return this.f130793e;
        }

        public int q() {
            return this.f130790b.f130804a;
        }

        public int r(int idx) {
            return this.f130792d.get(idx);
        }

        public NativeIntBuffer s() {
            return this.f130792d;
        }

        public int t() {
            return this.f130792d.capacity() / 3;
        }

        public NativeFloatBuffer u() {
            return this.f130791c;
        }

        public int v() {
            return this.f130791c.capacity() / 2;
        }

        public boolean w() {
            return this.f130790b.f130805b;
        }

        public void x() {
            synchronized (this) {
                try {
                    int i10 = this.f130797i;
                    if (i10 <= 0) {
                        return;
                    }
                    boolean z10 = true;
                    int i11 = i10 - 1;
                    this.f130797i = i11;
                    if (i11 != 0 || this.f130793e == null || this.f130795g || this.f130796h) {
                        z10 = false;
                    } else {
                        this.f130795g = true;
                    }
                    if (z10) {
                        K8.a.I(new Runnable() {
                            @Override
                            public final void run() {
                                C16282i.b.this.n();
                            }
                        });
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        public void y() {
            if (this.f130793e == null) {
                B();
            }
        }

        public final synchronized void z() {
            if (this.f130796h) {
                throw new IllegalStateException("Topology entry already destroyed");
            }
            this.f130797i++;
        }

        public b(C16282i owner, c key) {
            this.f130794f = false;
            this.f130795g = false;
            this.f130796h = false;
            this.f130797i = 0;
            this.f130789a = owner;
            this.f130790b = key;
            int i10 = key.f130804a;
            boolean z10 = key.f130805b;
            int i11 = (i10 * i10) + (z10 ? i10 * 8 : 0);
            int i12 = i10 - 1;
            int i13 = i12 * i12 * 2;
            int i14 = z10 ? i12 * 8 : 0;
            NativeFloatBuffer nativeFloatBuffer = new NativeFloatBuffer(i11 * 2);
            this.f130791c = nativeFloatBuffer;
            NativeIntBuffer nativeIntBuffer = new NativeIntBuffer((i13 + i14) * 3);
            this.f130792d = nativeIntBuffer;
            C16282i.f(i10, z10, nativeFloatBuffer, nativeIntBuffer);
        }
    }

    public static final class c {

        public final int f130804a;

        public final boolean f130805b;

        public boolean equals(Object o10) {
            if (this == o10) {
                return true;
            }
            if (!(o10 instanceof c)) {
                return false;
            }
            c cVar = (c) o10;
            return this.f130804a == cVar.f130804a && this.f130805b == cVar.f130805b;
        }

        public int hashCode() {
            return (this.f130804a * 31) + (this.f130805b ? 1 : 0);
        }

        public c(int resolution, boolean bordersEnabled) {
            this.f130804a = resolution;
            this.f130805b = bordersEnabled;
        }
    }

    public static ByteBuffer e(NativeIntBuffer tris, boolean useUshort) {
        int capacity = tris.capacity();
        int i10 = 0;
        if (useUshort) {
            ByteBuffer order = ByteBuffer.allocateDirect(capacity * 2).order(ByteOrder.nativeOrder());
            while (i10 < capacity) {
                order.putShort((short) (tris.get(i10) & 65535));
                i10++;
            }
            order.flip();
            return order;
        }
        ByteBuffer order2 = ByteBuffer.allocateDirect(capacity * 4).order(ByteOrder.nativeOrder());
        while (i10 < capacity) {
            order2.putInt(tris.get(i10));
            i10++;
        }
        order2.flip();
        return order2;
    }

    public static void f(int resolution, boolean bordersEnabled, NativeFloatBuffer uvs, NativeIntBuffer triangles) {
        int i10;
        int i11 = resolution * resolution;
        float f10 = resolution > 1 ? 1.0f / (resolution - 1) : 1.0f;
        int i12 = 0;
        for (int i13 = 0; i13 < resolution; i13++) {
            float f11 = i13 * f10;
            for (int i14 = 0; i14 < resolution; i14++) {
                int i15 = i12 * 2;
                uvs.set(i15, f11);
                uvs.set(i15 + 1, i14 * f10);
                i12++;
            }
        }
        int i16 = 0;
        int i17 = 0;
        while (true) {
            i10 = resolution - 1;
            if (i16 >= i10) {
                break;
            }
            int i18 = 0;
            while (i18 < i10) {
                int h10 = h(i16, i18, resolution);
                int i19 = i18 + 1;
                int h11 = h(i16, i19, resolution);
                int i20 = i16 + 1;
                int h12 = h(i20, i18, resolution);
                int h13 = h(i20, i19, resolution);
                triangles.set(i17, h10);
                triangles.set(i17 + 1, h11);
                triangles.set(i17 + 2, h13);
                triangles.set(i17 + 3, h10);
                int i21 = i17 + 5;
                triangles.set(i17 + 4, h13);
                i17 += 6;
                triangles.set(i21, h12);
                i18 = i19;
            }
            i16++;
        }
        if (bordersEnabled) {
            int i22 = resolution * 2;
            int i23 = i11 + i22;
            int i24 = i23 + i22;
            int i25 = i22 + i24;
            for (int i26 = 0; i26 < resolution; i26++) {
                float f12 = resolution > 1 ? i26 / i10 : 0.0f;
                int i27 = (i11 + i26) * 2;
                uvs.set(i27, f12);
                uvs.set(i27 + 1, 0.0f);
                int i28 = (i11 + resolution + i26) * 2;
                uvs.set(i28, f12);
                uvs.set(i28 + 1, 0.0f);
            }
            int g10 = g(triangles, i17, i11, resolution, false);
            for (int i29 = 0; i29 < resolution; i29++) {
                float f13 = resolution > 1 ? i29 / i10 : 0.0f;
                int i30 = (i23 + i29) * 2;
                uvs.set(i30, f13);
                uvs.set(i30 + 1, 1.0f);
                int i31 = (i23 + resolution + i29) * 2;
                uvs.set(i31, f13);
                uvs.set(i31 + 1, 1.0f);
            }
            int g11 = g(triangles, g10, i23, resolution, true);
            for (int i32 = 0; i32 < resolution; i32++) {
                float f14 = resolution > 1 ? i32 / i10 : 0.0f;
                int i33 = (i24 + i32) * 2;
                uvs.set(i33, 0.0f);
                uvs.set(i33 + 1, f14);
                int i34 = (i24 + resolution + i32) * 2;
                uvs.set(i34, 0.0f);
                uvs.set(i34 + 1, f14);
            }
            int g12 = g(triangles, g11, i24, resolution, true);
            for (int i35 = 0; i35 < resolution; i35++) {
                float f15 = resolution > 1 ? i35 / i10 : 0.0f;
                int i36 = (i25 + i35) * 2;
                uvs.set(i36, 1.0f);
                uvs.set(i36 + 1, f15);
                int i37 = (i25 + resolution + i35) * 2;
                uvs.set(i37, 1.0f);
                uvs.set(i37 + 1, f15);
            }
            g(triangles, g12, i25, resolution, false);
        }
    }

    public static int g(NativeIntBuffer triangles, int ti2, int base, int resolution, boolean invert) {
        for (int i10 = 0; i10 < resolution - 1; i10++) {
            int i11 = base + i10;
            int i12 = i11 + 1;
            int i13 = i11 + resolution;
            int i14 = i13 + 1;
            if (invert) {
                triangles.set(ti2, i13);
                triangles.set(ti2 + 1, i12);
                triangles.set(ti2 + 2, i11);
                triangles.set(ti2 + 3, i13);
                int i15 = ti2 + 5;
                triangles.set(ti2 + 4, i14);
                ti2 += 6;
                triangles.set(i15, i12);
            } else {
                triangles.set(ti2, i11);
                triangles.set(ti2 + 1, i12);
                triangles.set(ti2 + 2, i13);
                triangles.set(ti2 + 3, i12);
                int i16 = ti2 + 5;
                triangles.set(ti2 + 4, i14);
                ti2 += 6;
                triangles.set(i16, i13);
            }
        }
        return ti2;
    }

    public static int h(int x10, int y10, int resolution) {
        return (x10 * resolution) + y10;
    }

    public b d(int resolution, boolean bordersEnabled) {
        b bVar;
        if (resolution < 2) {
            throw new IllegalArgumentException("resolution can't be < 2");
        }
        c cVar = new c(resolution, bordersEnabled);
        synchronized (this.f130787a) {
            try {
                bVar = this.f130788b.get(cVar);
                if (bVar != null) {
                    if (bVar.f130796h) {
                    }
                    bVar.z();
                }
                bVar = new b(cVar);
                this.f130788b.put(cVar, bVar);
                bVar.z();
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return bVar;
    }

    public final void i(c key, b entry) {
        synchronized (this.f130787a) {
            try {
                if (this.f130788b.get(key) == entry) {
                    this.f130788b.remove(key);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
