package n0;

import ag.C3610D;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nMatrix.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Matrix.kt\ncom/google/android/filament/utils/Mat3\n+ 2 Vector.kt\ncom/google/android/filament/utils/Float3\n+ 3 Vector.kt\ncom/google/android/filament/utils/VectorKt\n*L\n1#1,908:1\n222#2,4:909\n304#2:913\n305#2:914\n306#2:915\n307#2:916\n308#2,2:917\n310#2,3:925\n308#2,2:928\n310#2,3:936\n308#2,2:939\n310#2,3:947\n308#2,5:950\n308#2,2:955\n310#2,3:963\n308#2,2:966\n310#2,3:974\n315#2:977\n326#2,2:979\n328#2,3:987\n326#2,2:990\n328#2,3:998\n326#2,2:1001\n328#2,3:1009\n326#2,2:1012\n328#2,3:1020\n326#2,2:1023\n328#2,3:1031\n326#2,2:1034\n328#2,3:1042\n333#2:1045\n617#3,6:919\n617#3,6:930\n617#3,6:941\n617#3,6:957\n617#3,6:968\n622#3:978\n617#3,6:981\n617#3,6:992\n617#3,6:1003\n617#3,6:1014\n617#3,6:1025\n617#3,6:1036\n622#3:1046\n*S KotlinDebug\n*F\n+ 1 Matrix.kt\ncom/google/android/filament/utils/Mat3\n*L\n170#1:909,4\n180#1:913\n181#1:914\n182#1:915\n183#1:916\n185#1:917,2\n185#1:925,3\n186#1:928,2\n186#1:936,3\n187#1:939,2\n187#1:947,3\n185#1:950,5\n186#1:955,2\n186#1:963,3\n187#1:966,2\n187#1:974,3\n191#1:977\n212#1:979,2\n212#1:987,3\n213#1:990,2\n213#1:998,3\n214#1:1001,2\n214#1:1009,3\n212#1:1012,2\n212#1:1020,3\n213#1:1023,2\n213#1:1031,3\n214#1:1034,2\n214#1:1042,3\n218#1:1045\n185#1:919,6\n186#1:930,6\n187#1:941,6\n186#1:957,6\n187#1:968,6\n191#1:978\n212#1:981,6\n213#1:992,6\n214#1:1003,6\n212#1:1014,6\n213#1:1025,6\n214#1:1036,6\n218#1:1046\n*E\n"})
public final class p {

    @NotNull
    public static final a f97661d = new a(null);

    @NotNull
    public C14341f f97662a;

    @NotNull
    public C14341f f97663b;

    @NotNull
    public C14341f f97664c;

    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        @NotNull
        public final p a() {
            return new p(null, null, null, 7, null);
        }

        @NotNull
        public final p b(@NotNull float... a10) {
            M.p(a10, "a");
            if (a10.length >= 9) {
                return new p(new C14341f(a10[0], a10[3], a10[6]), new C14341f(a10[1], a10[4], a10[7]), new C14341f(a10[2], a10[5], a10[8]));
            }
            throw new IllegalArgumentException("Failed requirement.");
        }

        public a() {
        }
    }

    public class b {

        public static final int[] f97665a;

        static {
            int[] iArr = new int[r.values().length];
            try {
                iArr[r.f97673X.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[r.f97674Y.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[r.f97675Z.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f97665a = iArr;
        }
    }

    public p() {
        this(null, null, null, 7, null);
    }

    public static p c(p pVar, float f10, float f11, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            f11 = 0.0f;
        }
        C14341f t10 = pVar.t();
        C14341f c14341f = new C14341f(Math.abs(t10.H() - f10) < f11 ? 0.0f : Float.compare(r2, f10), Math.abs(t10.K() - f10) < f11 ? 0.0f : Float.compare(r3, f10), Math.abs(t10.L() - f10) < f11 ? 0.0f : Float.compare(r0, f10));
        C14341f u10 = pVar.u();
        C14341f c14341f2 = new C14341f(Math.abs(u10.H() - f10) < f11 ? 0.0f : Float.compare(r3, f10), Math.abs(u10.K() - f10) < f11 ? 0.0f : Float.compare(r4, f10), Math.abs(u10.L() - f10) < f11 ? 0.0f : Float.compare(r0, f10));
        C14341f v10 = pVar.v();
        return new p(c14341f, c14341f2, new C14341f(Math.abs(v10.H() - f10) < f11 ? 0.0f : Float.compare(r3, f10), Math.abs(v10.K() - f10) < f11 ? 0.0f : Float.compare(r4, f10), Math.abs(v10.L() - f10) >= f11 ? Float.compare(r6, f10) : 0.0f));
    }

    public static p d(p pVar, p m10, float f10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            f10 = 0.0f;
        }
        M.p(m10, "m");
        C14341f t10 = pVar.t();
        C14341f t11 = m10.t();
        C14341f c14341f = new C14341f(Math.abs(t10.H() - t11.H()) < f10 ? 0.0f : Float.compare(r3, r4), Math.abs(t10.K() - t11.K()) < f10 ? 0.0f : Float.compare(r4, r5), Math.abs(t10.L() - t11.L()) < f10 ? 0.0f : Float.compare(r0, r1));
        C14341f u10 = pVar.u();
        C14341f u11 = m10.u();
        C14341f c14341f2 = new C14341f(Math.abs(u10.H() - u11.H()) < f10 ? 0.0f : Float.compare(r4, r5), Math.abs(u10.K() - u11.K()) < f10 ? 0.0f : Float.compare(r5, r6), Math.abs(u10.L() - u11.L()) < f10 ? 0.0f : Float.compare(r0, r1));
        C14341f v10 = pVar.v();
        C14341f v11 = m10.v();
        return new p(c14341f, c14341f2, new C14341f(Math.abs(v10.H() - v11.H()) < f10 ? 0.0f : Float.compare(r1, r4), Math.abs(v10.K() - v11.K()) < f10 ? 0.0f : Float.compare(r4, r5), Math.abs(v10.L() - v11.L()) >= f10 ? Float.compare(r8, r9) : 0.0f));
    }

    public static p i(p pVar, C14341f c14341f, C14341f c14341f2, C14341f c14341f3, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            c14341f = pVar.f97662a;
        }
        if ((i10 & 2) != 0) {
            c14341f2 = pVar.f97663b;
        }
        if ((i10 & 4) != 0) {
            c14341f3 = pVar.f97664c;
        }
        return pVar.h(c14341f, c14341f2, c14341f3);
    }

    public static boolean n(p pVar, float f10, float f11, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            f11 = 0.0f;
        }
        C14341f t10 = pVar.t();
        if (Math.abs(t10.H() - f10) < f11 && Math.abs(t10.K() - f10) < f11 && Math.abs(t10.L() - f10) < f11) {
            C14341f u10 = pVar.u();
            if (Math.abs(u10.H() - f10) < f11 && Math.abs(u10.K() - f10) < f11 && Math.abs(u10.L() - f10) < f11) {
                C14341f v10 = pVar.v();
                if (Math.abs(v10.H() - f10) < f11 && Math.abs(v10.K() - f10) < f11 && Math.abs(v10.L() - f10) < f11) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean o(p pVar, p m10, float f10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            f10 = 0.0f;
        }
        M.p(m10, "m");
        C14341f t10 = pVar.t();
        C14341f t11 = m10.t();
        if (Math.abs(t10.H() - t11.H()) < f10 && Math.abs(t10.K() - t11.K()) < f10 && Math.abs(t10.L() - t11.L()) < f10) {
            C14341f u10 = pVar.u();
            C14341f u11 = m10.u();
            if (Math.abs(u10.H() - u11.H()) < f10 && Math.abs(u10.K() - u11.K()) < f10 && Math.abs(u10.L() - u11.L()) < f10) {
                C14341f v10 = pVar.v();
                C14341f v11 = m10.v();
                if (Math.abs(v10.H() - v11.H()) < f10 && Math.abs(v10.K() - v11.K()) < f10 && Math.abs(v10.L() - v11.L()) < f10) {
                    return true;
                }
            }
        }
        return false;
    }

    @NotNull
    public final p A(float f10) {
        C14341f c14341f = this.f97662a;
        C14341f c14341f2 = new C14341f(c14341f.H() + f10, c14341f.K() + f10, c14341f.L() + f10);
        C14341f c14341f3 = this.f97663b;
        C14341f c14341f4 = new C14341f(c14341f3.H() + f10, c14341f3.K() + f10, c14341f3.L() + f10);
        C14341f c14341f5 = this.f97664c;
        return new p(c14341f2, c14341f4, new C14341f(c14341f5.H() + f10, c14341f5.K() + f10, c14341f5.L() + f10));
    }

    public final void B(int i10, int i11, float f10) {
        r(i10).U(i11, f10);
    }

    public final void C(int i10, @NotNull C14341f v10) {
        M.p(v10, "v");
        C14341f r10 = r(i10);
        r10.k0(v10.H());
        r10.n0(v10.K());
        r10.o0(v10.L());
    }

    public final void D(@NotNull C14341f c14341f) {
        M.p(c14341f, "<set-?>");
        this.f97662a = c14341f;
    }

    public final void E(@NotNull C14341f c14341f) {
        M.p(c14341f, "<set-?>");
        this.f97663b = c14341f;
    }

    public final void F(@NotNull C14341f c14341f) {
        M.p(c14341f, "<set-?>");
        this.f97664c = c14341f;
    }

    @NotNull
    public final C14341f G(@NotNull C14341f v10) {
        M.p(v10, "v");
        return new C14341f((this.f97662a.H() * v10.H()) + (this.f97663b.H() * v10.K()) + (this.f97664c.H() * v10.L()), (this.f97662a.K() * v10.H()) + (this.f97663b.K() * v10.K()) + (this.f97664c.K() * v10.L()), (this.f97662a.L() * v10.H()) + (this.f97663b.L() * v10.K()) + (this.f97664c.L() * v10.L()));
    }

    @NotNull
    public final p H(float f10) {
        C14341f c14341f = this.f97662a;
        C14341f c14341f2 = new C14341f(c14341f.H() * f10, c14341f.K() * f10, c14341f.L() * f10);
        C14341f c14341f3 = this.f97663b;
        C14341f c14341f4 = new C14341f(c14341f3.H() * f10, c14341f3.K() * f10, c14341f3.L() * f10);
        C14341f c14341f5 = this.f97664c;
        return new p(c14341f2, c14341f4, new C14341f(c14341f5.H() * f10, c14341f5.K() * f10, c14341f5.L() * f10));
    }

    @NotNull
    public final p I(@NotNull p m10) {
        M.p(m10, "m");
        return new p(new C14341f((this.f97662a.H() * m10.f97662a.H()) + (this.f97663b.H() * m10.f97662a.K()) + (this.f97664c.H() * m10.f97662a.L()), (this.f97662a.K() * m10.f97662a.H()) + (this.f97663b.K() * m10.f97662a.K()) + (this.f97664c.K() * m10.f97662a.L()), (this.f97662a.L() * m10.f97662a.H()) + (this.f97663b.L() * m10.f97662a.K()) + (this.f97664c.L() * m10.f97662a.L())), new C14341f((this.f97662a.H() * m10.f97663b.H()) + (this.f97663b.H() * m10.f97663b.K()) + (this.f97664c.H() * m10.f97663b.L()), (this.f97662a.K() * m10.f97663b.H()) + (this.f97663b.K() * m10.f97663b.K()) + (this.f97664c.K() * m10.f97663b.L()), (this.f97662a.L() * m10.f97663b.H()) + (this.f97663b.L() * m10.f97663b.K()) + (this.f97664c.L() * m10.f97663b.L())), new C14341f((this.f97662a.H() * m10.f97664c.H()) + (this.f97663b.H() * m10.f97664c.K()) + (this.f97664c.H() * m10.f97664c.L()), (this.f97662a.K() * m10.f97664c.H()) + (this.f97663b.K() * m10.f97664c.K()) + (this.f97664c.K() * m10.f97664c.L()), (this.f97662a.L() * m10.f97664c.H()) + (this.f97663b.L() * m10.f97664c.K()) + (this.f97664c.L() * m10.f97664c.L())));
    }

    @NotNull
    public final float[] J() {
        return new float[]{this.f97662a.H(), this.f97663b.H(), this.f97664c.H(), this.f97662a.K(), this.f97663b.K(), this.f97664c.K(), this.f97662a.L(), this.f97663b.L(), this.f97664c.L()};
    }

    @NotNull
    public final p K() {
        return new p(this.f97662a.u0(), this.f97663b.u0(), this.f97664c.u0());
    }

    @NotNull
    public final p a(float f10, float f11) {
        C14341f t10 = t();
        C14341f c14341f = new C14341f(Math.abs(t10.H() - f10) < f11 ? 0.0f : Float.compare(r3, f10), Math.abs(t10.K() - f10) < f11 ? 0.0f : Float.compare(r4, f10), Math.abs(t10.L() - f10) < f11 ? 0.0f : Float.compare(r1, f10));
        C14341f u10 = u();
        C14341f c14341f2 = new C14341f(Math.abs(u10.H() - f10) < f11 ? 0.0f : Float.compare(r4, f10), Math.abs(u10.K() - f10) < f11 ? 0.0f : Float.compare(r6, f10), Math.abs(u10.L() - f10) < f11 ? 0.0f : Float.compare(r1, f10));
        C14341f v10 = v();
        return new p(c14341f, c14341f2, new C14341f(Math.abs(v10.H() - f10) < f11 ? 0.0f : Float.compare(r6, f10), Math.abs(v10.K() - f10) < f11 ? 0.0f : Float.compare(r7, f10), Math.abs(v10.L() - f10) >= f11 ? Float.compare(r1, f10) : 0.0f));
    }

    @NotNull
    public final p b(@NotNull p m10, float f10) {
        M.p(m10, "m");
        C14341f t10 = t();
        C14341f t11 = m10.t();
        C14341f c14341f = new C14341f(Math.abs(t10.H() - t11.H()) < f10 ? 0.0f : Float.compare(r4, r5), Math.abs(t10.K() - t11.K()) < f10 ? 0.0f : Float.compare(r5, r6), Math.abs(t10.L() - t11.L()) < f10 ? 0.0f : Float.compare(r1, r2));
        C14341f u10 = u();
        C14341f u11 = m10.u();
        C14341f c14341f2 = new C14341f(Math.abs(u10.H() - u11.H()) < f10 ? 0.0f : Float.compare(r5, r6), Math.abs(u10.K() - u11.K()) < f10 ? 0.0f : Float.compare(r6, r8), Math.abs(u10.L() - u11.L()) < f10 ? 0.0f : Float.compare(r1, r2));
        C14341f v10 = v();
        C14341f v11 = m10.v();
        return new p(c14341f, c14341f2, new C14341f(Math.abs(v10.H() - v11.H()) < f10 ? 0.0f : Float.compare(r5, r6), Math.abs(v10.K() - v11.K()) < f10 ? 0.0f : Float.compare(r6, r8), Math.abs(v10.L() - v11.L()) >= f10 ? Float.compare(r1, r11) : 0.0f));
    }

    @NotNull
    public final C14341f e() {
        return this.f97662a;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p)) {
            return false;
        }
        p pVar = (p) obj;
        return M.g(this.f97662a, pVar.f97662a) && M.g(this.f97663b, pVar.f97663b) && M.g(this.f97664c, pVar.f97664c);
    }

    @NotNull
    public final C14341f f() {
        return this.f97663b;
    }

    @NotNull
    public final C14341f g() {
        return this.f97664c;
    }

    @NotNull
    public final p h(@NotNull C14341f x10, @NotNull C14341f y10, @NotNull C14341f z10) {
        M.p(x10, "x");
        M.p(y10, "y");
        M.p(z10, "z");
        return new p(x10, y10, z10);
    }

    public int hashCode() {
        return (((this.f97662a.hashCode() * 31) + this.f97663b.hashCode()) * 31) + this.f97664c.hashCode();
    }

    @NotNull
    public final p j() {
        C14341f c14341f = this.f97662a;
        this.f97662a = c14341f.j();
        C14341f c14341f2 = this.f97663b;
        this.f97663b = c14341f2.j();
        C14341f c14341f3 = this.f97664c;
        this.f97664c = c14341f3.j();
        return new p(c14341f, c14341f2, c14341f3);
    }

    @NotNull
    public final p k(float f10) {
        C14341f c14341f = this.f97662a;
        C14341f c14341f2 = new C14341f(c14341f.H() / f10, c14341f.K() / f10, c14341f.L() / f10);
        C14341f c14341f3 = this.f97663b;
        C14341f c14341f4 = new C14341f(c14341f3.H() / f10, c14341f3.K() / f10, c14341f3.L() / f10);
        C14341f c14341f5 = this.f97664c;
        return new p(c14341f2, c14341f4, new C14341f(c14341f5.H() / f10, c14341f5.K() / f10, c14341f5.L() / f10));
    }

    public final boolean l(float f10, float f11) {
        C14341f t10 = t();
        if (Math.abs(t10.H() - f10) < f11 && Math.abs(t10.K() - f10) < f11 && Math.abs(t10.L() - f10) < f11) {
            C14341f u10 = u();
            if (Math.abs(u10.H() - f10) < f11 && Math.abs(u10.K() - f10) < f11 && Math.abs(u10.L() - f10) < f11) {
                C14341f v10 = v();
                if (Math.abs(v10.H() - f10) < f11 && Math.abs(v10.K() - f10) < f11 && Math.abs(v10.L() - f10) < f11) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean m(@NotNull p m10, float f10) {
        M.p(m10, "m");
        C14341f t10 = t();
        C14341f t11 = m10.t();
        if (Math.abs(t10.H() - t11.H()) < f10 && Math.abs(t10.K() - t11.K()) < f10 && Math.abs(t10.L() - t11.L()) < f10) {
            C14341f u10 = u();
            C14341f u11 = m10.u();
            if (Math.abs(u10.H() - u11.H()) < f10 && Math.abs(u10.K() - u11.K()) < f10 && Math.abs(u10.L() - u11.L()) < f10) {
                C14341f v10 = v();
                C14341f v11 = m10.v();
                if (Math.abs(v10.H() - v11.H()) < f10 && Math.abs(v10.K() - v11.K()) < f10 && Math.abs(v10.L() - v11.L()) < f10) {
                    return true;
                }
            }
        }
        return false;
    }

    public final float p(int i10, int i11) {
        return r(i10).r(i11);
    }

    public final float q(@NotNull r column, int i10) {
        M.p(column, "column");
        return s(column).r(i10);
    }

    @NotNull
    public final C14341f r(int i10) {
        if (i10 == 0) {
            return this.f97662a;
        }
        if (i10 == 1) {
            return this.f97663b;
        }
        if (i10 == 2) {
            return this.f97664c;
        }
        throw new IllegalArgumentException("column must be in 0..2");
    }

    @NotNull
    public final C14341f s(@NotNull r column) {
        M.p(column, "column");
        int i10 = b.f97665a[column.ordinal()];
        if (i10 == 1) {
            return this.f97662a;
        }
        if (i10 == 2) {
            return this.f97663b;
        }
        if (i10 == 3) {
            return this.f97664c;
        }
        throw new IllegalArgumentException("column must be X, Y or Z");
    }

    @NotNull
    public final C14341f t() {
        return this.f97662a;
    }

    @NotNull
    public String toString() {
        return C3610D.v("\n            |" + this.f97662a.H() + " " + this.f97663b.H() + " " + this.f97664c.H() + "|\n            |" + this.f97662a.K() + " " + this.f97663b.K() + " " + this.f97664c.K() + "|\n            |" + this.f97662a.L() + " " + this.f97663b.L() + " " + this.f97664c.L() + "|\n            ");
    }

    @NotNull
    public final C14341f u() {
        return this.f97663b;
    }

    @NotNull
    public final C14341f v() {
        return this.f97664c;
    }

    @NotNull
    public final p w() {
        C14341f c14341f = this.f97662a;
        this.f97662a = c14341f.M();
        C14341f c14341f2 = this.f97663b;
        this.f97663b = c14341f2.M();
        C14341f c14341f3 = this.f97664c;
        this.f97664c = c14341f3.M();
        return new p(c14341f, c14341f2, c14341f3);
    }

    public final float x(int i10, int i11) {
        return r(i11 - 1).r(i10 - 1);
    }

    public final void y(int i10, int i11, float f10) {
        B(i11 - 1, i10 - 1, f10);
    }

    @NotNull
    public final p z(float f10) {
        C14341f c14341f = this.f97662a;
        C14341f c14341f2 = new C14341f(c14341f.H() - f10, c14341f.K() - f10, c14341f.L() - f10);
        C14341f c14341f3 = this.f97663b;
        C14341f c14341f4 = new C14341f(c14341f3.H() - f10, c14341f3.K() - f10, c14341f3.L() - f10);
        C14341f c14341f5 = this.f97664c;
        return new p(c14341f2, c14341f4, new C14341f(c14341f5.H() - f10, c14341f5.K() - f10, c14341f5.L() - f10));
    }

    public p(@NotNull C14341f x10, @NotNull C14341f y10, @NotNull C14341f z10) {
        M.p(x10, "x");
        M.p(y10, "y");
        M.p(z10, "z");
        this.f97662a = x10;
        this.f97663b = y10;
        this.f97664c = z10;
    }

    public p(C14341f c14341f, C14341f c14341f2, C14341f c14341f3, int i10, C14026x c14026x) {
        this((i10 & 1) != 0 ? new C14341f(1.0f, 0.0f, 0.0f, 6, null) : c14341f, (i10 & 2) != 0 ? new C14341f(0.0f, 1.0f, 0.0f, 5, null) : c14341f2, (i10 & 4) != 0 ? new C14341f(0.0f, 0.0f, 1.0f, 3, null) : c14341f3);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public p(@NotNull p m10) {
        this(C14341f.i(m10.f97662a, 0.0f, 0.0f, 0.0f, 7, null), C14341f.i(m10.f97663b, 0.0f, 0.0f, 0.0f, 7, null), C14341f.i(m10.f97664c, 0.0f, 0.0f, 0.0f, 7, null));
        M.p(m10, "m");
    }
}
