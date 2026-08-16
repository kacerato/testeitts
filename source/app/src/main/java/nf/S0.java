package nf;

import ag.C3623e;
import org.jetbrains.annotations.NotNull;

@Lf.j(name = "UnsignedKt")
public final class S0 {
    @InterfaceC14410f0
    public static final int a(double d10) {
        if (Double.isNaN(d10) || d10 <= 0.0d) {
            return 0;
        }
        if (d10 >= 4.294967295E9d) {
            return -1;
        }
        return d10 <= 2.147483647E9d ? B0.o((int) d10) : B0.o(B0.o((int) (d10 - Integer.MAX_VALUE)) + B0.o(Integer.MAX_VALUE));
    }

    @InterfaceC14410f0
    public static final long b(double d10) {
        if (Double.isNaN(d10) || d10 <= 0.0d) {
            return 0L;
        }
        if (d10 >= 1.8446744073709552E19d) {
            return -1L;
        }
        return d10 < 9.223372036854776E18d ? F0.i((long) d10) : F0.i(F0.i((long) (d10 - 9.223372036854776E18d)) - Long.MIN_VALUE);
    }

    @Ef.f
    @InterfaceC14410f0
    public static final int c(float f10) {
        return a(f10);
    }

    @Ef.f
    @InterfaceC14410f0
    public static final long d(float f10) {
        return b(f10);
    }

    @InterfaceC14410f0
    public static final int e(int i10, int i11) {
        return kotlin.jvm.internal.M.t(i10 ^ Integer.MIN_VALUE, i11 ^ Integer.MIN_VALUE);
    }

    @InterfaceC14410f0
    public static final int f(int i10, int i11) {
        return B0.o((int) ((i10 & 4294967295L) / (i11 & 4294967295L)));
    }

    @InterfaceC14410f0
    public static final int g(int i10, int i11) {
        return B0.o((int) ((i10 & 4294967295L) % (i11 & 4294967295L)));
    }

    @InterfaceC14410f0
    public static final double h(int i10) {
        return (Integer.MAX_VALUE & i10) + (((i10 >>> 31) << 30) * 2);
    }

    @Ef.f
    @InterfaceC14410f0
    public static final float i(int i10) {
        return (float) h(i10);
    }

    @Ef.f
    @InterfaceC14410f0
    public static final long j(int i10) {
        return i10 & 4294967295L;
    }

    @Ef.f
    public static final String k(int i10) {
        return String.valueOf(i10 & 4294967295L);
    }

    @Ef.f
    public static final String l(int i10, int i11) {
        return t(i10 & 4294967295L, i11);
    }

    @Ef.f
    @InterfaceC14410f0
    public static final long m(int i10) {
        return F0.i(i10 & 4294967295L);
    }

    @InterfaceC14410f0
    public static final int n(long j10, long j11) {
        return kotlin.jvm.internal.M.u(j10 ^ Long.MIN_VALUE, j11 ^ Long.MIN_VALUE);
    }

    @InterfaceC14410f0
    public static final long o(long j10, long j11) {
        if (j11 < 0) {
            return Long.compareUnsigned(j10, j11) < 0 ? F0.i(0L) : F0.i(1L);
        }
        if (j10 >= 0) {
            return F0.i(j10 / j11);
        }
        long j12 = ((j10 >>> 1) / j11) << 1;
        return F0.i(j12 + (Long.compareUnsigned(F0.i(j10 - (j12 * j11)), F0.i(j11)) < 0 ? 0 : 1));
    }

    @InterfaceC14410f0
    public static final long p(long j10, long j11) {
        if (j11 < 0) {
            return Long.compareUnsigned(j10, j11) < 0 ? j10 : F0.i(j10 - j11);
        }
        if (j10 >= 0) {
            return F0.i(j10 % j11);
        }
        long j12 = j10 - ((((j10 >>> 1) / j11) << 1) * j11);
        if (Long.compareUnsigned(F0.i(j12), F0.i(j11)) < 0) {
            j11 = 0;
        }
        return F0.i(j12 - j11);
    }

    @InterfaceC14410f0
    public static final double q(long j10) {
        return ((j10 >>> 11) * 2048) + (j10 & 2047);
    }

    @Ef.f
    @InterfaceC14410f0
    public static final float r(long j10) {
        return (float) q(j10);
    }

    @Ef.f
    public static final String s(long j10) {
        return t(j10, 10);
    }

    @NotNull
    public static final String t(long j10, int i10) {
        if (j10 >= 0) {
            String l10 = Long.toString(j10, C3623e.a(i10));
            kotlin.jvm.internal.M.o(l10, "toString(...)");
            return l10;
        }
        long j11 = i10;
        long j12 = ((j10 >>> 1) / j11) << 1;
        long j13 = j10 - (j12 * j11);
        if (j13 >= j11) {
            j13 -= j11;
            j12++;
        }
        StringBuilder sb2 = new StringBuilder();
        String l11 = Long.toString(j12, C3623e.a(i10));
        kotlin.jvm.internal.M.o(l11, "toString(...)");
        sb2.append(l11);
        String l12 = Long.toString(j13, C3623e.a(i10));
        kotlin.jvm.internal.M.o(l12, "toString(...)");
        sb2.append(l12);
        return sb2.toString();
    }
}
