package kotlin.time;

import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import kotlin.time.C14036h;
import org.jetbrains.annotations.NotNull;

@t0({"SMAP\nlongSaturatedMath.kt\nKotlin\n*S Kotlin\n*F\n+ 1 longSaturatedMath.kt\nkotlin/time/LongSaturatedMathKt\n*L\n1#1,81:1\n80#1:82\n80#1:83\n80#1:84\n80#1:85\n80#1:86\n80#1:87\n*S KotlinDebug\n*F\n+ 1 longSaturatedMath.kt\nkotlin/time/LongSaturatedMathKt\n*L\n14#1:82\n17#1:83\n36#1:84\n46#1:85\n53#1:86\n57#1:87\n*E\n"})
public final class C {
    public static final long a(long j10, long j11, long j12) {
        if (!C14036h.S(j11) || (j10 ^ j12) >= 0) {
            return j10;
        }
        throw new IllegalArgumentException("Summing infinities of different signs");
    }

    public static final long b(long j10) {
        return j10 < 0 ? C14036h.f95864c.J() : C14036h.f95864c.o();
    }

    public static final boolean c(long j10) {
        return ((j10 - 1) | 1) == Long.MAX_VALUE;
    }

    public static final long d(long j10, @NotNull EnumC14039k unit, long j11) {
        M.p(unit, "unit");
        long g02 = C14036h.g0(j11, unit);
        if (((j10 - 1) | 1) == Long.MAX_VALUE) {
            return a(j10, j11, g02);
        }
        if ((1 | (g02 - 1)) == Long.MAX_VALUE) {
            return e(j10, unit, j11);
        }
        long j12 = j10 + g02;
        return ((j10 ^ j12) & (g02 ^ j12)) < 0 ? j10 < 0 ? Long.MIN_VALUE : Long.MAX_VALUE : j12;
    }

    public static final long e(long j10, EnumC14039k enumC14039k, long j11) {
        long s10 = C14036h.s(j11, 2);
        long g02 = C14036h.g0(s10, enumC14039k);
        return (1 | (g02 - 1)) == Long.MAX_VALUE ? g02 : d(d(j10, enumC14039k, s10), enumC14039k, C14036h.V(j11, s10));
    }

    public static final long f(long j10, long j11, @NotNull EnumC14039k unit) {
        M.p(unit, "unit");
        return (1 | (j11 - 1)) == Long.MAX_VALUE ? C14036h.l0(b(j11)) : g(j10, j11, unit);
    }

    public static final long g(long j10, long j11, EnumC14039k enumC14039k) {
        long j12 = j10 - j11;
        if (((j12 ^ j10) & (~(j12 ^ j11))) >= 0) {
            return C14038j.P(j12, enumC14039k);
        }
        EnumC14039k enumC14039k2 = EnumC14039k.MILLISECONDS;
        if (enumC14039k.compareTo(enumC14039k2) >= 0) {
            return C14036h.l0(b(j12));
        }
        long b10 = m.b(1L, enumC14039k2, enumC14039k);
        long j13 = (j10 / b10) - (j11 / b10);
        long j14 = (j10 % b10) - (j11 % b10);
        C14036h.a aVar = C14036h.f95864c;
        return C14036h.W(C14038j.P(j13, enumC14039k2), C14038j.P(j14, enumC14039k));
    }

    public static final long h(long j10, long j11, @NotNull EnumC14039k unit) {
        M.p(unit, "unit");
        return ((j11 - 1) | 1) == Long.MAX_VALUE ? j10 == j11 ? C14036h.f95864c.W() : C14036h.l0(b(j11)) : (1 | (j10 - 1)) == Long.MAX_VALUE ? b(j10) : g(j10, j11, unit);
    }
}
