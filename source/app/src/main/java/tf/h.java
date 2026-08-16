package Tf;

import Vf.A;
import Vf.x;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import nf.B0;
import nf.F0;
import nf.InterfaceC14394D;
import nf.InterfaceC14422l0;
import nf.InterfaceC14443y;
import nf.y0;
import org.jetbrains.annotations.NotNull;

@t0({"SMAP\nURandom.kt\nKotlin\n*S Kotlin\n*F\n+ 1 URandom.kt\nkotlin/random/URandomKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,149:1\n1#2:150\n*E\n"})
public final class h {
    public static final void a(int i10, int i11) {
        if (Integer.compareUnsigned(i11, i10) <= 0) {
            throw new IllegalArgumentException(g.c(B0.e(i10), B0.e(i11)).toString());
        }
    }

    public static final void b(long j10, long j11) {
        if (Long.compareUnsigned(j11, j10) <= 0) {
            throw new IllegalArgumentException(g.c(F0.b(j10), F0.b(j11)).toString());
        }
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final byte[] c(@NotNull f fVar, int i10) {
        M.p(fVar, "<this>");
        return y0.k(fVar.d(i10));
    }

    @InterfaceC14443y
    @NotNull
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.3")
    public static final byte[] d(@NotNull f nextUBytes, @NotNull byte[] bArr) {
        M.p(nextUBytes, "$this$nextUBytes");
        M.p(bArr, "$v$c$kotlin-UByteArray$-array$0");
        nextUBytes.e(bArr);
        return bArr;
    }

    @InterfaceC14443y
    @NotNull
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.3")
    public static final byte[] e(@NotNull f nextUBytes, @NotNull byte[] bArr, int i10, int i11) {
        M.p(nextUBytes, "$this$nextUBytes");
        M.p(bArr, "$v$c$kotlin-UByteArray$-array$0");
        nextUBytes.f(bArr, i10, i11);
        return bArr;
    }

    public static byte[] f(f fVar, byte[] bArr, int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = y0.t(bArr);
        }
        return e(fVar, bArr, i10, i11);
    }

    @InterfaceC14422l0(version = "1.5")
    public static final int g(@NotNull f fVar) {
        M.p(fVar, "<this>");
        return B0.o(fVar.l());
    }

    @InterfaceC14422l0(version = "1.5")
    public static final int h(@NotNull f fVar, @NotNull x range) {
        M.p(fVar, "<this>");
        M.p(range, "range");
        if (!range.isEmpty()) {
            return Integer.compareUnsigned(range.d(), -1) < 0 ? i(fVar, range.c(), B0.o(range.d() + 1)) : Integer.compareUnsigned(range.c(), 0) > 0 ? B0.o(i(fVar, B0.o(range.c() - 1), range.d()) + 1) : g(fVar);
        }
        throw new IllegalArgumentException("Cannot get random in empty range: " + ((Object) range));
    }

    @InterfaceC14422l0(version = "1.5")
    public static final int i(@NotNull f nextUInt, int i10, int i11) {
        M.p(nextUInt, "$this$nextUInt");
        a(i10, i11);
        return B0.o(nextUInt.n(i10 ^ Integer.MIN_VALUE, i11 ^ Integer.MIN_VALUE) ^ Integer.MIN_VALUE);
    }

    @InterfaceC14422l0(version = "1.5")
    public static final int j(@NotNull f nextUInt, int i10) {
        M.p(nextUInt, "$this$nextUInt");
        return i(nextUInt, 0, i10);
    }

    @InterfaceC14422l0(version = "1.5")
    public static final long k(@NotNull f fVar) {
        M.p(fVar, "<this>");
        return F0.i(fVar.o());
    }

    @InterfaceC14422l0(version = "1.5")
    public static final long l(@NotNull f fVar, @NotNull A range) {
        M.p(fVar, "<this>");
        M.p(range, "range");
        if (range.isEmpty()) {
            throw new IllegalArgumentException("Cannot get random in empty range: " + ((Object) range));
        }
        if (Long.compareUnsigned(range.d(), -1L) < 0) {
            return n(fVar, range.c(), F0.i(range.d() + F0.i(1 & 4294967295L)));
        }
        if (Long.compareUnsigned(range.c(), 0L) <= 0) {
            return k(fVar);
        }
        long j10 = 1 & 4294967295L;
        return F0.i(n(fVar, F0.i(range.c() - F0.i(j10)), range.d()) + F0.i(j10));
    }

    @InterfaceC14422l0(version = "1.5")
    public static final long m(@NotNull f nextULong, long j10) {
        M.p(nextULong, "$this$nextULong");
        return n(nextULong, 0L, j10);
    }

    @InterfaceC14422l0(version = "1.5")
    public static final long n(@NotNull f nextULong, long j10, long j11) {
        M.p(nextULong, "$this$nextULong");
        b(j10, j11);
        return F0.i(nextULong.q(j10 ^ Long.MIN_VALUE, j11 ^ Long.MIN_VALUE) ^ Long.MIN_VALUE);
    }
}
