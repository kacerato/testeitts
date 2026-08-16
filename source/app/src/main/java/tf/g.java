package Tf;

import Vf.l;
import Vf.o;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import nf.InterfaceC14422l0;
import org.jetbrains.annotations.NotNull;

@t0({"SMAP\nRandom.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Random.kt\nkotlin/random/RandomKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,390:1\n1#2:391\n*E\n"})
public final class g {
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final f a(int i10) {
        return new i(i10, i10 >> 31);
    }

    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final f b(long j10) {
        return new i((int) j10, (int) (j10 >> 32));
    }

    @NotNull
    public static final String c(@NotNull Object from, @NotNull Object until) {
        M.p(from, "from");
        M.p(until, "until");
        return "Random range is empty: [" + from + ", " + until + ").";
    }

    public static final void d(double d10, double d11) {
        if (d11 <= d10) {
            throw new IllegalArgumentException(c(Double.valueOf(d10), Double.valueOf(d11)).toString());
        }
    }

    public static final void e(int i10, int i11) {
        if (i11 <= i10) {
            throw new IllegalArgumentException(c(Integer.valueOf(i10), Integer.valueOf(i11)).toString());
        }
    }

    public static final void f(long j10, long j11) {
        if (j11 <= j10) {
            throw new IllegalArgumentException(c(Long.valueOf(j10), Long.valueOf(j11)).toString());
        }
    }

    public static final int g(int i10) {
        return 31 - Integer.numberOfLeadingZeros(i10);
    }

    @InterfaceC14422l0(version = "1.3")
    public static final int h(@NotNull f fVar, @NotNull l range) {
        M.p(fVar, "<this>");
        M.p(range, "range");
        if (!range.isEmpty()) {
            return range.d() < Integer.MAX_VALUE ? fVar.n(range.c(), range.d() + 1) : range.c() > Integer.MIN_VALUE ? fVar.n(range.c() - 1, range.d()) + 1 : fVar.l();
        }
        throw new IllegalArgumentException("Cannot get random in empty range: " + ((Object) range));
    }

    @InterfaceC14422l0(version = "1.3")
    public static final long i(@NotNull f fVar, @NotNull o range) {
        M.p(fVar, "<this>");
        M.p(range, "range");
        if (!range.isEmpty()) {
            return range.d() < Long.MAX_VALUE ? fVar.q(range.c(), range.d() + 1) : range.c() > Long.MIN_VALUE ? fVar.q(range.c() - 1, range.d()) + 1 : fVar.o();
        }
        throw new IllegalArgumentException("Cannot get random in empty range: " + ((Object) range));
    }

    public static final int j(int i10, int i11) {
        return (i10 >>> (32 - i11)) & ((-i11) >> 31);
    }
}
