package nf;

import kotlin.jvm.internal.C14026x;
import org.jetbrains.annotations.NotNull;

@Lf.h
@InterfaceC14422l0(version = "1.5")
public final class F0 implements Comparable<F0> {

    @NotNull
    public static final a f98173c = new a(null);

    public static final long f98174d = 0;

    public static final long f98175e = -1;

    public static final int f98176f = 8;

    public static final int f98177g = 64;

    public final long f98178b;

    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        public a() {
        }
    }

    @InterfaceC14410f0
    @Ef.g
    public F0(long j10) {
        this.f98178b = j10;
    }

    @Ef.f
    @Ef.g
    public static final long A(long j10) {
        return i(~j10);
    }

    @Ef.f
    @Ef.g
    public static final long B(long j10, byte b10) {
        return i(j10 - i(b10 & 255));
    }

    @Ef.f
    @Ef.g
    public static final long C(long j10, long j11) {
        return i(j10 - j11);
    }

    @Ef.f
    @Ef.g
    public static final long D(long j10, int i10) {
        return i(j10 - i(i10 & 4294967295L));
    }

    @Ef.f
    @Ef.g
    public static final long E(long j10, short s10) {
        return i(j10 - i(s10 & Sg.b.f23266s));
    }

    @Ef.f
    @Ef.g
    public static final byte F(long j10, byte b10) {
        return x0.i((byte) Long.remainderUnsigned(j10, i(b10 & 255)));
    }

    @Ef.f
    @Ef.g
    public static final long G(long j10, long j11) {
        return Long.remainderUnsigned(j10, j11);
    }

    @Ef.f
    @Ef.g
    public static final int H(long j10, int i10) {
        return B0.o((int) Long.remainderUnsigned(j10, i(i10 & 4294967295L)));
    }

    @Ef.f
    @Ef.g
    public static final short I(long j10, short s10) {
        return L0.i((short) Long.remainderUnsigned(j10, i(s10 & Sg.b.f23266s)));
    }

    @Ef.f
    @Ef.g
    public static final long J(long j10, long j11) {
        return i(j10 | j11);
    }

    @Ef.f
    @Ef.g
    public static final long K(long j10, byte b10) {
        return i(j10 + i(b10 & 255));
    }

    @Ef.f
    @Ef.g
    public static final long L(long j10, long j11) {
        return i(j10 + j11);
    }

    @Ef.f
    @Ef.g
    public static final long M(long j10, int i10) {
        return i(j10 + i(i10 & 4294967295L));
    }

    @Ef.f
    @Ef.g
    public static final long N(long j10, short s10) {
        return i(j10 + i(s10 & Sg.b.f23266s));
    }

    @Ef.f
    public static final Vf.A O(long j10, long j11) {
        return new Vf.A(j10, j11, null);
    }

    @Ef.f
    @T0(markerClass = {InterfaceC14441w.class})
    @InterfaceC14422l0(version = "1.9")
    public static final Vf.A P(long j10, long j11) {
        return Vf.C.X(j10, j11);
    }

    @Ef.f
    @Ef.g
    public static final long Q(long j10, byte b10) {
        return Long.remainderUnsigned(j10, i(b10 & 255));
    }

    @Ef.f
    @Ef.g
    public static final long R(long j10, long j11) {
        return S0.p(j10, j11);
    }

    @Ef.f
    @Ef.g
    public static final long S(long j10, int i10) {
        return Long.remainderUnsigned(j10, i(i10 & 4294967295L));
    }

    @Ef.f
    @Ef.g
    public static final long T(long j10, short s10) {
        return Long.remainderUnsigned(j10, i(s10 & Sg.b.f23266s));
    }

    @Ef.f
    @Ef.g
    public static final long U(long j10, int i10) {
        return i(j10 << i10);
    }

    @Ef.f
    @Ef.g
    public static final long V(long j10, int i10) {
        return i(j10 >>> i10);
    }

    @Ef.f
    @Ef.g
    public static final long W(long j10, byte b10) {
        return i(j10 * i(b10 & 255));
    }

    @Ef.f
    @Ef.g
    public static final long X(long j10, long j11) {
        return i(j10 * j11);
    }

    @Ef.f
    @Ef.g
    public static final long Y(long j10, int i10) {
        return i(j10 * i(i10 & 4294967295L));
    }

    @Ef.f
    @Ef.g
    public static final long Z(long j10, short s10) {
        return i(j10 * i(s10 & Sg.b.f23266s));
    }

    @Ef.f
    @Ef.g
    public static final long a(long j10, long j11) {
        return i(j10 & j11);
    }

    @Ef.f
    @Ef.g
    public static final byte a0(long j10) {
        return (byte) j10;
    }

    public static final F0 b(long j10) {
        return new F0(j10);
    }

    @Ef.f
    @Ef.g
    public static final double b0(long j10) {
        return S0.q(j10);
    }

    @Ef.f
    @Ef.g
    public static final int c(long j10, byte b10) {
        return Long.compareUnsigned(j10, i(b10 & 255));
    }

    @Ef.f
    @Ef.g
    public static final float c0(long j10) {
        return (float) S0.q(j10);
    }

    @Ef.f
    @Ef.g
    public static final int d0(long j10) {
        return (int) j10;
    }

    @Ef.f
    @Ef.g
    public static int e(long j10, long j11) {
        return S0.n(j10, j11);
    }

    @Ef.f
    @Ef.g
    public static final long e0(long j10) {
        return j10;
    }

    @Ef.f
    @Ef.g
    public static final short f0(long j10) {
        return (short) j10;
    }

    @Ef.f
    @Ef.g
    public static final int g(long j10, int i10) {
        return Long.compareUnsigned(j10, i(i10 & 4294967295L));
    }

    @Ef.g
    @NotNull
    public static String g0(long j10) {
        return S0.t(j10, 10);
    }

    @Ef.f
    @Ef.g
    public static final int h(long j10, short s10) {
        return Long.compareUnsigned(j10, i(s10 & Sg.b.f23266s));
    }

    @Ef.f
    @Ef.g
    public static final byte h0(long j10) {
        return x0.i((byte) j10);
    }

    @InterfaceC14410f0
    @Ef.g
    public static long i(long j10) {
        return j10;
    }

    @Ef.f
    @Ef.g
    public static final int i0(long j10) {
        return B0.o((int) j10);
    }

    @Ef.f
    public static final long j(long j10) {
        return i(j10 - 1);
    }

    @Ef.f
    @Ef.g
    public static final long j0(long j10) {
        return j10;
    }

    @Ef.f
    @Ef.g
    public static final long k(long j10, byte b10) {
        return Long.divideUnsigned(j10, i(b10 & 255));
    }

    @Ef.f
    @Ef.g
    public static final short k0(long j10) {
        return L0.i((short) j10);
    }

    @Ef.f
    @Ef.g
    public static final long m(long j10, long j11) {
        return S0.o(j10, j11);
    }

    @Ef.f
    @Ef.g
    public static final long m0(long j10, long j11) {
        return i(j10 ^ j11);
    }

    @Ef.f
    @Ef.g
    public static final long o(long j10, int i10) {
        return Long.divideUnsigned(j10, i(i10 & 4294967295L));
    }

    @Ef.f
    @Ef.g
    public static final long q(long j10, short s10) {
        return Long.divideUnsigned(j10, i(s10 & Sg.b.f23266s));
    }

    public static boolean r(long j10, Object obj) {
        return (obj instanceof F0) && j10 == ((F0) obj).l0();
    }

    public static final boolean s(long j10, long j11) {
        return j10 == j11;
    }

    @Ef.f
    @Ef.g
    public static final long t(long j10, byte b10) {
        return Long.divideUnsigned(j10, i(b10 & 255));
    }

    @Ef.f
    @Ef.g
    public static final long u(long j10, long j11) {
        return Long.divideUnsigned(j10, j11);
    }

    @Ef.f
    @Ef.g
    public static final long v(long j10, int i10) {
        return Long.divideUnsigned(j10, i(i10 & 4294967295L));
    }

    @Ef.f
    @Ef.g
    public static final long w(long j10, short s10) {
        return Long.divideUnsigned(j10, i(s10 & Sg.b.f23266s));
    }

    @InterfaceC14410f0
    public static void x() {
    }

    public static int y(long j10) {
        return Long.hashCode(j10);
    }

    @Ef.f
    public static final long z(long j10) {
        return i(j10 + 1);
    }

    @Override
    public int compareTo(F0 f02) {
        return S0.n(l0(), f02.l0());
    }

    @Ef.f
    @Ef.g
    public final int d(long j10) {
        return S0.n(l0(), j10);
    }

    public boolean equals(Object obj) {
        return r(this.f98178b, obj);
    }

    public int hashCode() {
        return y(this.f98178b);
    }

    public final long l0() {
        return this.f98178b;
    }

    @Ef.g
    @NotNull
    public String toString() {
        return g0(this.f98178b);
    }
}
