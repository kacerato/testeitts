package nf;

import kotlin.jvm.internal.C14026x;
import org.jetbrains.annotations.NotNull;

@Lf.h
@InterfaceC14422l0(version = "1.5")
public final class B0 implements Comparable<B0> {

    @NotNull
    public static final a f98156c = new a(null);

    public static final int f98157d = 0;

    public static final int f98158e = -1;

    public static final int f98159f = 4;

    public static final int f98160g = 32;

    public final int f98161b;

    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        public a() {
        }
    }

    @InterfaceC14410f0
    @Ef.g
    public B0(int i10) {
        this.f98161b = i10;
    }

    @Ef.f
    @Ef.g
    public static final int A(int i10, short s10) {
        return Integer.divideUnsigned(i10, o(s10 & 65535));
    }

    @InterfaceC14410f0
    public static void B() {
    }

    public static int C(int i10) {
        return Integer.hashCode(i10);
    }

    @Ef.f
    public static final int D(int i10) {
        return o(i10 + 1);
    }

    @Ef.f
    @Ef.g
    public static final int E(int i10) {
        return o(~i10);
    }

    @Ef.f
    @Ef.g
    public static final int F(int i10, byte b10) {
        return o(i10 - o(b10 & 255));
    }

    @Ef.f
    @Ef.g
    public static final long G(int i10, long j10) {
        return F0.i(F0.i(i10 & 4294967295L) - j10);
    }

    @Ef.f
    @Ef.g
    public static final int H(int i10, int i11) {
        return o(i10 - i11);
    }

    @Ef.f
    @Ef.g
    public static final int I(int i10, short s10) {
        return o(i10 - o(s10 & 65535));
    }

    @Ef.f
    @Ef.g
    public static final byte J(int i10, byte b10) {
        return x0.i((byte) Integer.remainderUnsigned(i10, o(b10 & 255)));
    }

    @Ef.f
    @Ef.g
    public static final long K(int i10, long j10) {
        return Long.remainderUnsigned(F0.i(i10 & 4294967295L), j10);
    }

    @Ef.f
    @Ef.g
    public static final int L(int i10, int i11) {
        return Integer.remainderUnsigned(i10, i11);
    }

    @Ef.f
    @Ef.g
    public static final short M(int i10, short s10) {
        return L0.i((short) Integer.remainderUnsigned(i10, o(s10 & 65535)));
    }

    @Ef.f
    @Ef.g
    public static final int N(int i10, int i11) {
        return o(i10 | i11);
    }

    @Ef.f
    @Ef.g
    public static final int O(int i10, byte b10) {
        return o(i10 + o(b10 & 255));
    }

    @Ef.f
    @Ef.g
    public static final long P(int i10, long j10) {
        return F0.i(F0.i(i10 & 4294967295L) + j10);
    }

    @Ef.f
    @Ef.g
    public static final int Q(int i10, int i11) {
        return o(i10 + i11);
    }

    @Ef.f
    @Ef.g
    public static final int R(int i10, short s10) {
        return o(i10 + o(s10 & 65535));
    }

    @Ef.f
    public static final Vf.x S(int i10, int i11) {
        return new Vf.x(i10, i11, null);
    }

    @Ef.f
    @T0(markerClass = {InterfaceC14441w.class})
    @InterfaceC14422l0(version = "1.9")
    public static final Vf.x T(int i10, int i11) {
        return Vf.C.V(i10, i11);
    }

    @Ef.f
    @Ef.g
    public static final int U(int i10, byte b10) {
        return Integer.remainderUnsigned(i10, o(b10 & 255));
    }

    @Ef.f
    @Ef.g
    public static final long V(int i10, long j10) {
        return Long.remainderUnsigned(F0.i(i10 & 4294967295L), j10);
    }

    @Ef.f
    @Ef.g
    public static final int W(int i10, int i11) {
        return S0.g(i10, i11);
    }

    @Ef.f
    @Ef.g
    public static final int X(int i10, short s10) {
        return Integer.remainderUnsigned(i10, o(s10 & 65535));
    }

    @Ef.f
    @Ef.g
    public static final int Y(int i10, int i11) {
        return o(i10 << i11);
    }

    @Ef.f
    @Ef.g
    public static final int Z(int i10, int i11) {
        return o(i10 >>> i11);
    }

    @Ef.f
    @Ef.g
    public static final int a0(int i10, byte b10) {
        return o(i10 * o(b10 & 255));
    }

    @Ef.f
    @Ef.g
    public static final long b0(int i10, long j10) {
        return F0.i(F0.i(i10 & 4294967295L) * j10);
    }

    @Ef.f
    @Ef.g
    public static final int c0(int i10, int i11) {
        return o(i10 * i11);
    }

    @Ef.f
    @Ef.g
    public static final int d(int i10, int i11) {
        return o(i10 & i11);
    }

    @Ef.f
    @Ef.g
    public static final int d0(int i10, short s10) {
        return o(i10 * o(s10 & 65535));
    }

    public static final B0 e(int i10) {
        return new B0(i10);
    }

    @Ef.f
    @Ef.g
    public static final byte e0(int i10) {
        return (byte) i10;
    }

    @Ef.f
    @Ef.g
    public static final double f0(int i10) {
        return S0.h(i10);
    }

    @Ef.f
    @Ef.g
    public static final int g(int i10, byte b10) {
        return Integer.compareUnsigned(i10, o(b10 & 255));
    }

    @Ef.f
    @Ef.g
    public static final float g0(int i10) {
        return (float) S0.h(i10);
    }

    @Ef.f
    @Ef.g
    public static final int h(int i10, long j10) {
        return Long.compareUnsigned(F0.i(i10 & 4294967295L), j10);
    }

    @Ef.f
    @Ef.g
    public static final int h0(int i10) {
        return i10;
    }

    @Ef.f
    @Ef.g
    public static final long i0(int i10) {
        return i10 & 4294967295L;
    }

    @Ef.f
    @Ef.g
    public static final short j0(int i10) {
        return (short) i10;
    }

    @Ef.f
    @Ef.g
    public static int k(int i10, int i11) {
        return S0.e(i10, i11);
    }

    @Ef.g
    @NotNull
    public static String k0(int i10) {
        return String.valueOf(i10 & 4294967295L);
    }

    @Ef.f
    @Ef.g
    public static final byte l0(int i10) {
        return x0.i((byte) i10);
    }

    @Ef.f
    @Ef.g
    public static final int m(int i10, short s10) {
        return Integer.compareUnsigned(i10, o(s10 & 65535));
    }

    @Ef.f
    @Ef.g
    public static final int m0(int i10) {
        return i10;
    }

    @InterfaceC14410f0
    @Ef.g
    public static int o(int i10) {
        return i10;
    }

    @Ef.f
    @Ef.g
    public static final long o0(int i10) {
        return F0.i(i10 & 4294967295L);
    }

    @Ef.f
    @Ef.g
    public static final short p0(int i10) {
        return L0.i((short) i10);
    }

    @Ef.f
    public static final int q(int i10) {
        return o(i10 - 1);
    }

    @Ef.f
    @Ef.g
    public static final int r(int i10, byte b10) {
        return Integer.divideUnsigned(i10, o(b10 & 255));
    }

    @Ef.f
    @Ef.g
    public static final int r0(int i10, int i11) {
        return o(i10 ^ i11);
    }

    @Ef.f
    @Ef.g
    public static final long s(int i10, long j10) {
        return Long.divideUnsigned(F0.i(i10 & 4294967295L), j10);
    }

    @Ef.f
    @Ef.g
    public static final int t(int i10, int i11) {
        return S0.f(i10, i11);
    }

    @Ef.f
    @Ef.g
    public static final int u(int i10, short s10) {
        return Integer.divideUnsigned(i10, o(s10 & 65535));
    }

    public static boolean v(int i10, Object obj) {
        return (obj instanceof B0) && i10 == ((B0) obj).q0();
    }

    public static final boolean w(int i10, int i11) {
        return i10 == i11;
    }

    @Ef.f
    @Ef.g
    public static final int x(int i10, byte b10) {
        return Integer.divideUnsigned(i10, o(b10 & 255));
    }

    @Ef.f
    @Ef.g
    public static final long y(int i10, long j10) {
        return Long.divideUnsigned(F0.i(i10 & 4294967295L), j10);
    }

    @Ef.f
    @Ef.g
    public static final int z(int i10, int i11) {
        return Integer.divideUnsigned(i10, i11);
    }

    @Override
    public int compareTo(B0 b02) {
        return S0.e(q0(), b02.q0());
    }

    public boolean equals(Object obj) {
        return v(this.f98161b, obj);
    }

    public int hashCode() {
        return C(this.f98161b);
    }

    @Ef.f
    @Ef.g
    public final int j(int i10) {
        return S0.e(q0(), i10);
    }

    public final int q0() {
        return this.f98161b;
    }

    @Ef.g
    @NotNull
    public String toString() {
        return k0(this.f98161b);
    }
}
