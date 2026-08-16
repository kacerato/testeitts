package n0;

import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nVector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Vector.kt\ncom/google/android/filament/utils/Float3\n+ 2 Vector.kt\ncom/google/android/filament/utils/VectorKt\n*L\n1#1,2155:1\n617#2,6:2156\n617#2,6:2162\n617#2,6:2168\n617#2,6:2174\n617#2,6:2180\n622#2:2186\n617#2,6:2187\n617#2,6:2193\n617#2,6:2199\n617#2,6:2205\n617#2,6:2211\n617#2,6:2217\n622#2:2223\n*S KotlinDebug\n*F\n+ 1 Vector.kt\ncom/google/android/filament/utils/Float3\n*L\n309#1:2156,6\n310#1:2162,6\n311#1:2168,6\n310#1:2174,6\n311#1:2180,6\n315#1:2186\n327#1:2187,6\n328#1:2193,6\n329#1:2199,6\n327#1:2205,6\n328#1:2211,6\n329#1:2217,6\n333#1:2223\n*E\n"})
public final class C14341f {

    public float f97589a;

    public float f97590b;

    public float f97591c;

    public class a {

        public static final int[] f97592a;

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
            f97592a = iArr;
        }
    }

    public C14341f() {
        this(0.0f, 0.0f, 0.0f, 7, null);
    }

    public static C14341f c(C14341f c14341f, float f10, float f11, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            f11 = 0.0f;
        }
        return new C14341f(Math.abs(c14341f.H() - f10) < f11 ? 0.0f : Float.compare(r0, f10), Math.abs(c14341f.K() - f10) < f11 ? 0.0f : Float.compare(r1, f10), Math.abs(c14341f.L() - f10) >= f11 ? Float.compare(r3, f10) : 0.0f);
    }

    public static C14341f d(C14341f c14341f, C14341f v10, float f10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            f10 = 0.0f;
        }
        M.p(v10, "v");
        return new C14341f(Math.abs(c14341f.H() - v10.H()) < f10 ? 0.0f : Float.compare(r0, r1), Math.abs(c14341f.K() - v10.K()) < f10 ? 0.0f : Float.compare(r1, r2), Math.abs(c14341f.L() - v10.L()) >= f10 ? Float.compare(r4, r5) : 0.0f);
    }

    public static C14341f i(C14341f c14341f, float f10, float f11, float f12, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = c14341f.f97589a;
        }
        if ((i10 & 2) != 0) {
            f11 = c14341f.f97590b;
        }
        if ((i10 & 4) != 0) {
            f12 = c14341f.f97591c;
        }
        return c14341f.h(f10, f11, f12);
    }

    public static boolean p(C14341f c14341f, float f10, float f11, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            f11 = 0.0f;
        }
        return Math.abs(c14341f.H() - f10) < f11 && Math.abs(c14341f.K() - f10) < f11 && Math.abs(c14341f.L() - f10) < f11;
    }

    public static boolean q(C14341f c14341f, C14341f v10, float f10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            f10 = 0.0f;
        }
        M.p(v10, "v");
        return Math.abs(c14341f.H() - v10.H()) < f10 && Math.abs(c14341f.K() - v10.K()) < f10 && Math.abs(c14341f.L() - v10.L()) < f10;
    }

    public final float A() {
        return H();
    }

    @NotNull
    public final C14340e B() {
        return new C14340e(H(), K());
    }

    @NotNull
    public final C14341f C() {
        return new C14341f(H(), K(), L());
    }

    public final float D() {
        return H();
    }

    @NotNull
    public final C14340e E() {
        return new C14340e(H(), K());
    }

    @NotNull
    public final C14341f F() {
        return new C14341f(H(), K(), L());
    }

    public final float G() {
        return K();
    }

    public final float H() {
        return this.f97589a;
    }

    @NotNull
    public final C14340e I() {
        return new C14340e(H(), K());
    }

    @NotNull
    public final C14341f J() {
        return new C14341f(H(), K(), L());
    }

    public final float K() {
        return this.f97590b;
    }

    public final float L() {
        return this.f97591c;
    }

    @NotNull
    public final C14341f M() {
        float f10 = this.f97589a;
        this.f97589a = f10 + 1.0f;
        float f11 = this.f97590b;
        this.f97590b = f11 + 1.0f;
        float f12 = this.f97591c;
        this.f97591c = 1.0f + f12;
        return new C14341f(f10, f11, f12);
    }

    public final float N(int i10) {
        return r(i10 - 1);
    }

    @NotNull
    public final C14341f O(float f10) {
        return new C14341f(H() - f10, K() - f10, L() - f10);
    }

    @NotNull
    public final C14341f P(@NotNull C14340e v10) {
        M.p(v10, "v");
        return new C14341f(H() - v10.z(), K() - v10.B(), L());
    }

    @NotNull
    public final C14341f Q(@NotNull C14341f v10) {
        M.p(v10, "v");
        return new C14341f(H() - v10.H(), K() - v10.K(), L() - v10.L());
    }

    @NotNull
    public final C14341f R(float f10) {
        return new C14341f(H() + f10, K() + f10, L() + f10);
    }

    @NotNull
    public final C14341f S(@NotNull C14340e v10) {
        M.p(v10, "v");
        return new C14341f(H() + v10.z(), K() + v10.B(), L());
    }

    @NotNull
    public final C14341f T(@NotNull C14341f v10) {
        M.p(v10, "v");
        return new C14341f(H() + v10.H(), K() + v10.K(), L() + v10.L());
    }

    public final void U(int i10, float f10) {
        if (i10 == 0) {
            this.f97589a = f10;
        } else if (i10 == 1) {
            this.f97590b = f10;
        } else {
            if (i10 != 2) {
                throw new IllegalArgumentException("index must be in 0..2");
            }
            this.f97591c = f10;
        }
    }

    public final void V(int i10, int i11, float f10) {
        U(i10, f10);
        U(i11, f10);
    }

    public final void W(int i10, int i11, int i12, float f10) {
        U(i10, f10);
        U(i11, f10);
        U(i12, f10);
    }

    public final void X(@NotNull H index, float f10) {
        M.p(index, "index");
        switch (a.f97592a[index.ordinal()]) {
            case 1:
            case 2:
            case 3:
                this.f97589a = f10;
                return;
            case 4:
            case 5:
            case 6:
                this.f97590b = f10;
                return;
            case 7:
            case 8:
            case 9:
                this.f97591c = f10;
                return;
            default:
                throw new IllegalArgumentException("index must be X, Y, Z, R, G, B, S, T or P");
        }
    }

    public final void Y(@NotNull H index1, @NotNull H index2, float f10) {
        M.p(index1, "index1");
        M.p(index2, "index2");
        X(index1, f10);
        X(index2, f10);
    }

    public final void Z(@NotNull H index1, @NotNull H index2, @NotNull H index3, float f10) {
        M.p(index1, "index1");
        M.p(index2, "index2");
        M.p(index3, "index3");
        X(index1, f10);
        X(index2, f10);
        X(index3, f10);
    }

    @NotNull
    public final C14341f a(float f10, float f11) {
        return new C14341f(Math.abs(H() - f10) < f11 ? 0.0f : Float.compare(r1, f10), Math.abs(K() - f10) < f11 ? 0.0f : Float.compare(r2, f10), Math.abs(L() - f10) >= f11 ? Float.compare(r4, f10) : 0.0f);
    }

    public final void a0(float f10) {
        o0(f10);
    }

    @NotNull
    public final C14341f b(@NotNull C14341f v10, float f10) {
        M.p(v10, "v");
        return new C14341f(Math.abs(H() - v10.H()) < f10 ? 0.0f : Float.compare(r1, r2), Math.abs(K() - v10.K()) < f10 ? 0.0f : Float.compare(r2, r3), Math.abs(L() - v10.L()) >= f10 ? Float.compare(r3, r7) : 0.0f);
    }

    public final void b0(float f10) {
        n0(f10);
    }

    public final void c0(float f10) {
        o0(f10);
    }

    public final void d0(float f10) {
        k0(f10);
    }

    public final float e() {
        return this.f97589a;
    }

    public final void e0(@NotNull C14340e value) {
        M.p(value, "value");
        k0(value.z());
        n0(value.B());
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C14341f)) {
            return false;
        }
        C14341f c14341f = (C14341f) obj;
        return Float.compare(this.f97589a, c14341f.f97589a) == 0 && Float.compare(this.f97590b, c14341f.f97590b) == 0 && Float.compare(this.f97591c, c14341f.f97591c) == 0;
    }

    public final float f() {
        return this.f97590b;
    }

    public final void f0(@NotNull C14341f value) {
        M.p(value, "value");
        k0(value.H());
        n0(value.K());
        o0(value.L());
    }

    public final float g() {
        return this.f97591c;
    }

    public final void g0(float f10) {
        k0(f10);
    }

    @NotNull
    public final C14341f h(float f10, float f11, float f12) {
        return new C14341f(f10, f11, f12);
    }

    public final void h0(@NotNull C14340e value) {
        M.p(value, "value");
        k0(value.z());
        n0(value.B());
    }

    public int hashCode() {
        return (((Float.hashCode(this.f97589a) * 31) + Float.hashCode(this.f97590b)) * 31) + Float.hashCode(this.f97591c);
    }

    public final void i0(@NotNull C14341f value) {
        M.p(value, "value");
        k0(value.H());
        n0(value.K());
        o0(value.L());
    }

    @NotNull
    public final C14341f j() {
        float f10 = this.f97589a;
        this.f97589a = f10 - 1.0f;
        float f11 = this.f97590b;
        this.f97590b = f11 - 1.0f;
        float f12 = this.f97591c;
        this.f97591c = (-1.0f) + f12;
        return new C14341f(f10, f11, f12);
    }

    public final void j0(float f10) {
        n0(f10);
    }

    @NotNull
    public final C14341f k(float f10) {
        return new C14341f(H() / f10, K() / f10, L() / f10);
    }

    public final void k0(float f10) {
        this.f97589a = f10;
    }

    @NotNull
    public final C14341f l(@NotNull C14340e v10) {
        M.p(v10, "v");
        return new C14341f(H() / v10.z(), K() / v10.B(), L());
    }

    public final void l0(@NotNull C14340e value) {
        M.p(value, "value");
        k0(value.z());
        n0(value.B());
    }

    @NotNull
    public final C14341f m(@NotNull C14341f v10) {
        M.p(v10, "v");
        return new C14341f(H() / v10.H(), K() / v10.K(), L() / v10.L());
    }

    public final void m0(@NotNull C14341f value) {
        M.p(value, "value");
        k0(value.H());
        n0(value.K());
        o0(value.L());
    }

    public final boolean n(float f10, float f11) {
        return Math.abs(H() - f10) < f11 && Math.abs(K() - f10) < f11 && Math.abs(L() - f10) < f11;
    }

    public final void n0(float f10) {
        this.f97590b = f10;
    }

    public final boolean o(@NotNull C14341f v10, float f10) {
        M.p(v10, "v");
        return Math.abs(H() - v10.H()) < f10 && Math.abs(K() - v10.K()) < f10 && Math.abs(L() - v10.L()) < f10;
    }

    public final void o0(float f10) {
        this.f97591c = f10;
    }

    @NotNull
    public final C14341f p0(float f10) {
        return new C14341f(H() * f10, K() * f10, L() * f10);
    }

    @NotNull
    public final C14341f q0(@NotNull C14340e v10) {
        M.p(v10, "v");
        return new C14341f(H() * v10.z(), K() * v10.B(), L());
    }

    public final float r(int i10) {
        if (i10 == 0) {
            return this.f97589a;
        }
        if (i10 == 1) {
            return this.f97590b;
        }
        if (i10 == 2) {
            return this.f97591c;
        }
        throw new IllegalArgumentException("index must be in 0..2");
    }

    @NotNull
    public final C14341f r0(@NotNull C14341f v10) {
        M.p(v10, "v");
        return new C14341f(H() * v10.H(), K() * v10.K(), L() * v10.L());
    }

    public final float s(@NotNull H index) {
        M.p(index, "index");
        switch (a.f97592a[index.ordinal()]) {
            case 1:
            case 2:
            case 3:
                return this.f97589a;
            case 4:
            case 5:
            case 6:
                return this.f97590b;
            case 7:
            case 8:
            case 9:
                return this.f97591c;
            default:
                throw new IllegalArgumentException("index must be X, Y, Z, R, G, B, S, T or P");
        }
    }

    @NotNull
    public final float[] s0() {
        return new float[]{this.f97589a, this.f97590b, this.f97591c};
    }

    @NotNull
    public final C14340e t(int i10, int i11) {
        return new C14340e(r(i10), r(i11));
    }

    @NotNull
    public final C14341f t0(@NotNull Mf.l<? super Float, Float> block) {
        M.p(block, "block");
        k0(block.invoke(Float.valueOf(H())).floatValue());
        n0(block.invoke(Float.valueOf(K())).floatValue());
        o0(block.invoke(Float.valueOf(L())).floatValue());
        return this;
    }

    @NotNull
    public String toString() {
        return "Float3(x=" + this.f97589a + ", y=" + this.f97590b + ", z=" + this.f97591c + ")";
    }

    @NotNull
    public final C14340e u(@NotNull H index1, @NotNull H index2) {
        M.p(index1, "index1");
        M.p(index2, "index2");
        return new C14340e(s(index1), s(index2));
    }

    @NotNull
    public final C14341f u0() {
        return new C14341f(-this.f97589a, -this.f97590b, -this.f97591c);
    }

    @NotNull
    public final C14341f v(int i10, int i11, int i12) {
        return new C14341f(r(i10), r(i11), r(i12));
    }

    @NotNull
    public final C14341f w(@NotNull H index1, @NotNull H index2, @NotNull H index3) {
        M.p(index1, "index1");
        M.p(index2, "index2");
        M.p(index3, "index3");
        return new C14341f(s(index1), s(index2), s(index3));
    }

    public final float x() {
        return L();
    }

    public final float y() {
        return K();
    }

    public final float z() {
        return L();
    }

    public C14341f(float f10, float f11, float f12) {
        this.f97589a = f10;
        this.f97590b = f11;
        this.f97591c = f12;
    }

    public C14341f(float f10, float f11, float f12, int i10, C14026x c14026x) {
        this((i10 & 1) != 0 ? 0.0f : f10, (i10 & 2) != 0 ? 0.0f : f11, (i10 & 4) != 0 ? 0.0f : f12);
    }

    public C14341f(float f10) {
        this(f10, f10, f10);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C14341f(@NotNull C14340e v10, float f10) {
        this(v10.z(), v10.B(), f10);
        M.p(v10, "v");
    }

    public C14341f(C14340e c14340e, float f10, int i10, C14026x c14026x) {
        this(c14340e, (i10 & 2) != 0 ? 0.0f : f10);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C14341f(@NotNull C14341f v10) {
        this(v10.f97589a, v10.f97590b, v10.f97591c);
        M.p(v10, "v");
    }
}
