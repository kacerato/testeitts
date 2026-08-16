package nf;

import kotlin.jvm.internal.C14026x;
import org.jetbrains.annotations.NotNull;

@Lf.h
@InterfaceC14422l0(version = "1.5")
public final class L0 implements Comparable<L0> {

    @NotNull
    public static final a f98185c = new a(null);

    public static final short f98186d = 0;

    public static final short f98187e = -1;

    public static final int f98188f = 2;

    public static final int f98189g = 16;

    public final short f98190b;

    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        public a() {
        }
    }

    @InterfaceC14410f0
    @Ef.g
    public L0(short s10) {
        this.f98190b = s10;
    }

    @Ef.f
    @Ef.g
    public static final short A(short s10) {
        return i((short) (~s10));
    }

    @Ef.f
    @Ef.g
    public static final int B(short s10, byte b10) {
        return B0.o(B0.o(s10 & 65535) - B0.o(b10 & 255));
    }

    @Ef.f
    @Ef.g
    public static final long C(short s10, long j10) {
        return F0.i(F0.i(s10 & Sg.b.f23266s) - j10);
    }

    @Ef.f
    @Ef.g
    public static final int D(short s10, int i10) {
        return B0.o(B0.o(s10 & 65535) - i10);
    }

    @Ef.f
    @Ef.g
    public static final int E(short s10, short s11) {
        return B0.o(B0.o(s10 & 65535) - B0.o(s11 & 65535));
    }

    @Ef.f
    @Ef.g
    public static final byte F(short s10, byte b10) {
        return x0.i((byte) Integer.remainderUnsigned(B0.o(s10 & 65535), B0.o(b10 & 255)));
    }

    @Ef.f
    @Ef.g
    public static final long G(short s10, long j10) {
        return Long.remainderUnsigned(F0.i(s10 & Sg.b.f23266s), j10);
    }

    @Ef.f
    @Ef.g
    public static final int H(short s10, int i10) {
        return Integer.remainderUnsigned(B0.o(s10 & 65535), i10);
    }

    @Ef.f
    @Ef.g
    public static final short I(short s10, short s11) {
        return i((short) Integer.remainderUnsigned(B0.o(s10 & 65535), B0.o(s11 & 65535)));
    }

    @Ef.f
    @Ef.g
    public static final short J(short s10, short s11) {
        return i((short) (s10 | s11));
    }

    @Ef.f
    @Ef.g
    public static final int K(short s10, byte b10) {
        return B0.o(B0.o(s10 & 65535) + B0.o(b10 & 255));
    }

    @Ef.f
    @Ef.g
    public static final long L(short s10, long j10) {
        return F0.i(F0.i(s10 & Sg.b.f23266s) + j10);
    }

    @Ef.f
    @Ef.g
    public static final int M(short s10, int i10) {
        return B0.o(B0.o(s10 & 65535) + i10);
    }

    @Ef.f
    @Ef.g
    public static final int N(short s10, short s11) {
        return B0.o(B0.o(s10 & 65535) + B0.o(s11 & 65535));
    }

    @Ef.f
    public static final Vf.x O(short s10, short s11) {
        return new Vf.x(B0.o(s10 & 65535), B0.o(s11 & 65535), null);
    }

    @Ef.f
    @T0(markerClass = {InterfaceC14441w.class})
    @InterfaceC14422l0(version = "1.9")
    public static final Vf.x P(short s10, short s11) {
        return Vf.C.V(B0.o(s10 & 65535), B0.o(s11 & 65535));
    }

    @Ef.f
    @Ef.g
    public static final int Q(short s10, byte b10) {
        return Integer.remainderUnsigned(B0.o(s10 & 65535), B0.o(b10 & 255));
    }

    @Ef.f
    @Ef.g
    public static final long R(short s10, long j10) {
        return Long.remainderUnsigned(F0.i(s10 & Sg.b.f23266s), j10);
    }

    @Ef.f
    @Ef.g
    public static final int S(short s10, int i10) {
        return Integer.remainderUnsigned(B0.o(s10 & 65535), i10);
    }

    @Ef.f
    @Ef.g
    public static final int T(short s10, short s11) {
        return Integer.remainderUnsigned(B0.o(s10 & 65535), B0.o(s11 & 65535));
    }

    @Ef.f
    @Ef.g
    public static final int U(short s10, byte b10) {
        return B0.o(B0.o(s10 & 65535) * B0.o(b10 & 255));
    }

    @Ef.f
    @Ef.g
    public static final long V(short s10, long j10) {
        return F0.i(F0.i(s10 & Sg.b.f23266s) * j10);
    }

    @Ef.f
    @Ef.g
    public static final int W(short s10, int i10) {
        return B0.o(B0.o(s10 & 65535) * i10);
    }

    @Ef.f
    @Ef.g
    public static final int X(short s10, short s11) {
        return B0.o(B0.o(s10 & 65535) * B0.o(s11 & 65535));
    }

    @Ef.f
    @Ef.g
    public static final byte Y(short s10) {
        return (byte) s10;
    }

    @Ef.f
    @Ef.g
    public static final double Z(short s10) {
        return S0.h(s10 & 65535);
    }

    @Ef.f
    @Ef.g
    public static final short a(short s10, short s11) {
        return i((short) (s10 & s11));
    }

    @Ef.f
    @Ef.g
    public static final float a0(short s10) {
        return (float) S0.h(s10 & 65535);
    }

    public static final L0 b(short s10) {
        return new L0(s10);
    }

    @Ef.f
    @Ef.g
    public static final int b0(short s10) {
        return s10 & 65535;
    }

    @Ef.f
    @Ef.g
    public static final int c(short s10, byte b10) {
        return kotlin.jvm.internal.M.t(s10 & 65535, b10 & 255);
    }

    @Ef.f
    @Ef.g
    public static final long c0(short s10) {
        return s10 & Sg.b.f23266s;
    }

    @Ef.f
    @Ef.g
    public static final int d(short s10, long j10) {
        return Long.compareUnsigned(F0.i(s10 & Sg.b.f23266s), j10);
    }

    @Ef.f
    @Ef.g
    public static final short d0(short s10) {
        return s10;
    }

    @Ef.f
    @Ef.g
    public static final int e(short s10, int i10) {
        return Integer.compareUnsigned(B0.o(s10 & 65535), i10);
    }

    @Ef.g
    @NotNull
    public static String e0(short s10) {
        return String.valueOf(s10 & 65535);
    }

    @Ef.f
    @Ef.g
    public static final byte f0(short s10) {
        return x0.i((byte) s10);
    }

    @Ef.f
    @Ef.g
    public static final int g0(short s10) {
        return B0.o(s10 & 65535);
    }

    @Ef.f
    @Ef.g
    public static int h(short s10, short s11) {
        return kotlin.jvm.internal.M.t(s10 & 65535, s11 & 65535);
    }

    @Ef.f
    @Ef.g
    public static final long h0(short s10) {
        return F0.i(s10 & Sg.b.f23266s);
    }

    @InterfaceC14410f0
    @Ef.g
    public static short i(short s10) {
        return s10;
    }

    @Ef.f
    @Ef.g
    public static final short i0(short s10) {
        return s10;
    }

    @Ef.f
    public static final short j(short s10) {
        return i((short) (s10 - 1));
    }

    @Ef.f
    @Ef.g
    public static final int k(short s10, byte b10) {
        return Integer.divideUnsigned(B0.o(s10 & 65535), B0.o(b10 & 255));
    }

    @Ef.f
    @Ef.g
    public static final short k0(short s10, short s11) {
        return i((short) (s10 ^ s11));
    }

    @Ef.f
    @Ef.g
    public static final long m(short s10, long j10) {
        return Long.divideUnsigned(F0.i(s10 & Sg.b.f23266s), j10);
    }

    @Ef.f
    @Ef.g
    public static final int o(short s10, int i10) {
        return Integer.divideUnsigned(B0.o(s10 & 65535), i10);
    }

    @Ef.f
    @Ef.g
    public static final int q(short s10, short s11) {
        return Integer.divideUnsigned(B0.o(s10 & 65535), B0.o(s11 & 65535));
    }

    public static boolean r(short s10, Object obj) {
        return (obj instanceof L0) && s10 == ((L0) obj).j0();
    }

    public static final boolean s(short s10, short s11) {
        return s10 == s11;
    }

    @Ef.f
    @Ef.g
    public static final int t(short s10, byte b10) {
        return Integer.divideUnsigned(B0.o(s10 & 65535), B0.o(b10 & 255));
    }

    @Ef.f
    @Ef.g
    public static final long u(short s10, long j10) {
        return Long.divideUnsigned(F0.i(s10 & Sg.b.f23266s), j10);
    }

    @Ef.f
    @Ef.g
    public static final int v(short s10, int i10) {
        return Integer.divideUnsigned(B0.o(s10 & 65535), i10);
    }

    @Ef.f
    @Ef.g
    public static final int w(short s10, short s11) {
        return Integer.divideUnsigned(B0.o(s10 & 65535), B0.o(s11 & 65535));
    }

    @InterfaceC14410f0
    public static void x() {
    }

    public static int y(short s10) {
        return Short.hashCode(s10);
    }

    @Ef.f
    public static final short z(short s10) {
        return i((short) (s10 + 1));
    }

    @Override
    public int compareTo(L0 l02) {
        return kotlin.jvm.internal.M.t(j0() & 65535, l02.j0() & 65535);
    }

    public boolean equals(Object obj) {
        return r(this.f98190b, obj);
    }

    @Ef.f
    @Ef.g
    public final int g(short s10) {
        return kotlin.jvm.internal.M.t(j0() & 65535, s10 & 65535);
    }

    public int hashCode() {
        return y(this.f98190b);
    }

    public final short j0() {
        return this.f98190b;
    }

    @Ef.g
    @NotNull
    public String toString() {
        return e0(this.f98190b);
    }
}
