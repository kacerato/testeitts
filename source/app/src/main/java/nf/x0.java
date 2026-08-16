package nf;

import kotlin.jvm.internal.C14026x;
import org.jetbrains.annotations.NotNull;

@Lf.h
@InterfaceC14422l0(version = "1.5")
public final class x0 implements Comparable<x0> {

    @NotNull
    public static final a f98225c = new a(null);

    public static final byte f98226d = 0;

    public static final byte f98227e = -1;

    public static final int f98228f = 1;

    public static final int f98229g = 8;

    public final byte f98230b;

    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        public a() {
        }
    }

    @InterfaceC14410f0
    @Ef.g
    public x0(byte b10) {
        this.f98230b = b10;
    }

    @Ef.f
    @Ef.g
    public static final byte A(byte b10) {
        return i((byte) (~b10));
    }

    @Ef.f
    @Ef.g
    public static final int B(byte b10, byte b11) {
        return B0.o(B0.o(b10 & 255) - B0.o(b11 & 255));
    }

    @Ef.f
    @Ef.g
    public static final long C(byte b10, long j10) {
        return F0.i(F0.i(b10 & 255) - j10);
    }

    @Ef.f
    @Ef.g
    public static final int D(byte b10, int i10) {
        return B0.o(B0.o(b10 & 255) - i10);
    }

    @Ef.f
    @Ef.g
    public static final int E(byte b10, short s10) {
        return B0.o(B0.o(b10 & 255) - B0.o(s10 & 65535));
    }

    @Ef.f
    @Ef.g
    public static final byte F(byte b10, byte b11) {
        return i((byte) Integer.remainderUnsigned(B0.o(b10 & 255), B0.o(b11 & 255)));
    }

    @Ef.f
    @Ef.g
    public static final long G(byte b10, long j10) {
        return Long.remainderUnsigned(F0.i(b10 & 255), j10);
    }

    @Ef.f
    @Ef.g
    public static final int H(byte b10, int i10) {
        return Integer.remainderUnsigned(B0.o(b10 & 255), i10);
    }

    @Ef.f
    @Ef.g
    public static final short I(byte b10, short s10) {
        return L0.i((short) Integer.remainderUnsigned(B0.o(b10 & 255), B0.o(s10 & 65535)));
    }

    @Ef.f
    @Ef.g
    public static final byte J(byte b10, byte b11) {
        return i((byte) (b10 | b11));
    }

    @Ef.f
    @Ef.g
    public static final int K(byte b10, byte b11) {
        return B0.o(B0.o(b10 & 255) + B0.o(b11 & 255));
    }

    @Ef.f
    @Ef.g
    public static final long L(byte b10, long j10) {
        return F0.i(F0.i(b10 & 255) + j10);
    }

    @Ef.f
    @Ef.g
    public static final int M(byte b10, int i10) {
        return B0.o(B0.o(b10 & 255) + i10);
    }

    @Ef.f
    @Ef.g
    public static final int N(byte b10, short s10) {
        return B0.o(B0.o(b10 & 255) + B0.o(s10 & 65535));
    }

    @Ef.f
    public static final Vf.x O(byte b10, byte b11) {
        return new Vf.x(B0.o(b10 & 255), B0.o(b11 & 255), null);
    }

    @Ef.f
    @T0(markerClass = {InterfaceC14441w.class})
    @InterfaceC14422l0(version = "1.9")
    public static final Vf.x P(byte b10, byte b11) {
        return Vf.C.V(B0.o(b10 & 255), B0.o(b11 & 255));
    }

    @Ef.f
    @Ef.g
    public static final int Q(byte b10, byte b11) {
        return Integer.remainderUnsigned(B0.o(b10 & 255), B0.o(b11 & 255));
    }

    @Ef.f
    @Ef.g
    public static final long R(byte b10, long j10) {
        return Long.remainderUnsigned(F0.i(b10 & 255), j10);
    }

    @Ef.f
    @Ef.g
    public static final int S(byte b10, int i10) {
        return Integer.remainderUnsigned(B0.o(b10 & 255), i10);
    }

    @Ef.f
    @Ef.g
    public static final int T(byte b10, short s10) {
        return Integer.remainderUnsigned(B0.o(b10 & 255), B0.o(s10 & 65535));
    }

    @Ef.f
    @Ef.g
    public static final int U(byte b10, byte b11) {
        return B0.o(B0.o(b10 & 255) * B0.o(b11 & 255));
    }

    @Ef.f
    @Ef.g
    public static final long V(byte b10, long j10) {
        return F0.i(F0.i(b10 & 255) * j10);
    }

    @Ef.f
    @Ef.g
    public static final int W(byte b10, int i10) {
        return B0.o(B0.o(b10 & 255) * i10);
    }

    @Ef.f
    @Ef.g
    public static final int X(byte b10, short s10) {
        return B0.o(B0.o(b10 & 255) * B0.o(s10 & 65535));
    }

    @Ef.f
    @Ef.g
    public static final byte Y(byte b10) {
        return b10;
    }

    @Ef.f
    @Ef.g
    public static final double Z(byte b10) {
        return S0.h(b10 & 255);
    }

    @Ef.f
    @Ef.g
    public static final byte a(byte b10, byte b11) {
        return i((byte) (b10 & b11));
    }

    @Ef.f
    @Ef.g
    public static final float a0(byte b10) {
        return (float) S0.h(b10 & 255);
    }

    public static final x0 b(byte b10) {
        return new x0(b10);
    }

    @Ef.f
    @Ef.g
    public static final int b0(byte b10) {
        return b10 & 255;
    }

    @Ef.f
    @Ef.g
    public static final long c0(byte b10) {
        return b10 & 255;
    }

    @Ef.f
    @Ef.g
    public static int d(byte b10, byte b11) {
        return kotlin.jvm.internal.M.t(b10 & 255, b11 & 255);
    }

    @Ef.f
    @Ef.g
    public static final short d0(byte b10) {
        return (short) (b10 & 255);
    }

    @Ef.f
    @Ef.g
    public static final int e(byte b10, long j10) {
        return Long.compareUnsigned(F0.i(b10 & 255), j10);
    }

    @Ef.g
    @NotNull
    public static String e0(byte b10) {
        return String.valueOf(b10 & 255);
    }

    @Ef.f
    @Ef.g
    public static final byte f0(byte b10) {
        return b10;
    }

    @Ef.f
    @Ef.g
    public static final int g(byte b10, int i10) {
        return Integer.compareUnsigned(B0.o(b10 & 255), i10);
    }

    @Ef.f
    @Ef.g
    public static final int g0(byte b10) {
        return B0.o(b10 & 255);
    }

    @Ef.f
    @Ef.g
    public static final int h(byte b10, short s10) {
        return kotlin.jvm.internal.M.t(b10 & 255, s10 & 65535);
    }

    @Ef.f
    @Ef.g
    public static final long h0(byte b10) {
        return F0.i(b10 & 255);
    }

    @InterfaceC14410f0
    @Ef.g
    public static byte i(byte b10) {
        return b10;
    }

    @Ef.f
    @Ef.g
    public static final short i0(byte b10) {
        return L0.i((short) (b10 & 255));
    }

    @Ef.f
    public static final byte j(byte b10) {
        return i((byte) (b10 - 1));
    }

    @Ef.f
    @Ef.g
    public static final int k(byte b10, byte b11) {
        return Integer.divideUnsigned(B0.o(b10 & 255), B0.o(b11 & 255));
    }

    @Ef.f
    @Ef.g
    public static final byte k0(byte b10, byte b11) {
        return i((byte) (b10 ^ b11));
    }

    @Ef.f
    @Ef.g
    public static final long m(byte b10, long j10) {
        return Long.divideUnsigned(F0.i(b10 & 255), j10);
    }

    @Ef.f
    @Ef.g
    public static final int o(byte b10, int i10) {
        return Integer.divideUnsigned(B0.o(b10 & 255), i10);
    }

    @Ef.f
    @Ef.g
    public static final int q(byte b10, short s10) {
        return Integer.divideUnsigned(B0.o(b10 & 255), B0.o(s10 & 65535));
    }

    public static boolean r(byte b10, Object obj) {
        return (obj instanceof x0) && b10 == ((x0) obj).j0();
    }

    public static final boolean s(byte b10, byte b11) {
        return b10 == b11;
    }

    @Ef.f
    @Ef.g
    public static final int t(byte b10, byte b11) {
        return Integer.divideUnsigned(B0.o(b10 & 255), B0.o(b11 & 255));
    }

    @Ef.f
    @Ef.g
    public static final long u(byte b10, long j10) {
        return Long.divideUnsigned(F0.i(b10 & 255), j10);
    }

    @Ef.f
    @Ef.g
    public static final int v(byte b10, int i10) {
        return Integer.divideUnsigned(B0.o(b10 & 255), i10);
    }

    @Ef.f
    @Ef.g
    public static final int w(byte b10, short s10) {
        return Integer.divideUnsigned(B0.o(b10 & 255), B0.o(s10 & 65535));
    }

    @InterfaceC14410f0
    public static void x() {
    }

    public static int y(byte b10) {
        return Byte.hashCode(b10);
    }

    @Ef.f
    public static final byte z(byte b10) {
        return i((byte) (b10 + 1));
    }

    @Ef.f
    @Ef.g
    public final int c(byte b10) {
        return kotlin.jvm.internal.M.t(j0() & 255, b10 & 255);
    }

    @Override
    public int compareTo(x0 x0Var) {
        return kotlin.jvm.internal.M.t(j0() & 255, x0Var.j0() & 255);
    }

    public boolean equals(Object obj) {
        return r(this.f98230b, obj);
    }

    public int hashCode() {
        return y(this.f98230b);
    }

    public final byte j0() {
        return this.f98230b;
    }

    @Ef.g
    @NotNull
    public String toString() {
        return e0(this.f98230b);
    }
}
