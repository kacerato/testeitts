package n0;

import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nVector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Vector.kt\ncom/google/android/filament/utils/Float4\n+ 2 Vector.kt\ncom/google/android/filament/utils/VectorKt\n*L\n1#1,2155:1\n617#2,6:2156\n617#2,6:2162\n617#2,6:2168\n617#2,6:2174\n617#2,6:2180\n617#2,6:2186\n617#2,6:2192\n622#2:2198\n617#2,6:2199\n617#2,6:2205\n617#2,6:2211\n617#2,6:2217\n617#2,6:2223\n617#2,6:2229\n617#2,6:2235\n617#2,6:2241\n622#2:2247\n*S KotlinDebug\n*F\n+ 1 Vector.kt\ncom/google/android/filament/utils/Float4\n*L\n568#1:2156,6\n569#1:2162,6\n570#1:2168,6\n571#1:2174,6\n569#1:2180,6\n570#1:2186,6\n571#1:2192,6\n575#1:2198\n592#1:2199,6\n593#1:2205,6\n594#1:2211,6\n595#1:2217,6\n592#1:2223,6\n593#1:2229,6\n594#1:2235,6\n595#1:2241,6\n599#1:2247\n*E\n"})
public final class C14342g {

    public float f97593a;

    public float f97594b;

    public float f97595c;

    public float f97596d;

    public class a {

        public static final int[] f97597a;

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
            f97597a = iArr;
        }
    }

    public C14342g() {
        this(0.0f, 0.0f, 0.0f, 0.0f, 15, null);
    }

    public static C14342g c(C14342g c14342g, float f10, float f11, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            f11 = 0.0f;
        }
        return new C14342g(Math.abs(c14342g.Q() - f10) < f11 ? 0.0f : Float.compare(r0, f10), Math.abs(c14342g.U() - f10) < f11 ? 0.0f : Float.compare(r1, f10), Math.abs(c14342g.V() - f10) < f11 ? 0.0f : Float.compare(r2, f10), Math.abs(c14342g.P() - f10) >= f11 ? Float.compare(r4, f10) : 0.0f);
    }

    public static C14342g d(C14342g c14342g, C14342g v10, float f10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            f10 = 0.0f;
        }
        M.p(v10, "v");
        return new C14342g(Math.abs(c14342g.Q() - v10.Q()) < f10 ? 0.0f : Float.compare(r0, r1), Math.abs(c14342g.U() - v10.U()) < f10 ? 0.0f : Float.compare(r1, r2), Math.abs(c14342g.V() - v10.V()) < f10 ? 0.0f : Float.compare(r2, r3), Math.abs(c14342g.P() - v10.P()) >= f10 ? Float.compare(r5, r6) : 0.0f);
    }

    public static C14342g j(C14342g c14342g, float f10, float f11, float f12, float f13, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = c14342g.f97593a;
        }
        if ((i10 & 2) != 0) {
            f11 = c14342g.f97594b;
        }
        if ((i10 & 4) != 0) {
            f12 = c14342g.f97595c;
        }
        if ((i10 & 8) != 0) {
            f13 = c14342g.f97596d;
        }
        return c14342g.i(f10, f11, f12, f13);
    }

    public static boolean r(C14342g c14342g, float f10, float f11, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            f11 = 0.0f;
        }
        return Math.abs(c14342g.Q() - f10) < f11 && Math.abs(c14342g.U() - f10) < f11 && Math.abs(c14342g.V() - f10) < f11 && Math.abs(c14342g.P() - f10) < f11;
    }

    public static boolean s(C14342g c14342g, C14342g v10, float f10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            f10 = 0.0f;
        }
        M.p(v10, "v");
        return Math.abs(c14342g.Q() - v10.Q()) < f10 && Math.abs(c14342g.U() - v10.U()) < f10 && Math.abs(c14342g.V() - v10.V()) < f10 && Math.abs(c14342g.P() - v10.P()) < f10;
    }

    @NotNull
    public final C14342g A(@NotNull H index1, @NotNull H index2, @NotNull H index3, @NotNull H index4) {
        M.p(index1, "index1");
        M.p(index2, "index2");
        M.p(index3, "index3");
        M.p(index4, "index4");
        return new C14342g(u(index1), u(index2), u(index3), u(index4));
    }

    public final void A0(@NotNull C14342g value) {
        M.p(value, "value");
        D0(value.Q());
        H0(value.U());
        I0(value.V());
        C0(value.P());
    }

    public final float B() {
        return P();
    }

    public final void B0(float f10) {
        H0(f10);
    }

    public final float C() {
        return V();
    }

    public final void C0(float f10) {
        this.f97596d = f10;
    }

    public final float D() {
        return U();
    }

    public final void D0(float f10) {
        this.f97593a = f10;
    }

    public final float E() {
        return V();
    }

    public final void E0(@NotNull C14340e value) {
        M.p(value, "value");
        D0(value.z());
        H0(value.B());
    }

    public final float F() {
        return P();
    }

    public final void F0(@NotNull C14341f value) {
        M.p(value, "value");
        D0(value.H());
        H0(value.K());
        I0(value.L());
    }

    public final float G() {
        return Q();
    }

    public final void G0(@NotNull C14342g value) {
        M.p(value, "value");
        D0(value.Q());
        H0(value.U());
        I0(value.V());
        C0(value.P());
    }

    @NotNull
    public final C14340e H() {
        return new C14340e(Q(), U());
    }

    public final void H0(float f10) {
        this.f97594b = f10;
    }

    @NotNull
    public final C14341f I() {
        return new C14341f(Q(), U(), V());
    }

    public final void I0(float f10) {
        this.f97595c = f10;
    }

    @NotNull
    public final C14342g J() {
        return new C14342g(Q(), U(), V(), P());
    }

    @NotNull
    public final C14342g J0(float f10) {
        return new C14342g(Q() * f10, U() * f10, V() * f10, P() * f10);
    }

    public final float K() {
        return Q();
    }

    @NotNull
    public final C14342g K0(@NotNull C14340e v10) {
        M.p(v10, "v");
        return new C14342g(Q() * v10.z(), U() * v10.B(), V(), P());
    }

    @NotNull
    public final C14340e L() {
        return new C14340e(Q(), U());
    }

    @NotNull
    public final C14342g L0(@NotNull C14341f v10) {
        M.p(v10, "v");
        return new C14342g(Q() * v10.H(), U() * v10.K(), V() * v10.L(), P());
    }

    @NotNull
    public final C14341f M() {
        return new C14341f(Q(), U(), V());
    }

    @NotNull
    public final C14342g M0(@NotNull C14342g v10) {
        M.p(v10, "v");
        return new C14342g(Q() * v10.Q(), U() * v10.U(), V() * v10.V(), P() * v10.P());
    }

    @NotNull
    public final C14342g N() {
        return new C14342g(Q(), U(), V(), P());
    }

    @NotNull
    public final float[] N0() {
        return new float[]{this.f97593a, this.f97594b, this.f97595c, this.f97596d};
    }

    public final float O() {
        return U();
    }

    @NotNull
    public final C14342g O0(@NotNull Mf.l<? super Float, Float> block) {
        M.p(block, "block");
        D0(block.invoke(Float.valueOf(Q())).floatValue());
        H0(block.invoke(Float.valueOf(U())).floatValue());
        I0(block.invoke(Float.valueOf(V())).floatValue());
        C0(block.invoke(Float.valueOf(P())).floatValue());
        return this;
    }

    public final float P() {
        return this.f97596d;
    }

    @NotNull
    public final C14342g P0() {
        return new C14342g(-this.f97593a, -this.f97594b, -this.f97595c, -this.f97596d);
    }

    public final float Q() {
        return this.f97593a;
    }

    @NotNull
    public final C14340e R() {
        return new C14340e(Q(), U());
    }

    @NotNull
    public final C14341f S() {
        return new C14341f(Q(), U(), V());
    }

    @NotNull
    public final C14342g T() {
        return new C14342g(Q(), U(), V(), P());
    }

    public final float U() {
        return this.f97594b;
    }

    public final float V() {
        return this.f97595c;
    }

    @NotNull
    public final C14342g W() {
        float f10 = this.f97593a;
        this.f97593a = f10 + 1.0f;
        float f11 = this.f97594b;
        this.f97594b = f11 + 1.0f;
        float f12 = this.f97595c;
        this.f97595c = f12 + 1.0f;
        float f13 = this.f97596d;
        this.f97596d = 1.0f + f13;
        return new C14342g(f10, f11, f12, f13);
    }

    public final float X(int i10) {
        return t(i10 - 1);
    }

    @NotNull
    public final C14342g Y(float f10) {
        return new C14342g(Q() - f10, U() - f10, V() - f10, P() - f10);
    }

    @NotNull
    public final C14342g Z(@NotNull C14340e v10) {
        M.p(v10, "v");
        return new C14342g(Q() - v10.z(), U() - v10.B(), V(), P());
    }

    @NotNull
    public final C14342g a(float f10, float f11) {
        return new C14342g(Math.abs(Q() - f10) < f11 ? 0.0f : Float.compare(r1, f10), Math.abs(U() - f10) < f11 ? 0.0f : Float.compare(r2, f10), Math.abs(V() - f10) < f11 ? 0.0f : Float.compare(r4, f10), Math.abs(P() - f10) >= f11 ? Float.compare(r5, f10) : 0.0f);
    }

    @NotNull
    public final C14342g a0(@NotNull C14341f v10) {
        M.p(v10, "v");
        return new C14342g(Q() - v10.H(), U() - v10.K(), V() - v10.L(), P());
    }

    @NotNull
    public final C14342g b(@NotNull C14342g v10, float f10) {
        M.p(v10, "v");
        return new C14342g(Math.abs(Q() - v10.Q()) < f10 ? 0.0f : Float.compare(r1, r2), Math.abs(U() - v10.U()) < f10 ? 0.0f : Float.compare(r2, r3), Math.abs(V() - v10.V()) < f10 ? 0.0f : Float.compare(r3, r5), Math.abs(P() - v10.P()) >= f10 ? Float.compare(r5, r8) : 0.0f);
    }

    @NotNull
    public final C14342g b0(@NotNull C14342g v10) {
        M.p(v10, "v");
        return new C14342g(Q() - v10.Q(), U() - v10.U(), V() - v10.V(), P() - v10.P());
    }

    @NotNull
    public final C14342g c0(float f10) {
        return new C14342g(Q() + f10, U() + f10, V() + f10, P() + f10);
    }

    @NotNull
    public final C14342g d0(@NotNull C14340e v10) {
        M.p(v10, "v");
        return new C14342g(Q() + v10.z(), U() + v10.B(), V(), P());
    }

    public final float e() {
        return this.f97593a;
    }

    @NotNull
    public final C14342g e0(@NotNull C14341f v10) {
        M.p(v10, "v");
        return new C14342g(Q() + v10.H(), U() + v10.K(), V() + v10.L(), P());
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C14342g)) {
            return false;
        }
        C14342g c14342g = (C14342g) obj;
        return Float.compare(this.f97593a, c14342g.f97593a) == 0 && Float.compare(this.f97594b, c14342g.f97594b) == 0 && Float.compare(this.f97595c, c14342g.f97595c) == 0 && Float.compare(this.f97596d, c14342g.f97596d) == 0;
    }

    public final float f() {
        return this.f97594b;
    }

    @NotNull
    public final C14342g f0(@NotNull C14342g v10) {
        M.p(v10, "v");
        return new C14342g(Q() + v10.Q(), U() + v10.U(), V() + v10.V(), P() + v10.P());
    }

    public final float g() {
        return this.f97595c;
    }

    public final void g0(int i10, float f10) {
        if (i10 == 0) {
            this.f97593a = f10;
            return;
        }
        if (i10 == 1) {
            this.f97594b = f10;
        } else if (i10 == 2) {
            this.f97595c = f10;
        } else {
            if (i10 != 3) {
                throw new IllegalArgumentException("index must be in 0..3");
            }
            this.f97596d = f10;
        }
    }

    public final float h() {
        return this.f97596d;
    }

    public final void h0(int i10, int i11, float f10) {
        g0(i10, f10);
        g0(i11, f10);
    }

    public int hashCode() {
        return (((((Float.hashCode(this.f97593a) * 31) + Float.hashCode(this.f97594b)) * 31) + Float.hashCode(this.f97595c)) * 31) + Float.hashCode(this.f97596d);
    }

    @NotNull
    public final C14342g i(float f10, float f11, float f12, float f13) {
        return new C14342g(f10, f11, f12, f13);
    }

    public final void i0(int i10, int i11, int i12, float f10) {
        g0(i10, f10);
        g0(i11, f10);
        g0(i12, f10);
    }

    public final void j0(int i10, int i11, int i12, int i13, float f10) {
        g0(i10, f10);
        g0(i11, f10);
        g0(i12, f10);
        g0(i13, f10);
    }

    @NotNull
    public final C14342g k() {
        float f10 = this.f97593a;
        this.f97593a = f10 - 1.0f;
        float f11 = this.f97594b;
        this.f97594b = f11 - 1.0f;
        float f12 = this.f97595c;
        this.f97595c = f12 - 1.0f;
        float f13 = this.f97596d;
        this.f97596d = (-1.0f) + f13;
        return new C14342g(f10, f11, f12, f13);
    }

    public final void k0(@NotNull H index, float f10) {
        M.p(index, "index");
        switch (a.f97597a[index.ordinal()]) {
            case 1:
            case 2:
            case 3:
                this.f97593a = f10;
                return;
            case 4:
            case 5:
            case 6:
                this.f97594b = f10;
                return;
            case 7:
            case 8:
            case 9:
                this.f97595c = f10;
                return;
            case 10:
            case 11:
            case 12:
                this.f97596d = f10;
                return;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    @NotNull
    public final C14342g l(float f10) {
        return new C14342g(Q() / f10, U() / f10, V() / f10, P() / f10);
    }

    public final void l0(@NotNull H index1, @NotNull H index2, float f10) {
        M.p(index1, "index1");
        M.p(index2, "index2");
        k0(index1, f10);
        k0(index2, f10);
    }

    @NotNull
    public final C14342g m(@NotNull C14340e v10) {
        M.p(v10, "v");
        return new C14342g(Q() / v10.z(), U() / v10.B(), V(), P());
    }

    public final void m0(@NotNull H index1, @NotNull H index2, @NotNull H index3, float f10) {
        M.p(index1, "index1");
        M.p(index2, "index2");
        M.p(index3, "index3");
        k0(index1, f10);
        k0(index2, f10);
        k0(index3, f10);
    }

    @NotNull
    public final C14342g n(@NotNull C14341f v10) {
        M.p(v10, "v");
        return new C14342g(Q() / v10.H(), U() / v10.K(), V() / v10.L(), P());
    }

    public final void n0(@NotNull H index1, @NotNull H index2, @NotNull H index3, @NotNull H index4, float f10) {
        M.p(index1, "index1");
        M.p(index2, "index2");
        M.p(index3, "index3");
        M.p(index4, "index4");
        k0(index1, f10);
        k0(index2, f10);
        k0(index3, f10);
        k0(index4, f10);
    }

    @NotNull
    public final C14342g o(@NotNull C14342g v10) {
        M.p(v10, "v");
        return new C14342g(Q() / v10.Q(), U() / v10.U(), V() / v10.V(), P() / v10.P());
    }

    public final void o0(float f10) {
        C0(f10);
    }

    public final boolean p(float f10, float f11) {
        return Math.abs(Q() - f10) < f11 && Math.abs(U() - f10) < f11 && Math.abs(V() - f10) < f11 && Math.abs(P() - f10) < f11;
    }

    public final void p0(float f10) {
        I0(f10);
    }

    public final boolean q(@NotNull C14342g v10, float f10) {
        M.p(v10, "v");
        return Math.abs(Q() - v10.Q()) < f10 && Math.abs(U() - v10.U()) < f10 && Math.abs(V() - v10.V()) < f10 && Math.abs(P() - v10.P()) < f10;
    }

    public final void q0(float f10) {
        H0(f10);
    }

    public final void r0(float f10) {
        I0(f10);
    }

    public final void s0(float f10) {
        C0(f10);
    }

    public final float t(int i10) {
        if (i10 == 0) {
            return this.f97593a;
        }
        if (i10 == 1) {
            return this.f97594b;
        }
        if (i10 == 2) {
            return this.f97595c;
        }
        if (i10 == 3) {
            return this.f97596d;
        }
        throw new IllegalArgumentException("index must be in 0..3");
    }

    public final void t0(float f10) {
        D0(f10);
    }

    @NotNull
    public String toString() {
        return "Float4(x=" + this.f97593a + ", y=" + this.f97594b + ", z=" + this.f97595c + ", w=" + this.f97596d + ")";
    }

    public final float u(@NotNull H index) {
        M.p(index, "index");
        switch (a.f97597a[index.ordinal()]) {
            case 1:
            case 2:
            case 3:
                return this.f97593a;
            case 4:
            case 5:
            case 6:
                return this.f97594b;
            case 7:
            case 8:
            case 9:
                return this.f97595c;
            case 10:
            case 11:
            case 12:
                return this.f97596d;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    public final void u0(@NotNull C14340e value) {
        M.p(value, "value");
        D0(value.z());
        H0(value.B());
    }

    @NotNull
    public final C14340e v(int i10, int i11) {
        return new C14340e(t(i10), t(i11));
    }

    public final void v0(@NotNull C14341f value) {
        M.p(value, "value");
        D0(value.H());
        H0(value.K());
        I0(value.L());
    }

    @NotNull
    public final C14340e w(@NotNull H index1, @NotNull H index2) {
        M.p(index1, "index1");
        M.p(index2, "index2");
        return new C14340e(u(index1), u(index2));
    }

    public final void w0(@NotNull C14342g value) {
        M.p(value, "value");
        D0(value.Q());
        H0(value.U());
        I0(value.V());
        C0(value.P());
    }

    @NotNull
    public final C14341f x(int i10, int i11, int i12) {
        return new C14341f(t(i10), t(i11), t(i12));
    }

    public final void x0(float f10) {
        D0(f10);
    }

    @NotNull
    public final C14341f y(@NotNull H index1, @NotNull H index2, @NotNull H index3) {
        M.p(index1, "index1");
        M.p(index2, "index2");
        M.p(index3, "index3");
        return new C14341f(u(index1), u(index2), u(index3));
    }

    public final void y0(@NotNull C14340e value) {
        M.p(value, "value");
        D0(value.z());
        H0(value.B());
    }

    @NotNull
    public final C14342g z(int i10, int i11, int i12, int i13) {
        return new C14342g(t(i10), t(i11), t(i12), t(i13));
    }

    public final void z0(@NotNull C14341f value) {
        M.p(value, "value");
        D0(value.H());
        H0(value.K());
        I0(value.L());
    }

    public C14342g(float f10, float f11, float f12, float f13) {
        this.f97593a = f10;
        this.f97594b = f11;
        this.f97595c = f12;
        this.f97596d = f13;
    }

    public C14342g(float f10, float f11, float f12, float f13, int i10, C14026x c14026x) {
        this((i10 & 1) != 0 ? 0.0f : f10, (i10 & 2) != 0 ? 0.0f : f11, (i10 & 4) != 0 ? 0.0f : f12, (i10 & 8) != 0 ? 0.0f : f13);
    }

    public C14342g(float f10) {
        this(f10, f10, f10, f10);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C14342g(@NotNull C14340e v10, float f10, float f11) {
        this(v10.z(), v10.B(), f10, f11);
        M.p(v10, "v");
    }

    public C14342g(C14340e c14340e, float f10, float f11, int i10, C14026x c14026x) {
        this(c14340e, (i10 & 2) != 0 ? 0.0f : f10, (i10 & 4) != 0 ? 0.0f : f11);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C14342g(@NotNull C14341f v10, float f10) {
        this(v10.H(), v10.K(), v10.L(), f10);
        M.p(v10, "v");
    }

    public C14342g(C14341f c14341f, float f10, int i10, C14026x c14026x) {
        this(c14341f, (i10 & 2) != 0 ? 0.0f : f10);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C14342g(@NotNull C14342g v10) {
        this(v10.f97593a, v10.f97594b, v10.f97595c, v10.f97596d);
        M.p(v10, "v");
    }
}
