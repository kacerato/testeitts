package Vf;

import Vf.v;
import Vf.y;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.M;
import nf.B0;
import nf.F0;
import nf.InterfaceC14422l0;
import nf.L0;
import nf.x0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public class C {
    @InterfaceC14422l0(version = "1.7")
    public static final int A(@NotNull v vVar) {
        M.p(vVar, "<this>");
        if (!vVar.isEmpty()) {
            return vVar.c();
        }
        throw new NoSuchElementException("Progression " + ((Object) vVar) + " is empty.");
    }

    @InterfaceC14422l0(version = "1.7")
    public static final long B(@NotNull y yVar) {
        M.p(yVar, "<this>");
        if (!yVar.isEmpty()) {
            return yVar.c();
        }
        throw new NoSuchElementException("Progression " + ((Object) yVar) + " is empty.");
    }

    @InterfaceC14422l0(version = "1.7")
    @Nullable
    public static final B0 C(@NotNull v vVar) {
        M.p(vVar, "<this>");
        if (vVar.isEmpty()) {
            return null;
        }
        return B0.e(vVar.c());
    }

    @InterfaceC14422l0(version = "1.7")
    @Nullable
    public static final F0 D(@NotNull y yVar) {
        M.p(yVar, "<this>");
        if (yVar.isEmpty()) {
            return null;
        }
        return F0.b(yVar.c());
    }

    @InterfaceC14422l0(version = "1.7")
    public static final int E(@NotNull v vVar) {
        M.p(vVar, "<this>");
        if (!vVar.isEmpty()) {
            return vVar.d();
        }
        throw new NoSuchElementException("Progression " + ((Object) vVar) + " is empty.");
    }

    @InterfaceC14422l0(version = "1.7")
    public static final long F(@NotNull y yVar) {
        M.p(yVar, "<this>");
        if (!yVar.isEmpty()) {
            return yVar.d();
        }
        throw new NoSuchElementException("Progression " + ((Object) yVar) + " is empty.");
    }

    @InterfaceC14422l0(version = "1.7")
    @Nullable
    public static final B0 G(@NotNull v vVar) {
        M.p(vVar, "<this>");
        if (vVar.isEmpty()) {
            return null;
        }
        return B0.e(vVar.d());
    }

    @InterfaceC14422l0(version = "1.7")
    @Nullable
    public static final F0 H(@NotNull y yVar) {
        M.p(yVar, "<this>");
        if (yVar.isEmpty()) {
            return null;
        }
        return F0.b(yVar.d());
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final int I(x xVar) {
        M.p(xVar, "<this>");
        return J(xVar, Tf.f.f24956b);
    }

    @InterfaceC14422l0(version = "1.5")
    public static final int J(@NotNull x xVar, @NotNull Tf.f random) {
        M.p(xVar, "<this>");
        M.p(random, "random");
        try {
            return Tf.h.h(random, xVar);
        } catch (IllegalArgumentException e10) {
            throw new NoSuchElementException(e10.getMessage());
        }
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final long K(A a10) {
        M.p(a10, "<this>");
        return L(a10, Tf.f.f24956b);
    }

    @InterfaceC14422l0(version = "1.5")
    public static final long L(@NotNull A a10, @NotNull Tf.f random) {
        M.p(a10, "<this>");
        M.p(random, "random");
        try {
            return Tf.h.l(random, a10);
        } catch (IllegalArgumentException e10) {
            throw new NoSuchElementException(e10.getMessage());
        }
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final B0 M(x xVar) {
        M.p(xVar, "<this>");
        return N(xVar, Tf.f.f24956b);
    }

    @InterfaceC14422l0(version = "1.5")
    @Nullable
    public static final B0 N(@NotNull x xVar, @NotNull Tf.f random) {
        M.p(xVar, "<this>");
        M.p(random, "random");
        if (xVar.isEmpty()) {
            return null;
        }
        return B0.e(Tf.h.h(random, xVar));
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final F0 O(A a10) {
        M.p(a10, "<this>");
        return P(a10, Tf.f.f24956b);
    }

    @InterfaceC14422l0(version = "1.5")
    @Nullable
    public static final F0 P(@NotNull A a10, @NotNull Tf.f random) {
        M.p(a10, "<this>");
        M.p(random, "random");
        if (a10.isEmpty()) {
            return null;
        }
        return F0.b(Tf.h.l(random, a10));
    }

    @InterfaceC14422l0(version = "1.5")
    @NotNull
    public static final v Q(@NotNull v vVar) {
        M.p(vVar, "<this>");
        return v.f26910e.a(vVar.d(), vVar.c(), -vVar.g());
    }

    @InterfaceC14422l0(version = "1.5")
    @NotNull
    public static final y R(@NotNull y yVar) {
        M.p(yVar, "<this>");
        return y.f26920e.a(yVar.d(), yVar.c(), -yVar.g());
    }

    @InterfaceC14422l0(version = "1.5")
    @NotNull
    public static final v S(@NotNull v vVar, int i10) {
        M.p(vVar, "<this>");
        t.a(i10 > 0, Integer.valueOf(i10));
        v.a aVar = v.f26910e;
        int c10 = vVar.c();
        int d10 = vVar.d();
        if (vVar.g() <= 0) {
            i10 = -i10;
        }
        return aVar.a(c10, d10, i10);
    }

    @InterfaceC14422l0(version = "1.5")
    @NotNull
    public static final y T(@NotNull y yVar, long j10) {
        M.p(yVar, "<this>");
        t.a(j10 > 0, Long.valueOf(j10));
        y.a aVar = y.f26920e;
        long c10 = yVar.c();
        long d10 = yVar.d();
        if (yVar.g() <= 0) {
            j10 = -j10;
        }
        return aVar.a(c10, d10, j10);
    }

    @InterfaceC14422l0(version = "1.5")
    @NotNull
    public static final x U(short s10, short s11) {
        return M.t(s11 & 65535, 0) <= 0 ? x.f26918f.a() : new x(B0.o(s10 & 65535), B0.o(B0.o(r3) - 1), null);
    }

    @InterfaceC14422l0(version = "1.5")
    @NotNull
    public static x V(int i10, int i11) {
        return Integer.compareUnsigned(i11, 0) <= 0 ? x.f26918f.a() : new x(i10, B0.o(i11 - 1), null);
    }

    @InterfaceC14422l0(version = "1.5")
    @NotNull
    public static final x W(byte b10, byte b11) {
        return M.t(b11 & 255, 0) <= 0 ? x.f26918f.a() : new x(B0.o(b10 & 255), B0.o(B0.o(r3) - 1), null);
    }

    @InterfaceC14422l0(version = "1.5")
    @NotNull
    public static A X(long j10, long j11) {
        return Long.compareUnsigned(j11, 0L) <= 0 ? A.f26866f.a() : new A(j10, F0.i(j11 - F0.i(1 & 4294967295L)), null);
    }

    @InterfaceC14422l0(version = "1.5")
    public static final short a(short s10, short s11) {
        return M.t(s10 & 65535, 65535 & s11) < 0 ? s11 : s10;
    }

    @InterfaceC14422l0(version = "1.5")
    public static final int b(int i10, int i11) {
        return Integer.compareUnsigned(i10, i11) < 0 ? i11 : i10;
    }

    @InterfaceC14422l0(version = "1.5")
    public static final byte c(byte b10, byte b11) {
        return M.t(b10 & 255, b11 & 255) < 0 ? b11 : b10;
    }

    @InterfaceC14422l0(version = "1.5")
    public static final long d(long j10, long j11) {
        return Long.compareUnsigned(j10, j11) < 0 ? j11 : j10;
    }

    @InterfaceC14422l0(version = "1.5")
    public static final short e(short s10, short s11) {
        return M.t(s10 & 65535, 65535 & s11) > 0 ? s11 : s10;
    }

    @InterfaceC14422l0(version = "1.5")
    public static final int f(int i10, int i11) {
        return Integer.compareUnsigned(i10, i11) > 0 ? i11 : i10;
    }

    @InterfaceC14422l0(version = "1.5")
    public static final byte g(byte b10, byte b11) {
        return M.t(b10 & 255, b11 & 255) > 0 ? b11 : b10;
    }

    @InterfaceC14422l0(version = "1.5")
    public static final long h(long j10, long j11) {
        return Long.compareUnsigned(j10, j11) > 0 ? j11 : j10;
    }

    @InterfaceC14422l0(version = "1.5")
    public static final long i(long j10, @NotNull g<F0> range) {
        M.p(range, "range");
        if (range instanceof f) {
            return ((F0) u.O(F0.b(j10), (f) range)).l0();
        }
        if (!range.isEmpty()) {
            return Long.compareUnsigned(j10, range.getStart().l0()) < 0 ? range.getStart().l0() : Long.compareUnsigned(j10, range.getEndInclusive().l0()) > 0 ? range.getEndInclusive().l0() : j10;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: " + ((Object) range) + '.');
    }

    @InterfaceC14422l0(version = "1.5")
    public static final short j(short s10, short s11, short s12) {
        int i10 = s11 & 65535;
        int i11 = s12 & 65535;
        if (M.t(i10, i11) <= 0) {
            int i12 = 65535 & s10;
            return M.t(i12, i10) < 0 ? s11 : M.t(i12, i11) > 0 ? s12 : s10;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + ((Object) L0.e0(s12)) + " is less than minimum " + ((Object) L0.e0(s11)) + '.');
    }

    @InterfaceC14422l0(version = "1.5")
    public static final int k(int i10, int i11, int i12) {
        if (Integer.compareUnsigned(i11, i12) <= 0) {
            return Integer.compareUnsigned(i10, i11) < 0 ? i11 : Integer.compareUnsigned(i10, i12) > 0 ? i12 : i10;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + ((Object) B0.k0(i12)) + " is less than minimum " + ((Object) B0.k0(i11)) + '.');
    }

    @InterfaceC14422l0(version = "1.5")
    public static final byte l(byte b10, byte b11, byte b12) {
        int i10 = b11 & 255;
        int i11 = b12 & 255;
        if (M.t(i10, i11) <= 0) {
            int i12 = b10 & 255;
            return M.t(i12, i10) < 0 ? b11 : M.t(i12, i11) > 0 ? b12 : b10;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + ((Object) x0.e0(b12)) + " is less than minimum " + ((Object) x0.e0(b11)) + '.');
    }

    @InterfaceC14422l0(version = "1.5")
    public static final long m(long j10, long j11, long j12) {
        if (Long.compareUnsigned(j11, j12) <= 0) {
            return Long.compareUnsigned(j10, j11) < 0 ? j11 : Long.compareUnsigned(j10, j12) > 0 ? j12 : j10;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + ((Object) F0.g0(j12)) + " is less than minimum " + ((Object) F0.g0(j11)) + '.');
    }

    @InterfaceC14422l0(version = "1.5")
    public static final int n(int i10, @NotNull g<B0> range) {
        M.p(range, "range");
        if (range instanceof f) {
            return ((B0) u.O(B0.e(i10), (f) range)).q0();
        }
        if (!range.isEmpty()) {
            return Integer.compareUnsigned(i10, range.getStart().q0()) < 0 ? range.getStart().q0() : Integer.compareUnsigned(i10, range.getEndInclusive().q0()) > 0 ? range.getEndInclusive().q0() : i10;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: " + ((Object) range) + '.');
    }

    @InterfaceC14422l0(version = "1.5")
    public static final boolean o(@NotNull x contains, byte b10) {
        M.p(contains, "$this$contains");
        return contains.j(B0.o(b10 & 255));
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final boolean p(A contains, F0 f02) {
        M.p(contains, "$this$contains");
        return f02 != null && contains.i(f02.l0());
    }

    @InterfaceC14422l0(version = "1.5")
    public static final boolean q(@NotNull A contains, int i10) {
        M.p(contains, "$this$contains");
        return contains.i(F0.i(i10 & 4294967295L));
    }

    @InterfaceC14422l0(version = "1.5")
    public static final boolean r(@NotNull A contains, byte b10) {
        M.p(contains, "$this$contains");
        return contains.i(F0.i(b10 & 255));
    }

    @InterfaceC14422l0(version = "1.5")
    public static final boolean s(@NotNull x contains, short s10) {
        M.p(contains, "$this$contains");
        return contains.j(B0.o(s10 & 65535));
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final boolean t(x contains, B0 b02) {
        M.p(contains, "$this$contains");
        return b02 != null && contains.j(b02.q0());
    }

    @InterfaceC14422l0(version = "1.5")
    public static final boolean u(@NotNull x contains, long j10) {
        M.p(contains, "$this$contains");
        return F0.i(j10 >>> 32) == 0 && contains.j(B0.o((int) j10));
    }

    @InterfaceC14422l0(version = "1.5")
    public static final boolean v(@NotNull A contains, short s10) {
        M.p(contains, "$this$contains");
        return contains.i(F0.i(s10 & Sg.b.f23266s));
    }

    @InterfaceC14422l0(version = "1.5")
    @NotNull
    public static final v w(short s10, short s11) {
        return v.f26910e.a(B0.o(s10 & 65535), B0.o(s11 & 65535), -1);
    }

    @InterfaceC14422l0(version = "1.5")
    @NotNull
    public static final v x(int i10, int i11) {
        return v.f26910e.a(i10, i11, -1);
    }

    @InterfaceC14422l0(version = "1.5")
    @NotNull
    public static final v y(byte b10, byte b11) {
        return v.f26910e.a(B0.o(b10 & 255), B0.o(b11 & 255), -1);
    }

    @InterfaceC14422l0(version = "1.5")
    @NotNull
    public static final y z(long j10, long j11) {
        return y.f26920e.a(j10, j11, -1L);
    }
}
