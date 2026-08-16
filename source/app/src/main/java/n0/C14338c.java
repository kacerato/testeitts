package n0;

import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class C14338c {

    public boolean f97578a;

    public boolean f97579b;

    public boolean f97580c;

    public boolean f97581d;

    public class a {

        public static final int[] f97582a;

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
            try {
                iArr[H.f97570Z.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[H.f97560B.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[H.f97562P.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[H.f97567W.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[H.f97559A.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[H.f97563Q.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            f97582a = iArr;
        }
    }

    public C14338c() {
        this(false, false, false, false, 15, null);
    }

    public static C14338c f(C14338c c14338c, boolean z10, boolean z11, boolean z12, boolean z13, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = c14338c.f97578a;
        }
        if ((i10 & 2) != 0) {
            z11 = c14338c.f97579b;
        }
        if ((i10 & 4) != 0) {
            z12 = c14338c.f97580c;
        }
        if ((i10 & 8) != 0) {
            z13 = c14338c.f97581d;
        }
        return c14338c.e(z10, z11, z12, z13);
    }

    @NotNull
    public final C14338c A() {
        return new C14338c(D(), H(), I(), C());
    }

    public final boolean B() {
        return H();
    }

    public final boolean C() {
        return this.f97581d;
    }

    public final boolean D() {
        return this.f97578a;
    }

    @NotNull
    public final C14336a E() {
        return new C14336a(D(), H());
    }

    @NotNull
    public final C14337b F() {
        return new C14337b(D(), H(), I());
    }

    @NotNull
    public final C14338c G() {
        return new C14338c(D(), H(), I(), C());
    }

    public final boolean H() {
        return this.f97579b;
    }

    public final boolean I() {
        return this.f97580c;
    }

    public final boolean J(int i10) {
        return m(i10 - 1);
    }

    public final void K(int i10, int i11, int i12, int i13, boolean z10) {
        N(i10, z10);
        N(i11, z10);
        N(i12, z10);
        N(i13, z10);
    }

    public final void L(int i10, int i11, int i12, boolean z10) {
        N(i10, z10);
        N(i11, z10);
        N(i12, z10);
    }

    public final void M(int i10, int i11, boolean z10) {
        N(i10, z10);
        N(i11, z10);
    }

    public final void N(int i10, boolean z10) {
        if (i10 == 0) {
            this.f97578a = z10;
            return;
        }
        if (i10 == 1) {
            this.f97579b = z10;
        } else if (i10 == 2) {
            this.f97580c = z10;
        } else {
            if (i10 != 3) {
                throw new IllegalArgumentException("index must be in 0..3");
            }
            this.f97581d = z10;
        }
    }

    public final void O(@NotNull H index1, @NotNull H index2, @NotNull H index3, @NotNull H index4, boolean z10) {
        M.p(index1, "index1");
        M.p(index2, "index2");
        M.p(index3, "index3");
        M.p(index4, "index4");
        R(index1, z10);
        R(index2, z10);
        R(index3, z10);
        R(index4, z10);
    }

    public final void P(@NotNull H index1, @NotNull H index2, @NotNull H index3, boolean z10) {
        M.p(index1, "index1");
        M.p(index2, "index2");
        M.p(index3, "index3");
        R(index1, z10);
        R(index2, z10);
        R(index3, z10);
    }

    public final void Q(@NotNull H index1, @NotNull H index2, boolean z10) {
        M.p(index1, "index1");
        M.p(index2, "index2");
        R(index1, z10);
        R(index2, z10);
    }

    public final void R(@NotNull H index, boolean z10) {
        M.p(index, "index");
        switch (a.f97582a[index.ordinal()]) {
            case 1:
            case 2:
            case 3:
                this.f97578a = z10;
                return;
            case 4:
            case 5:
            case 6:
                this.f97579b = z10;
                return;
            case 7:
            case 8:
            case 9:
                this.f97580c = z10;
                return;
            case 10:
            case 11:
            case 12:
                this.f97581d = z10;
                return;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    public final void S(boolean z10) {
        g0(z10);
    }

    public final void T(boolean z10) {
        m0(z10);
    }

    public final void U(boolean z10) {
        l0(z10);
    }

    public final void V(boolean z10) {
        m0(z10);
    }

    public final void W(boolean z10) {
        g0(z10);
    }

    public final void X(boolean z10) {
        h0(z10);
    }

    public final void Y(@NotNull C14336a value) {
        M.p(value, "value");
        h0(value.o());
        l0(value.q());
    }

    public final void Z(@NotNull C14337b value) {
        M.p(value, "value");
        h0(value.v());
        l0(value.y());
        m0(value.z());
    }

    public final boolean a() {
        return this.f97578a;
    }

    public final void a0(@NotNull C14338c value) {
        M.p(value, "value");
        h0(value.D());
        l0(value.H());
        m0(value.I());
        g0(value.C());
    }

    public final boolean b() {
        return this.f97579b;
    }

    public final void b0(boolean z10) {
        h0(z10);
    }

    public final boolean c() {
        return this.f97580c;
    }

    public final void c0(@NotNull C14336a value) {
        M.p(value, "value");
        h0(value.o());
        l0(value.q());
    }

    public final boolean d() {
        return this.f97581d;
    }

    public final void d0(@NotNull C14337b value) {
        M.p(value, "value");
        h0(value.v());
        l0(value.y());
        m0(value.z());
    }

    @NotNull
    public final C14338c e(boolean z10, boolean z11, boolean z12, boolean z13) {
        return new C14338c(z10, z11, z12, z13);
    }

    public final void e0(@NotNull C14338c value) {
        M.p(value, "value");
        h0(value.D());
        l0(value.H());
        m0(value.I());
        g0(value.C());
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C14338c)) {
            return false;
        }
        C14338c c14338c = (C14338c) obj;
        return this.f97578a == c14338c.f97578a && this.f97579b == c14338c.f97579b && this.f97580c == c14338c.f97580c && this.f97581d == c14338c.f97581d;
    }

    public final void f0(boolean z10) {
        l0(z10);
    }

    @NotNull
    public final C14336a g(int i10, int i11) {
        return new C14336a(m(i10), m(i11));
    }

    public final void g0(boolean z10) {
        this.f97581d = z10;
    }

    @NotNull
    public final C14336a h(@NotNull H index1, @NotNull H index2) {
        M.p(index1, "index1");
        M.p(index2, "index2");
        return new C14336a(n(index1), n(index2));
    }

    public final void h0(boolean z10) {
        this.f97578a = z10;
    }

    public int hashCode() {
        return (((((Boolean.hashCode(this.f97578a) * 31) + Boolean.hashCode(this.f97579b)) * 31) + Boolean.hashCode(this.f97580c)) * 31) + Boolean.hashCode(this.f97581d);
    }

    @NotNull
    public final C14337b i(int i10, int i11, int i12) {
        return new C14337b(m(i10), m(i11), m(i12));
    }

    public final void i0(@NotNull C14336a value) {
        M.p(value, "value");
        h0(value.o());
        l0(value.q());
    }

    @NotNull
    public final C14337b j(@NotNull H index1, @NotNull H index2, @NotNull H index3) {
        M.p(index1, "index1");
        M.p(index2, "index2");
        M.p(index3, "index3");
        return new C14337b(n(index1), n(index2), n(index3));
    }

    public final void j0(@NotNull C14337b value) {
        M.p(value, "value");
        h0(value.v());
        l0(value.y());
        m0(value.z());
    }

    @NotNull
    public final C14338c k(int i10, int i11, int i12, int i13) {
        return new C14338c(m(i10), m(i11), m(i12), m(i13));
    }

    public final void k0(@NotNull C14338c value) {
        M.p(value, "value");
        h0(value.D());
        l0(value.H());
        m0(value.I());
        g0(value.C());
    }

    @NotNull
    public final C14338c l(@NotNull H index1, @NotNull H index2, @NotNull H index3, @NotNull H index4) {
        M.p(index1, "index1");
        M.p(index2, "index2");
        M.p(index3, "index3");
        M.p(index4, "index4");
        return new C14338c(n(index1), n(index2), n(index3), n(index4));
    }

    public final void l0(boolean z10) {
        this.f97579b = z10;
    }

    public final boolean m(int i10) {
        if (i10 == 0) {
            return this.f97578a;
        }
        if (i10 == 1) {
            return this.f97579b;
        }
        if (i10 == 2) {
            return this.f97580c;
        }
        if (i10 == 3) {
            return this.f97581d;
        }
        throw new IllegalArgumentException("index must be in 0..3");
    }

    public final void m0(boolean z10) {
        this.f97580c = z10;
    }

    public final boolean n(@NotNull H index) {
        M.p(index, "index");
        switch (a.f97582a[index.ordinal()]) {
            case 1:
            case 2:
            case 3:
                return this.f97578a;
            case 4:
            case 5:
            case 6:
                return this.f97579b;
            case 7:
            case 8:
            case 9:
                return this.f97580c;
            case 10:
            case 11:
            case 12:
                return this.f97581d;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    public final boolean o() {
        return C();
    }

    public final boolean p() {
        return I();
    }

    public final boolean q() {
        return H();
    }

    public final boolean r() {
        return I();
    }

    public final boolean s() {
        return C();
    }

    public final boolean t() {
        return D();
    }

    @NotNull
    public String toString() {
        return "Bool4(x=" + this.f97578a + ", y=" + this.f97579b + ", z=" + this.f97580c + ", w=" + this.f97581d + ")";
    }

    @NotNull
    public final C14336a u() {
        return new C14336a(D(), H());
    }

    @NotNull
    public final C14337b v() {
        return new C14337b(D(), H(), I());
    }

    @NotNull
    public final C14338c w() {
        return new C14338c(D(), H(), I(), C());
    }

    public final boolean x() {
        return D();
    }

    @NotNull
    public final C14336a y() {
        return new C14336a(D(), H());
    }

    @NotNull
    public final C14337b z() {
        return new C14337b(D(), H(), I());
    }

    public C14338c(boolean z10, boolean z11, boolean z12, boolean z13) {
        this.f97578a = z10;
        this.f97579b = z11;
        this.f97580c = z12;
        this.f97581d = z13;
    }

    public C14338c(boolean z10, boolean z11, boolean z12, boolean z13, int i10, C14026x c14026x) {
        this((i10 & 1) != 0 ? false : z10, (i10 & 2) != 0 ? false : z11, (i10 & 4) != 0 ? false : z12, (i10 & 8) != 0 ? false : z13);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C14338c(@NotNull C14336a v10, boolean z10, boolean z11) {
        this(v10.o(), v10.q(), z10, z11);
        M.p(v10, "v");
    }

    public C14338c(C14336a c14336a, boolean z10, boolean z11, int i10, C14026x c14026x) {
        this(c14336a, (i10 & 2) != 0 ? false : z10, (i10 & 4) != 0 ? false : z11);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C14338c(@NotNull C14337b v10, boolean z10) {
        this(v10.v(), v10.y(), v10.z(), z10);
        M.p(v10, "v");
    }

    public C14338c(C14337b c14337b, boolean z10, int i10, C14026x c14026x) {
        this(c14337b, (i10 & 2) != 0 ? false : z10);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C14338c(@NotNull C14338c v10) {
        this(v10.f97578a, v10.f97579b, v10.f97580c, v10.f97581d);
        M.p(v10, "v");
    }
}
