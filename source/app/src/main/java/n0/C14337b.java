package n0;

import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class C14337b {

    public boolean f97574a;

    public boolean f97575b;

    public boolean f97576c;

    public class a {

        public static final int[] f97577a;

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
            f97577a = iArr;
        }
    }

    public C14337b() {
        this(false, false, false, 7, null);
    }

    public static C14337b e(C14337b c14337b, boolean z10, boolean z11, boolean z12, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = c14337b.f97574a;
        }
        if ((i10 & 2) != 0) {
            z11 = c14337b.f97575b;
        }
        if ((i10 & 4) != 0) {
            z12 = c14337b.f97576c;
        }
        return c14337b.d(z10, z11, z12);
    }

    public final boolean A(int i10) {
        return j(i10 - 1);
    }

    public final void B(int i10, int i11, int i12, boolean z10) {
        D(i10, z10);
        D(i11, z10);
        D(i12, z10);
    }

    public final void C(int i10, int i11, boolean z10) {
        D(i10, z10);
        D(i11, z10);
    }

    public final void D(int i10, boolean z10) {
        if (i10 == 0) {
            this.f97574a = z10;
        } else if (i10 == 1) {
            this.f97575b = z10;
        } else {
            if (i10 != 2) {
                throw new IllegalArgumentException("index must be in 0..2");
            }
            this.f97576c = z10;
        }
    }

    public final void E(@NotNull H index1, @NotNull H index2, @NotNull H index3, boolean z10) {
        M.p(index1, "index1");
        M.p(index2, "index2");
        M.p(index3, "index3");
        G(index1, z10);
        G(index2, z10);
        G(index3, z10);
    }

    public final void F(@NotNull H index1, @NotNull H index2, boolean z10) {
        M.p(index1, "index1");
        M.p(index2, "index2");
        G(index1, z10);
        G(index2, z10);
    }

    public final void G(@NotNull H index, boolean z10) {
        M.p(index, "index");
        switch (a.f97577a[index.ordinal()]) {
            case 1:
            case 2:
            case 3:
                this.f97574a = z10;
                return;
            case 4:
            case 5:
            case 6:
                this.f97575b = z10;
                return;
            case 7:
            case 8:
            case 9:
                this.f97576c = z10;
                return;
            default:
                throw new IllegalArgumentException("index must be X, Y, Z, R, G, B, S, T or P");
        }
    }

    public final void H(boolean z10) {
        V(z10);
    }

    public final void I(boolean z10) {
        U(z10);
    }

    public final void J(boolean z10) {
        V(z10);
    }

    public final void K(boolean z10) {
        R(z10);
    }

    public final void L(@NotNull C14336a value) {
        M.p(value, "value");
        R(value.o());
        U(value.q());
    }

    public final void M(@NotNull C14337b value) {
        M.p(value, "value");
        R(value.v());
        U(value.y());
        V(value.z());
    }

    public final void N(boolean z10) {
        R(z10);
    }

    public final void O(@NotNull C14336a value) {
        M.p(value, "value");
        R(value.o());
        U(value.q());
    }

    public final void P(@NotNull C14337b value) {
        M.p(value, "value");
        R(value.v());
        U(value.y());
        V(value.z());
    }

    public final void Q(boolean z10) {
        U(z10);
    }

    public final void R(boolean z10) {
        this.f97574a = z10;
    }

    public final void S(@NotNull C14336a value) {
        M.p(value, "value");
        R(value.o());
        U(value.q());
    }

    public final void T(@NotNull C14337b value) {
        M.p(value, "value");
        R(value.v());
        U(value.y());
        V(value.z());
    }

    public final void U(boolean z10) {
        this.f97575b = z10;
    }

    public final void V(boolean z10) {
        this.f97576c = z10;
    }

    public final boolean a() {
        return this.f97574a;
    }

    public final boolean b() {
        return this.f97575b;
    }

    public final boolean c() {
        return this.f97576c;
    }

    @NotNull
    public final C14337b d(boolean z10, boolean z11, boolean z12) {
        return new C14337b(z10, z11, z12);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C14337b)) {
            return false;
        }
        C14337b c14337b = (C14337b) obj;
        return this.f97574a == c14337b.f97574a && this.f97575b == c14337b.f97575b && this.f97576c == c14337b.f97576c;
    }

    @NotNull
    public final C14336a f(int i10, int i11) {
        return new C14336a(j(i10), j(i11));
    }

    @NotNull
    public final C14336a g(@NotNull H index1, @NotNull H index2) {
        M.p(index1, "index1");
        M.p(index2, "index2");
        return new C14336a(k(index1), k(index2));
    }

    @NotNull
    public final C14337b h(int i10, int i11, int i12) {
        return new C14337b(j(i10), j(i11), j(i12));
    }

    public int hashCode() {
        return (((Boolean.hashCode(this.f97574a) * 31) + Boolean.hashCode(this.f97575b)) * 31) + Boolean.hashCode(this.f97576c);
    }

    @NotNull
    public final C14337b i(@NotNull H index1, @NotNull H index2, @NotNull H index3) {
        M.p(index1, "index1");
        M.p(index2, "index2");
        M.p(index3, "index3");
        return new C14337b(k(index1), k(index2), k(index3));
    }

    public final boolean j(int i10) {
        if (i10 == 0) {
            return this.f97574a;
        }
        if (i10 == 1) {
            return this.f97575b;
        }
        if (i10 == 2) {
            return this.f97576c;
        }
        throw new IllegalArgumentException("index must be in 0..2");
    }

    public final boolean k(@NotNull H index) {
        M.p(index, "index");
        switch (a.f97577a[index.ordinal()]) {
            case 1:
            case 2:
            case 3:
                return this.f97574a;
            case 4:
            case 5:
            case 6:
                return this.f97575b;
            case 7:
            case 8:
            case 9:
                return this.f97576c;
            default:
                throw new IllegalArgumentException("index must be X, Y, Z, R, G, B, S, T or P");
        }
    }

    public final boolean l() {
        return z();
    }

    public final boolean m() {
        return y();
    }

    public final boolean n() {
        return z();
    }

    public final boolean o() {
        return v();
    }

    @NotNull
    public final C14336a p() {
        return new C14336a(v(), y());
    }

    @NotNull
    public final C14337b q() {
        return new C14337b(v(), y(), z());
    }

    public final boolean r() {
        return v();
    }

    @NotNull
    public final C14336a s() {
        return new C14336a(v(), y());
    }

    @NotNull
    public final C14337b t() {
        return new C14337b(v(), y(), z());
    }

    @NotNull
    public String toString() {
        return "Bool3(x=" + this.f97574a + ", y=" + this.f97575b + ", z=" + this.f97576c + ")";
    }

    public final boolean u() {
        return y();
    }

    public final boolean v() {
        return this.f97574a;
    }

    @NotNull
    public final C14336a w() {
        return new C14336a(v(), y());
    }

    @NotNull
    public final C14337b x() {
        return new C14337b(v(), y(), z());
    }

    public final boolean y() {
        return this.f97575b;
    }

    public final boolean z() {
        return this.f97576c;
    }

    public C14337b(boolean z10, boolean z11, boolean z12) {
        this.f97574a = z10;
        this.f97575b = z11;
        this.f97576c = z12;
    }

    public C14337b(boolean z10, boolean z11, boolean z12, int i10, C14026x c14026x) {
        this((i10 & 1) != 0 ? false : z10, (i10 & 2) != 0 ? false : z11, (i10 & 4) != 0 ? false : z12);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C14337b(@NotNull C14336a v10, boolean z10) {
        this(v10.o(), v10.q(), z10);
        M.p(v10, "v");
    }

    public C14337b(C14336a c14336a, boolean z10, int i10, C14026x c14026x) {
        this(c14336a, (i10 & 2) != 0 ? false : z10);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C14337b(@NotNull C14337b v10) {
        this(v10.f97574a, v10.f97575b, v10.f97576c);
        M.p(v10, "v");
    }
}
