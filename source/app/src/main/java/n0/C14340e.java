package n0;

import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nVector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Vector.kt\ncom/google/android/filament/utils/Float2\n+ 2 Vector.kt\ncom/google/android/filament/utils/VectorKt\n*L\n1#1,2155:1\n617#2,6:2156\n617#2,6:2162\n622#2:2168\n617#2,6:2169\n617#2,6:2175\n617#2,6:2181\n617#2,6:2187\n622#2:2193\n*S KotlinDebug\n*F\n+ 1 Vector.kt\ncom/google/android/filament/utils/Float2\n*L\n130#1:2156,6\n131#1:2162,6\n134#1:2168\n141#1:2169,6\n142#1:2175,6\n141#1:2181,6\n142#1:2187,6\n145#1:2193\n*E\n"})
public final class C14340e {

    public float f97586a;

    public float f97587b;

    public class a {

        public static final int[] f97588a;

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
            f97588a = iArr;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public C14340e() {
        this(r2, r2, 3, null);
        float f10 = 0.0f;
    }

    public static C14340e c(C14340e c14340e, float f10, float f11, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            f11 = 0.0f;
        }
        return new C14340e(Math.abs(c14340e.z() - f10) < f11 ? 0.0f : Float.compare(r0, f10), Math.abs(c14340e.B() - f10) >= f11 ? Float.compare(r2, f10) : 0.0f);
    }

    public static C14340e d(C14340e c14340e, C14340e v10, float f10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            f10 = 0.0f;
        }
        M.p(v10, "v");
        return new C14340e(Math.abs(c14340e.z() - v10.z()) < f10 ? 0.0f : Float.compare(r0, r1), Math.abs(c14340e.B() - v10.B()) >= f10 ? Float.compare(r3, r4) : 0.0f);
    }

    public static C14340e h(C14340e c14340e, float f10, float f11, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = c14340e.f97586a;
        }
        if ((i10 & 2) != 0) {
            f11 = c14340e.f97587b;
        }
        return c14340e.g(f10, f11);
    }

    public static boolean n(C14340e c14340e, float f10, float f11, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            f11 = 0.0f;
        }
        return Math.abs(c14340e.z() - f10) < f11 && Math.abs(c14340e.B() - f10) < f11;
    }

    public static boolean o(C14340e c14340e, C14340e v10, float f10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            f10 = 0.0f;
        }
        M.p(v10, "v");
        return Math.abs(c14340e.z() - v10.z()) < f10 && Math.abs(c14340e.B() - v10.B()) < f10;
    }

    @NotNull
    public final C14340e A() {
        return new C14340e(z(), B());
    }

    public final float B() {
        return this.f97587b;
    }

    @NotNull
    public final C14340e C() {
        float f10 = this.f97586a;
        this.f97586a = f10 + 1.0f;
        float f11 = this.f97587b;
        this.f97587b = 1.0f + f11;
        return new C14340e(f10, f11);
    }

    public final float D(int i10) {
        return p(i10 - 1);
    }

    @NotNull
    public final C14340e E(float f10) {
        return new C14340e(z() - f10, B() - f10);
    }

    @NotNull
    public final C14340e F(@NotNull C14340e v10) {
        M.p(v10, "v");
        return new C14340e(z() - v10.z(), B() - v10.B());
    }

    @NotNull
    public final C14340e G(float f10) {
        return new C14340e(z() + f10, B() + f10);
    }

    @NotNull
    public final C14340e H(@NotNull C14340e v10) {
        M.p(v10, "v");
        return new C14340e(z() + v10.z(), B() + v10.B());
    }

    public final void I(int i10, float f10) {
        if (i10 == 0) {
            this.f97586a = f10;
        } else {
            if (i10 != 1) {
                throw new IllegalArgumentException("index must be in 0..1");
            }
            this.f97587b = f10;
        }
    }

    public final void J(int i10, int i11, float f10) {
        I(i10, f10);
        I(i11, f10);
    }

    public final void K(@NotNull H index, float f10) {
        M.p(index, "index");
        switch (a.f97588a[index.ordinal()]) {
            case 1:
            case 2:
            case 3:
                this.f97586a = f10;
                return;
            case 4:
            case 5:
            case 6:
                this.f97587b = f10;
                return;
            default:
                throw new IllegalArgumentException("index must be X, Y, R, G, S or T");
        }
    }

    public final void L(@NotNull H index1, @NotNull H index2, float f10) {
        M.p(index1, "index1");
        M.p(index2, "index2");
        K(index1, f10);
        K(index2, f10);
    }

    public final void M(float f10) {
        U(f10);
    }

    public final void N(float f10) {
        S(f10);
    }

    public final void O(@NotNull C14340e value) {
        M.p(value, "value");
        S(value.z());
        U(value.B());
    }

    public final void P(float f10) {
        S(f10);
    }

    public final void Q(@NotNull C14340e value) {
        M.p(value, "value");
        S(value.z());
        U(value.B());
    }

    public final void R(float f10) {
        U(f10);
    }

    public final void S(float f10) {
        this.f97586a = f10;
    }

    public final void T(@NotNull C14340e value) {
        M.p(value, "value");
        S(value.z());
        U(value.B());
    }

    public final void U(float f10) {
        this.f97587b = f10;
    }

    @NotNull
    public final C14340e V(float f10) {
        return new C14340e(z() * f10, B() * f10);
    }

    @NotNull
    public final C14340e W(@NotNull C14340e v10) {
        M.p(v10, "v");
        return new C14340e(z() * v10.z(), B() * v10.B());
    }

    @NotNull
    public final float[] X() {
        return new float[]{this.f97586a, this.f97587b};
    }

    @NotNull
    public final C14340e Y(@NotNull Mf.l<? super Float, Float> block) {
        M.p(block, "block");
        S(block.invoke(Float.valueOf(z())).floatValue());
        U(block.invoke(Float.valueOf(B())).floatValue());
        return this;
    }

    @NotNull
    public final C14340e Z() {
        return new C14340e(-this.f97586a, -this.f97587b);
    }

    @NotNull
    public final C14340e a(float f10, float f11) {
        return new C14340e(Math.abs(z() - f10) < f11 ? 0.0f : Float.compare(r1, f10), Math.abs(B() - f10) >= f11 ? Float.compare(r2, f10) : 0.0f);
    }

    @NotNull
    public final C14340e b(@NotNull C14340e v10, float f10) {
        M.p(v10, "v");
        return new C14340e(Math.abs(z() - v10.z()) < f10 ? 0.0f : Float.compare(r1, r2), Math.abs(B() - v10.B()) >= f10 ? Float.compare(r2, r6) : 0.0f);
    }

    public final float e() {
        return this.f97586a;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C14340e)) {
            return false;
        }
        C14340e c14340e = (C14340e) obj;
        return Float.compare(this.f97586a, c14340e.f97586a) == 0 && Float.compare(this.f97587b, c14340e.f97587b) == 0;
    }

    public final float f() {
        return this.f97587b;
    }

    @NotNull
    public final C14340e g(float f10, float f11) {
        return new C14340e(f10, f11);
    }

    public int hashCode() {
        return (Float.hashCode(this.f97586a) * 31) + Float.hashCode(this.f97587b);
    }

    @NotNull
    public final C14340e i() {
        float f10 = this.f97586a;
        this.f97586a = f10 - 1.0f;
        float f11 = this.f97587b;
        this.f97587b = (-1.0f) + f11;
        return new C14340e(f10, f11);
    }

    @NotNull
    public final C14340e j(float f10) {
        return new C14340e(z() / f10, B() / f10);
    }

    @NotNull
    public final C14340e k(@NotNull C14340e v10) {
        M.p(v10, "v");
        return new C14340e(z() / v10.z(), B() / v10.B());
    }

    public final boolean l(float f10, float f11) {
        return Math.abs(z() - f10) < f11 && Math.abs(B() - f10) < f11;
    }

    public final boolean m(@NotNull C14340e v10, float f10) {
        M.p(v10, "v");
        return Math.abs(z() - v10.z()) < f10 && Math.abs(B() - v10.B()) < f10;
    }

    public final float p(int i10) {
        if (i10 == 0) {
            return this.f97586a;
        }
        if (i10 == 1) {
            return this.f97587b;
        }
        throw new IllegalArgumentException("index must be in 0..1");
    }

    public final float q(@NotNull H index) {
        M.p(index, "index");
        switch (a.f97588a[index.ordinal()]) {
            case 1:
            case 2:
            case 3:
                return this.f97586a;
            case 4:
            case 5:
            case 6:
                return this.f97587b;
            default:
                throw new IllegalArgumentException("index must be X, Y, R, G, S or T");
        }
    }

    @NotNull
    public final C14340e r(int i10, int i11) {
        return new C14340e(p(i10), p(i11));
    }

    @NotNull
    public final C14340e s(@NotNull H index1, @NotNull H index2) {
        M.p(index1, "index1");
        M.p(index2, "index2");
        return new C14340e(q(index1), q(index2));
    }

    public final float t() {
        return B();
    }

    @NotNull
    public String toString() {
        return "Float2(x=" + this.f97586a + ", y=" + this.f97587b + ")";
    }

    public final float u() {
        return z();
    }

    @NotNull
    public final C14340e v() {
        return new C14340e(z(), B());
    }

    public final float w() {
        return z();
    }

    @NotNull
    public final C14340e x() {
        return new C14340e(z(), B());
    }

    public final float y() {
        return B();
    }

    public final float z() {
        return this.f97586a;
    }

    public C14340e(float f10, float f11) {
        this.f97586a = f10;
        this.f97587b = f11;
    }

    public C14340e(float f10, float f11, int i10, C14026x c14026x) {
        this((i10 & 1) != 0 ? 0.0f : f10, (i10 & 2) != 0 ? 0.0f : f11);
    }

    public C14340e(float f10) {
        this(f10, f10);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C14340e(@NotNull C14340e v10) {
        this(v10.f97586a, v10.f97587b);
        M.p(v10, "v");
    }
}
