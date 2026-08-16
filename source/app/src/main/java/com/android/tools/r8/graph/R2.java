package com.android.tools.r8.graph;

import com.android.tools.r8.dex.C4324y;
import com.android.tools.r8.internal.AbstractC8953pf;
import com.android.tools.r8.internal.AbstractC8999pu0;
import com.android.tools.r8.internal.AbstractC9213rA;
import com.android.tools.r8.internal.BR;
import com.android.tools.r8.internal.C10127wh;
import com.android.tools.r8.internal.C10504yv0;
import com.android.tools.r8.internal.C4866Ah;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.C5829Qz;
import com.android.tools.r8.internal.C7664hu;
import com.android.tools.r8.internal.C9547tA;
import com.android.tools.r8.internal.C9663tt0;
import com.android.tools.r8.internal.InterfaceC5580Mq0;
import com.android.tools.r8.internal.InterfaceC5638Nq0;
import java.util.Arrays;
import java.util.function.Consumer;
import java.util.function.Supplier;

public abstract class R2 extends AbstractC4592n1 implements InterfaceC5580Mq0<R2> {

    public static final R2[] f36737b = new R2[0];

    public static final boolean f36738c = true;

    public static class a extends R2 {

        public final C4422e1 f36739d;

        public a(C4422e1 c4422e1) {
            this.f36739d = c4422e1;
        }

        @Override
        public final R2 E() {
            return this;
        }

        @Override
        public final Object F0() {
            throw new C5417Jv0("No boxed value for DexValueAnnotation");
        }

        @Override
        public final V2 G0() {
            return V2.f36899r;
        }

        @Override
        public final boolean H0() {
            return true;
        }

        @Override
        public final void V0() {
            this.f36739d.l0();
        }

        @Override
        public final int a(R2 r22, AbstractC8953pf abstractC8953pf) {
            return a(r22, abstractC8953pf);
        }

        @Override
        public final int b(R2 r22, AbstractC8953pf abstractC8953pf) {
            return this.f36739d.a(r22.m0().f36739d, abstractC8953pf);
        }

        @Override
        public final void c(AbstractC9213rA abstractC9213rA) {
            this.f36739d.a(abstractC9213rA);
        }

        @Override
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof a) {
                return ((a) obj).f36739d.equals(this.f36739d);
            }
            return false;
        }

        @Override
        public final int hashCode() {
            return this.f36739d.hashCode() * 7;
        }

        @Override
        public final Object k0() {
            throw new C5417Jv0("No ASM conversion for DexValueAnnotation");
        }

        @Override
        public final a m0() {
            return this;
        }

        @Override
        public final String toString() {
            return "Annotation " + ((Object) this.f36739d);
        }

        @Override
        public final void a(C4798y c4798y, com.android.tools.r8.dex.M m10) {
            this.f36739d.a(c4798y, m10);
        }

        @Override
        public final com.android.tools.r8.internal.F1 a(com.android.tools.r8.internal.G1 g12) {
            return C10504yv0.f54195b;
        }

        @Override
        public final void a(C4324y c4324y, C4766w5 c4766w5) {
            R2.a(V2.f36899r, 0, c4324y);
            com.android.tools.r8.dex.L.a(this.f36739d, c4324y, c4766w5);
        }

        @Override
        public final M2 a(C4724u1 c4724u1) {
            throw new C5417Jv0();
        }
    }

    public static class b extends R2 {

        public final R2[] f36740d;

        public b(R2[] r2Arr) {
            this.f36740d = r2Arr;
        }

        @Override
        public final R2 E() {
            return this;
        }

        @Override
        public final Object F0() {
            throw new C5417Jv0("No boxed value for DexValueArray");
        }

        @Override
        public final V2 G0() {
            return V2.f36898q;
        }

        @Override
        public final void V0() {
            for (R2 r22 : this.f36740d) {
                r22.V0();
            }
        }

        public R2[] W0() {
            return this.f36740d;
        }

        @Override
        public final int a(R2 r22, AbstractC8953pf abstractC8953pf) {
            return a(r22, abstractC8953pf);
        }

        @Override
        public final int b(R2 r22, AbstractC8953pf abstractC8953pf) {
            R2[] r2Arr = this.f36740d;
            R2[] r2Arr2 = r22.n0().f36740d;
            abstractC8953pf.getClass();
            return abstractC8953pf.a(Arrays.asList(r2Arr), Arrays.asList(r2Arr2));
        }

        @Override
        public final void c(AbstractC9213rA abstractC9213rA) {
            abstractC9213rA.a(Arrays.asList(this.f36740d));
        }

        public final void d(Consumer consumer) {
            for (R2 r22 : this.f36740d) {
                consumer.accept(r22);
            }
        }

        @Override
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof b) {
                return Arrays.equals(((b) obj).f36740d, this.f36740d);
            }
            return false;
        }

        @Override
        public final int hashCode() {
            return Arrays.hashCode(this.f36740d);
        }

        @Override
        public final Object k0() {
            throw new C5417Jv0("No ASM conversion for DexValueArray");
        }

        @Override
        public final b n0() {
            return this;
        }

        @Override
        public final String toString() {
            return "Array " + Arrays.toString(this.f36740d);
        }

        @Override
        public final void a(C4798y c4798y, com.android.tools.r8.dex.M m10) {
            for (R2 r22 : this.f36740d) {
                r22.a(c4798y, m10);
            }
        }

        @Override
        public final void a(C4324y c4324y, C4766w5 c4766w5) {
            R2.a(V2.f36898q, 0, c4324y);
            BR.b(c4324y, this.f36740d.length);
            for (R2 r22 : this.f36740d) {
                r22.a(c4324y, c4766w5);
            }
        }

        @Override
        public final M2 a(C4724u1 c4724u1) {
            throw new C5417Jv0();
        }

        @Override
        public final com.android.tools.r8.internal.F1 a(com.android.tools.r8.internal.G1 g12) {
            return C10504yv0.f54195b;
        }
    }

    public static class c extends AbstractC4348a3 {

        public static final c f36741e = new c(true);

        public static final c f36742f = new c(false);

        public static final c f36743g = new c(false);

        public final boolean f36744d;

        public c(boolean z10) {
            this.f36744d = z10;
        }

        @Override
        public final Object F0() {
            return Boolean.valueOf(W0());
        }

        @Override
        public final V2 G0() {
            return V2.f36901t;
        }

        @Override
        public final boolean I0() {
            return true;
        }

        public boolean W0() {
            return this.f36744d;
        }

        @Override
        public final M2 a(C4724u1 c4724u1) {
            return c4724u1.f37849E1;
        }

        @Override
        public final int b(R2 r22, AbstractC8953pf abstractC8953pf) {
            return abstractC8953pf.a(this.f36744d, r22.o0().f36744d);
        }

        @Override
        public final void c(AbstractC9213rA abstractC9213rA) {
            ((C9547tA) abstractC9213rA).f52553a.a(this.f36744d);
        }

        @Override
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            return (obj instanceof c) && ((c) obj).f36744d == this.f36744d;
        }

        @Override
        public final int hashCode() {
            return this.f36744d ? 1234 : 4321;
        }

        @Override
        public final Object k0() {
            return Integer.valueOf(this.f36744d ? 1 : 0);
        }

        @Override
        public final c o0() {
            return this;
        }

        @Override
        public final String toString() {
            return this.f36744d ? "True" : "False";
        }

        @Override
        public final com.android.tools.r8.internal.F1 a(com.android.tools.r8.internal.G1 g12) {
            return g12.a(this.f36744d ? 1L : 0L, AbstractC8999pu0.e());
        }

        @Override
        public final void a(C4324y c4324y, C4766w5 c4766w5) {
            R2.a(V2.f36901t, this.f36744d ? 1 : 0, c4324y);
        }
    }

    public static class d extends AbstractC4348a3 {

        public static final d f36745e = new d((byte) 0);

        public final byte f36746d;

        public d(byte b10) {
            this.f36746d = b10;
        }

        public static d a(byte b10) {
            return b10 == 0 ? f36745e : new d(b10);
        }

        @Override
        public final Object F0() {
            return Byte.valueOf(W0());
        }

        @Override
        public final V2 G0() {
            return V2.f36884c;
        }

        @Override
        public final boolean J0() {
            return true;
        }

        public byte W0() {
            return this.f36746d;
        }

        @Override
        public final int b(R2 r22, AbstractC8953pf abstractC8953pf) {
            return abstractC8953pf.a((int) this.f36746d, (int) r22.p0().f36746d);
        }

        @Override
        public final void c(AbstractC9213rA abstractC9213rA) {
            ((C9547tA) abstractC9213rA).f52553a.a((int) this.f36746d);
        }

        @Override
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            return (obj instanceof d) && this.f36746d == ((d) obj).f36746d;
        }

        @Override
        public final int hashCode() {
            return this.f36746d * 3;
        }

        @Override
        public final Object k0() {
            return Integer.valueOf(this.f36746d);
        }

        @Override
        public final d p0() {
            return this;
        }

        @Override
        public final String toString() {
            return "Byte " + ((int) this.f36746d);
        }

        @Override
        public final M2 a(C4724u1 c4724u1) {
            return c4724u1.f37856F1;
        }

        @Override
        public final com.android.tools.r8.internal.F1 a(com.android.tools.r8.internal.G1 g12) {
            return g12.a(this.f36746d, AbstractC8999pu0.g());
        }

        @Override
        public final void a(C4324y c4324y, C4766w5 c4766w5) {
            R2.a(V2.f36884c, 0, c4324y);
            c4324y.a(1, this.f36746d);
        }
    }

    public static class e extends AbstractC4348a3 {

        public static final e f36747e = new e(0);

        public final char f36748d;

        public e(char c10) {
            this.f36748d = c10;
        }

        @Override
        public final Object F0() {
            return Character.valueOf(W0());
        }

        @Override
        public final V2 G0() {
            return V2.f36886e;
        }

        @Override
        public final boolean K0() {
            return true;
        }

        public char W0() {
            return this.f36748d;
        }

        @Override
        public final M2 a(C4724u1 c4724u1) {
            return c4724u1.f37863G1;
        }

        @Override
        public final int b(R2 r22, AbstractC8953pf abstractC8953pf) {
            return abstractC8953pf.a((int) this.f36748d, (int) r22.q0().f36748d);
        }

        @Override
        public final void c(AbstractC9213rA abstractC9213rA) {
            ((C9547tA) abstractC9213rA).f52553a.a((int) this.f36748d);
        }

        @Override
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            return (obj instanceof e) && this.f36748d == ((e) obj).f36748d;
        }

        @Override
        public final int hashCode() {
            return this.f36748d * 5;
        }

        @Override
        public final Object k0() {
            return Integer.valueOf(this.f36748d);
        }

        @Override
        public final e q0() {
            return this;
        }

        @Override
        public final String toString() {
            return "Char " + this.f36748d;
        }

        @Override
        public final com.android.tools.r8.internal.F1 a(com.android.tools.r8.internal.G1 g12) {
            return g12.a(this.f36748d, AbstractC8999pu0.h());
        }

        @Override
        public final void a(C4324y c4324y, C4766w5 c4766w5) {
            c4324y.d(1);
            int b10 = c4324y.b(2, this.f36748d);
            c4324y.d(-(b10 + 1));
            R2.a(V2.f36886e, b10 - 1, c4324y);
            c4324y.d(b10);
        }
    }

    public static class f extends AbstractC4348a3 {

        public static final f f36749e = new f(0.0d);

        public final double f36750d;

        public f(double d10) {
            this.f36750d = d10;
        }

        public static f a(double d10) {
            return Double.compare(d10, 0.0d) == 0 ? f36749e : new f(d10);
        }

        @Override
        public final Object F0() {
            return Double.valueOf(W0());
        }

        @Override
        public final V2 G0() {
            return V2.f36890i;
        }

        @Override
        public final boolean L0() {
            return true;
        }

        public double W0() {
            return this.f36750d;
        }

        @Override
        public final int b(R2 r22, AbstractC8953pf abstractC8953pf) {
            return abstractC8953pf.a(this.f36750d, r22.s0().f36750d);
        }

        @Override
        public final void c(AbstractC9213rA abstractC9213rA) {
            ((C9547tA) abstractC9213rA).f52553a.a(this.f36750d);
        }

        @Override
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            return (obj instanceof f) && Double.compare(this.f36750d, ((f) obj).f36750d) == 0;
        }

        @Override
        public final int hashCode() {
            return (int) (this.f36750d * 29.0d);
        }

        @Override
        public final Object k0() {
            return Double.valueOf(this.f36750d);
        }

        @Override
        public final f s0() {
            return this;
        }

        @Override
        public final String toString() {
            return "Double " + this.f36750d;
        }

        @Override
        public final M2 a(C4724u1 c4724u1) {
            return c4724u1.f37870H1;
        }

        @Override
        public final com.android.tools.r8.internal.F1 a(com.android.tools.r8.internal.G1 g12) {
            return g12.a(Double.doubleToRawLongBits(this.f36750d), AbstractC8999pu0.i());
        }

        @Override
        public final void a(C4324y c4324y, C4766w5 c4766w5) {
            c4324y.d(1);
            int a10 = C7664hu.a(c4324y, this.f36750d);
            c4324y.d(-(a10 + 1));
            R2.a(V2.f36890i, a10 - 1, c4324y);
            c4324y.d(a10);
        }
    }

    public static class g extends AbstractC4348a3 {

        public static final g f36751e = new g(0.0f);

        public final float f36752d;

        public g(float f10) {
            this.f36752d = f10;
        }

        public static g a(float f10) {
            return Float.compare(f10, 0.0f) == 0 ? f36751e : new g(f10);
        }

        @Override
        public final Object F0() {
            return Float.valueOf(W0());
        }

        @Override
        public final V2 G0() {
            return V2.f36889h;
        }

        @Override
        public final boolean M0() {
            return true;
        }

        public float W0() {
            return this.f36752d;
        }

        @Override
        public final int b(R2 r22, AbstractC8953pf abstractC8953pf) {
            return abstractC8953pf.a(this.f36752d, r22.v0().f36752d);
        }

        @Override
        public final void c(AbstractC9213rA abstractC9213rA) {
            ((C9547tA) abstractC9213rA).f52553a.a(this.f36752d);
        }

        @Override
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            return (obj instanceof g) && Float.compare(this.f36752d, ((g) obj).f36752d) == 0;
        }

        @Override
        public final int hashCode() {
            return (int) (this.f36752d * 19.0f);
        }

        @Override
        public final Object k0() {
            return Float.valueOf(this.f36752d);
        }

        @Override
        public final String toString() {
            return "Float " + this.f36752d;
        }

        @Override
        public final g v0() {
            return this;
        }

        @Override
        public final M2 a(C4724u1 c4724u1) {
            return c4724u1.f37877I1;
        }

        @Override
        public final com.android.tools.r8.internal.F1 a(com.android.tools.r8.internal.G1 g12) {
            return g12.a(Float.floatToIntBits(this.f36752d), AbstractC8999pu0.j());
        }

        @Override
        public final void a(C4324y c4324y, C4766w5 c4766w5) {
            c4324y.d(1);
            int a10 = C7664hu.a(c4324y, this.f36752d);
            c4324y.d(-(a10 + 1));
            R2.a(V2.f36889h, a10 - 1, c4324y);
            c4324y.d(a10);
        }
    }

    public static class h extends AbstractC4348a3 {

        public static final h f36753e = new h(0);

        public final int f36754d;

        public h(int i10) {
            this.f36754d = i10;
        }

        public static h j(int i10) {
            h hVar = f36753e;
            return i10 == hVar.f36754d ? hVar : new h(i10);
        }

        @Override
        public final Object F0() {
            return Integer.valueOf(W0());
        }

        @Override
        public final V2 G0() {
            return V2.f36887f;
        }

        @Override
        public final boolean N0() {
            return true;
        }

        public int W0() {
            return this.f36754d;
        }

        @Override
        public final M2 a(C4724u1 c4724u1) {
            return c4724u1.f37884J1;
        }

        @Override
        public final int b(R2 r22, AbstractC8953pf abstractC8953pf) {
            return abstractC8953pf.a(this.f36754d, r22.w0().f36754d);
        }

        @Override
        public final void c(AbstractC9213rA abstractC9213rA) {
            ((C9547tA) abstractC9213rA).f52553a.a(this.f36754d);
        }

        @Override
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            return (obj instanceof h) && this.f36754d == ((h) obj).f36754d;
        }

        @Override
        public final int hashCode() {
            return this.f36754d * 11;
        }

        @Override
        public final Object k0() {
            return Integer.valueOf(this.f36754d);
        }

        @Override
        public final String toString() {
            return "Int " + this.f36754d;
        }

        @Override
        public final h w0() {
            return this;
        }

        @Override
        public final com.android.tools.r8.internal.F1 a(com.android.tools.r8.internal.G1 g12) {
            return g12.a(this.f36754d, AbstractC8999pu0.k());
        }

        @Override
        public final void a(C4324y c4324y, C4766w5 c4766w5) {
            AbstractC4348a3.a(V2.f36887f, this.f36754d, 4, c4324y);
        }
    }

    public static class i extends AbstractC4348a3 {

        public static final i f36755e = new i(0);

        public final long f36756d;

        public i(long j10) {
            this.f36756d = j10;
        }

        public static i a(long j10) {
            return j10 == 0 ? f36755e : new i(j10);
        }

        @Override
        public final Object F0() {
            return Long.valueOf(W0());
        }

        @Override
        public final V2 G0() {
            return V2.f36888g;
        }

        @Override
        public final boolean O0() {
            return true;
        }

        public long W0() {
            return this.f36756d;
        }

        @Override
        public final int b(R2 r22, AbstractC8953pf abstractC8953pf) {
            return abstractC8953pf.a(this.f36756d, r22.x0().f36756d);
        }

        @Override
        public final void c(AbstractC9213rA abstractC9213rA) {
            ((C9547tA) abstractC9213rA).f52553a.a(this.f36756d);
        }

        @Override
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            return (obj instanceof i) && this.f36756d == ((i) obj).f36756d;
        }

        @Override
        public final int hashCode() {
            return ((int) this.f36756d) * 13;
        }

        @Override
        public final Object k0() {
            return Long.valueOf(this.f36756d);
        }

        @Override
        public final String toString() {
            return "Long " + this.f36756d;
        }

        @Override
        public final i x0() {
            return this;
        }

        @Override
        public final M2 a(C4724u1 c4724u1) {
            return c4724u1.f37891K1;
        }

        @Override
        public final com.android.tools.r8.internal.F1 a(com.android.tools.r8.internal.G1 g12) {
            return g12.a(this.f36756d, AbstractC8999pu0.l());
        }

        @Override
        public final void a(C4324y c4324y, C4766w5 c4766w5) {
            AbstractC4348a3.a(V2.f36888g, this.f36756d, 8, c4324y);
        }
    }

    public static class j extends AbstractC4348a3 {

        public static final j f36757e = new j(0);

        public final short f36758d;

        public j(short s10) {
            this.f36758d = s10;
        }

        @Override
        public final j C0() {
            return this;
        }

        @Override
        public final Object F0() {
            return Short.valueOf(W0());
        }

        @Override
        public final V2 G0() {
            return V2.f36885d;
        }

        @Override
        public final boolean Q0() {
            return true;
        }

        public short W0() {
            return this.f36758d;
        }

        @Override
        public final M2 a(C4724u1 c4724u1) {
            return c4724u1.f37898L1;
        }

        @Override
        public final int b(R2 r22, AbstractC8953pf abstractC8953pf) {
            return abstractC8953pf.a((int) this.f36758d, (int) r22.C0().W0());
        }

        @Override
        public final void c(AbstractC9213rA abstractC9213rA) {
            ((C9547tA) abstractC9213rA).f52553a.a((int) this.f36758d);
        }

        @Override
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            return (obj instanceof j) && this.f36758d == ((j) obj).f36758d;
        }

        @Override
        public final int hashCode() {
            return this.f36758d * 7;
        }

        @Override
        public final Object k0() {
            return Integer.valueOf(this.f36758d);
        }

        @Override
        public final String toString() {
            return "Short " + ((int) this.f36758d);
        }

        @Override
        public final com.android.tools.r8.internal.F1 a(com.android.tools.r8.internal.G1 g12) {
            return g12.a(this.f36758d, AbstractC8999pu0.n());
        }

        @Override
        public final void a(C4324y c4324y, C4766w5 c4766w5) {
            AbstractC4348a3.a(V2.f36885d, this.f36758d, 2, c4324y);
        }
    }

    public static class l extends m<M2> {
        public l(M2 m22) {
            super(m22);
        }

        @Override
        public final l E0() {
            return this;
        }

        @Override
        public final V2 G0() {
            return V2.f36894m;
        }

        @Override
        public final boolean S0() {
            return true;
        }

        @Override
        public final boolean T0() {
            return true;
        }

        @Override
        public final void V0() {
        }

        public AbstractC4406d4 W0() {
            return this.f36759d;
        }

        @Override
        public final M2 a(C4724u1 c4724u1) {
            throw new C5417Jv0();
        }

        @Override
        public final int b(R2 r22, AbstractC8953pf abstractC8953pf) {
            M2 m22 = (M2) this.f36759d;
            M2 m23 = (M2) r22.E0().f36759d;
            m22.getClass();
            return abstractC8953pf.a(m22, m23);
        }

        @Override
        public final void c(AbstractC9213rA abstractC9213rA) {
            M2 m22 = (M2) this.f36759d;
            m22.getClass();
            abstractC9213rA.a(m22);
        }

        @Override
        public final void a(C4798y c4798y, com.android.tools.r8.dex.M m10) {
            ((M2) this.f36759d).a(c4798y, m10);
        }

        @Override
        public final com.android.tools.r8.internal.F1 a(com.android.tools.r8.internal.G1 g12) {
            return C10504yv0.f54195b;
        }
    }

    public static abstract class m<T extends AbstractC4406d4> extends R2 {

        public final T f36759d;

        /* JADX WARN: Multi-variable type inference failed */
        public m(AbstractC4406d4 abstractC4406d4) {
            this.f36759d = abstractC4406d4;
        }

        @Override
        public final R2 E() {
            return this;
        }

        @Override
        public Object F0() {
            throw new C5417Jv0("No boxed value for DexValue " + getClass().getSimpleName());
        }

        @Override
        public boolean T0() {
            return true;
        }

        @Override
        public void V0() {
        }

        @Override
        public final int a(R2 r22, AbstractC8953pf abstractC8953pf) {
            return a(r22, abstractC8953pf);
        }

        @Override
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof m) {
                m mVar = (m) obj;
                if (mVar.G0() == G0() && mVar.f36759d.equals(this.f36759d)) {
                    return true;
                }
            }
            return false;
        }

        @Override
        public int hashCode() {
            return (this.f36759d.hashCode() * 7) + G0().f36904b;
        }

        @Override
        public Object k0() {
            throw new C5417Jv0("No ASM conversion for DexValue " + getClass().getSimpleName());
        }

        @Override
        public String toString() {
            return "Item " + ((Object) G0()) + " " + ((Object) this.f36759d);
        }

        @Override
        public M2 a(C4724u1 c4724u1) {
            throw new C5417Jv0();
        }

        @Override
        public void a(C4324y c4324y, C4766w5 c4766w5) {
            int a10 = this.f36759d.a(c4766w5);
            c4324y.d(1);
            int b10 = c4324y.b(4, a10);
            c4324y.d(-(b10 + 1));
            R2.a(G0(), b10 - 1, c4324y);
            c4324y.d(b10);
        }
    }

    public Y2 A0() {
        return null;
    }

    public C4367b3 B0() {
        return null;
    }

    public j C0() {
        return null;
    }

    public k D0() {
        return null;
    }

    @Override
    public R2 E() {
        return this;
    }

    public l E0() {
        return null;
    }

    public abstract Object F0();

    public abstract V2 G0();

    public boolean H0() {
        return false;
    }

    public boolean I0() {
        return false;
    }

    public boolean J0() {
        return false;
    }

    public boolean K0() {
        return false;
    }

    public boolean L0() {
        return false;
    }

    public boolean M0() {
        return false;
    }

    public boolean N0() {
        return false;
    }

    public boolean O0() {
        return false;
    }

    public boolean P0() {
        return false;
    }

    public boolean Q0() {
        return false;
    }

    public boolean R0() {
        return false;
    }

    public boolean S0() {
        return false;
    }

    public boolean T0() {
        return false;
    }

    public boolean U0() {
        return !(this instanceof k);
    }

    public abstract void V0();

    public abstract M2 a(C4724u1 c4724u1);

    public abstract com.android.tools.r8.internal.F1 a(com.android.tools.r8.internal.G1 g12);

    public abstract void a(C4324y c4324y, C4766w5 c4766w5);

    public void a(C4798y c4798y, com.android.tools.r8.dex.M m10) {
    }

    public abstract int b(R2 r22, AbstractC8953pf abstractC8953pf);

    public abstract void c(AbstractC9213rA abstractC9213rA);

    public abstract boolean equals(Object obj);

    public abstract int hashCode();

    public abstract Object k0();

    public Q2 l0() {
        return null;
    }

    @Override
    public final InterfaceC5638Nq0<R2> m() {
        throw new C5417Jv0();
    }

    public a m0() {
        return null;
    }

    public b n0() {
        return null;
    }

    public c o0() {
        return null;
    }

    public d p0() {
        return null;
    }

    public e q0() {
        return null;
    }

    public S2 r0() {
        return null;
    }

    public f s0() {
        return null;
    }

    public T2 t0() {
        return null;
    }

    public abstract String toString();

    public U2 u0() {
        return null;
    }

    public g v0() {
        return null;
    }

    public h w0() {
        return null;
    }

    public i x0() {
        return null;
    }

    public W2 y0() {
        return null;
    }

    public X2 z0() {
        return null;
    }

    public static class k extends m<L2> {
        public k(L2 l22) {
            super(l22);
        }

        @Override
        public final k D0() {
            return this;
        }

        @Override
        public final V2 G0() {
            return V2.f36893l;
        }

        @Override
        public final boolean R0() {
            return true;
        }

        @Override
        public final boolean T0() {
            return true;
        }

        @Override
        public final void V0() {
        }

        public AbstractC4406d4 W0() {
            return this.f36759d;
        }

        @Override
        public final void a(C4798y c4798y, com.android.tools.r8.dex.M m10) {
            L2 l22 = (L2) this.f36759d;
            l22.getClass();
            m10.a(l22);
        }

        @Override
        public final int b(R2 r22, AbstractC8953pf abstractC8953pf) {
            int a10 = Q2.a(this, r22, abstractC8953pf);
            if (a10 != 0) {
                return a10;
            }
            L2 l22 = (L2) this.f36759d;
            L2 l23 = (L2) r22.D0().f36759d;
            l22.getClass();
            return abstractC8953pf.a(l22, l23);
        }

        @Override
        public final void c(AbstractC9213rA abstractC9213rA) {
            ((L2) this.f36759d).a(abstractC9213rA);
        }

        @Override
        public final Object k0() {
            return ((L2) this.f36759d).toString();
        }

        @Override
        public final M2 a(C4724u1 c4724u1) {
            return c4724u1.f38052g2;
        }

        @Override
        public final com.android.tools.r8.internal.F1 a(com.android.tools.r8.internal.G1 g12) {
            return g12.a((L2) this.f36759d);
        }
    }

    public static void a(V2 v22, int i10, C4324y c4324y) {
        c4324y.a((byte) (v22.f36904b | (i10 << 5)));
    }

    @Override
    public final int a(R2 r22, AbstractC8953pf abstractC8953pf) {
        if (G0() != r22.G0()) {
            return abstractC8953pf.a((int) G0().f36904b, (int) r22.G0().f36904b);
        }
        return b(r22, abstractC8953pf);
    }

    @Override
    public final void a(AbstractC9213rA abstractC9213rA) {
        ((C9547tA) abstractC9213rA).f52553a.a((int) G0().f36904b);
        c(abstractC9213rA);
    }

    public static R2 a(Object obj, C4482h4 c4482h4, M2 m22, Supplier supplier) {
        if (obj instanceof Integer) {
            return h.j(((Integer) obj).intValue());
        }
        if (obj instanceof Long) {
            return i.a(((Long) obj).longValue());
        }
        if (obj instanceof Float) {
            return g.a(((Float) obj).floatValue());
        }
        if (obj instanceof Double) {
            return f.a(((Double) obj).doubleValue());
        }
        if (obj instanceof String) {
            return new k(c4482h4.d((String) obj));
        }
        if (obj instanceof C9663tt0) {
            C9663tt0 c9663tt0 = (C9663tt0) obj;
            switch (c9663tt0.c()) {
                case 9:
                    M2 e10 = c4482h4.e(c9663tt0.b());
                    if (f36738c || e10.E0()) {
                        return new l(e10);
                    }
                    throw new AssertionError();
                case 10:
                    return new l(c4482h4.e(c9663tt0.b()));
                case 11:
                    return new Y2(c4482h4.c(c9663tt0.b()));
                default:
                    throw new C5417Jv0("Type sort is not supported: " + c9663tt0.c());
            }
        }
        if (obj instanceof C5829Qz) {
            return new X2(C2.a((C5829Qz) obj, c4482h4, m22));
        }
        if (obj instanceof C10127wh) {
            return new S2(C4866Ah.a((C10127wh) obj, c4482h4, m22, supplier));
        }
        throw new C5417Jv0("Unsupported bootstrap static argument of type " + obj.getClass().getSimpleName());
    }

    @Override
    public final void a(com.android.tools.r8.dex.X x10) {
        throw new C5417Jv0();
    }

    public static AbstractC4348a3 a(M2 m22) {
        char W02 = m22.W0();
        if (W02 == 'F') {
            return g.f36751e;
        }
        if (W02 == 'L') {
            return Z2.f37013d;
        }
        if (W02 == 'S') {
            return j.f36757e;
        }
        if (W02 == 'Z') {
            return c.f36743g;
        }
        if (W02 == 'I') {
            return h.f36753e;
        }
        if (W02 != 'J') {
            switch (W02) {
                case 'B':
                    return d.f36745e;
                case 'C':
                    return e.f36747e;
                case 'D':
                    return f.f36749e;
                default:
                    throw new C5417Jv0("No default value for unexpected type " + ((Object) m22));
            }
        }
        return i.f36755e;
    }
}
