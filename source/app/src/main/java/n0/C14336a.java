package n0;

import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class C14336a {

    public boolean f97571a;

    public boolean f97572b;

    public class C1877a {

        public static final int[] f97573a;

        static {
            int[] iArr = new int[H.values().length];
            try {
                iArr[H.f97568X.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[H.f97564R.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[H.f97565S.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[H.f97569Y.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[H.f97561G.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[H.f97566T.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            f97573a = iArr;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public C14336a() {
        this(r2, r2, 3, null);
        boolean z10 = false;
    }

    public static C14336a d(C14336a c14336a, boolean z10, boolean z11, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = c14336a.f97571a;
        }
        if ((i10 & 2) != 0) {
            z11 = c14336a.f97572b;
        }
        return c14336a.c(z10, z11);
    }

    public final void A(@NotNull C14336a value) {
        M.p(value, "value");
        C(value.o());
        E(value.q());
    }

    public final void B(boolean z10) {
        E(z10);
    }

    public final void C(boolean z10) {
        this.f97571a = z10;
    }

    public final void D(@NotNull C14336a value) {
        M.p(value, "value");
        C(value.o());
        E(value.q());
    }

    public final void E(boolean z10) {
        this.f97572b = z10;
    }

    public final boolean a() {
        return this.f97571a;
    }

    public final boolean b() {
        return this.f97572b;
    }

    @NotNull
    public final C14336a c(boolean z10, boolean z11) {
        return new C14336a(z10, z11);
    }

    @NotNull
    public final C14336a e(int i10, int i11) {
        return new C14336a(g(i10), g(i11));
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C14336a)) {
            return false;
        }
        C14336a c14336a = (C14336a) obj;
        return this.f97571a == c14336a.f97571a && this.f97572b == c14336a.f97572b;
    }

    @NotNull
    public final C14336a f(@NotNull H index1, @NotNull H index2) {
        M.p(index1, "index1");
        M.p(index2, "index2");
        return new C14336a(h(index1), h(index2));
    }

    public final boolean g(int i10) {
        if (i10 == 0) {
            return this.f97571a;
        }
        if (i10 == 1) {
            return this.f97572b;
        }
        throw new IllegalArgumentException("index must be in 0..1");
    }

    public final boolean h(@NotNull H index) {
        M.p(index, "index");
        switch (C1877a.f97573a[index.ordinal()]) {
            case 1:
            case 2:
            case 3:
                return this.f97571a;
            case 4:
            case 5:
            case 6:
                return this.f97572b;
            default:
                throw new IllegalArgumentException("index must be X, Y, R, G, S or T");
        }
    }

    public int hashCode() {
        return (Boolean.hashCode(this.f97571a) * 31) + Boolean.hashCode(this.f97572b);
    }

    public final boolean i() {
        return q();
    }

    public final boolean j() {
        return o();
    }

    @NotNull
    public final C14336a k() {
        return new C14336a(o(), q());
    }

    public final boolean l() {
        return o();
    }

    @NotNull
    public final C14336a m() {
        return new C14336a(o(), q());
    }

    public final boolean n() {
        return q();
    }

    public final boolean o() {
        return this.f97571a;
    }

    @NotNull
    public final C14336a p() {
        return new C14336a(o(), q());
    }

    public final boolean q() {
        return this.f97572b;
    }

    public final boolean r(int i10) {
        return g(i10 - 1);
    }

    public final void s(int i10, int i11, boolean z10) {
        t(i10, z10);
        t(i11, z10);
    }

    public final void t(int i10, boolean z10) {
        if (i10 == 0) {
            this.f97571a = z10;
        } else {
            if (i10 != 1) {
                throw new IllegalArgumentException("index must be in 0..1");
            }
            this.f97572b = z10;
        }
    }

    @NotNull
    public String toString() {
        return "Bool2(x=" + this.f97571a + ", y=" + this.f97572b + ")";
    }

    public final void u(@NotNull H index1, @NotNull H index2, boolean z10) {
        M.p(index1, "index1");
        M.p(index2, "index2");
        v(index1, z10);
        v(index2, z10);
    }

    public final void v(@NotNull H index, boolean z10) {
        M.p(index, "index");
        switch (C1877a.f97573a[index.ordinal()]) {
            case 1:
            case 2:
            case 3:
                this.f97571a = z10;
                return;
            case 4:
            case 5:
            case 6:
                this.f97572b = z10;
                return;
            default:
                throw new IllegalArgumentException("index must be X, Y, R, G, S or T");
        }
    }

    public final void w(boolean z10) {
        E(z10);
    }

    public final void x(boolean z10) {
        C(z10);
    }

    public final void y(@NotNull C14336a value) {
        M.p(value, "value");
        C(value.o());
        E(value.q());
    }

    public final void z(boolean z10) {
        C(z10);
    }

    public C14336a(boolean z10, boolean z11) {
        this.f97571a = z10;
        this.f97572b = z11;
    }

    public C14336a(boolean z10, boolean z11, int i10, C14026x c14026x) {
        this((i10 & 1) != 0 ? false : z10, (i10 & 2) != 0 ? false : z11);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C14336a(@NotNull C14336a v10) {
        this(v10.f97571a, v10.f97572b);
        M.p(v10, "v");
    }
}
