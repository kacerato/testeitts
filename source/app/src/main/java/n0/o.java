package n0;

import ag.C3610D;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nMatrix.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Matrix.kt\ncom/google/android/filament/utils/Mat2\n+ 2 Vector.kt\ncom/google/android/filament/utils/Float2\n+ 3 Vector.kt\ncom/google/android/filament/utils/VectorKt\n*L\n1#1,908:1\n63#2,3:909\n125#2:912\n126#2:913\n127#2:914\n128#2:915\n129#2,2:916\n131#2,2:924\n129#2,2:926\n131#2,2:934\n129#2,4:936\n129#2,4:940\n134#2:944\n140#2,2:946\n142#2,2:954\n140#2,2:956\n142#2,2:964\n140#2,2:966\n142#2,2:974\n140#2,2:976\n142#2,2:984\n145#2:986\n617#3,6:918\n617#3,6:928\n622#3:945\n617#3,6:948\n617#3,6:958\n617#3,6:968\n617#3,6:978\n622#3:987\n*S KotlinDebug\n*F\n+ 1 Matrix.kt\ncom/google/android/filament/utils/Mat2\n*L\n74#1:909,3\n84#1:912\n85#1:913\n86#1:914\n87#1:915\n89#1:916,2\n89#1:924,2\n90#1:926,2\n90#1:934,2\n89#1:936,4\n90#1:940,4\n93#1:944\n107#1:946,2\n107#1:954,2\n108#1:956,2\n108#1:964,2\n107#1:966,2\n107#1:974,2\n108#1:976,2\n108#1:984,2\n111#1:986\n89#1:918,6\n90#1:928,6\n93#1:945\n107#1:948,6\n108#1:958,6\n107#1:968,6\n108#1:978,6\n111#1:987\n*E\n"})
public final class o {

    @NotNull
    public static final a f97657c = new a(null);

    @NotNull
    public C14340e f97658a;

    @NotNull
    public C14340e f97659b;

    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @NotNull
        public final o a() {
            return new o(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
        }

        @NotNull
        public final o b(@NotNull float... a10) {
            M.p(a10, "a");
            if (a10.length >= 4) {
                return new o(new C14340e(a10[0], a10[2]), new C14340e(a10[1], a10[3]));
            }
            throw new IllegalArgumentException("Failed requirement.");
        }

        public a() {
        }
    }

    public class b {

        public static final int[] f97660a;

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
            f97660a = iArr;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public o() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public static o c(o oVar, float f10, float f11, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            f11 = 0.0f;
        }
        C14340e s10 = oVar.s();
        C14340e c14340e = new C14340e(Math.abs(s10.z() - f10) < f11 ? 0.0f : Float.compare(r2, f10), Math.abs(s10.B() - f10) < f11 ? 0.0f : Float.compare(r0, f10));
        C14340e t10 = oVar.t();
        return new o(c14340e, new C14340e(Math.abs(t10.z() - f10) < f11 ? 0.0f : Float.compare(r2, f10), Math.abs(t10.B() - f10) >= f11 ? Float.compare(r4, f10) : 0.0f));
    }

    public static o d(o oVar, o m10, float f10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            f10 = 0.0f;
        }
        M.p(m10, "m");
        C14340e s10 = oVar.s();
        C14340e s11 = m10.s();
        C14340e c14340e = new C14340e(Math.abs(s10.z() - s11.z()) < f10 ? 0.0f : Float.compare(r3, r4), Math.abs(s10.B() - s11.B()) < f10 ? 0.0f : Float.compare(r0, r1));
        C14340e t10 = oVar.t();
        C14340e t11 = m10.t();
        return new o(c14340e, new C14340e(Math.abs(t10.z() - t11.z()) < f10 ? 0.0f : Float.compare(r1, r3), Math.abs(t10.B() - t11.B()) >= f10 ? Float.compare(r6, r7) : 0.0f));
    }

    public static o h(o oVar, C14340e c14340e, C14340e c14340e2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            c14340e = oVar.f97658a;
        }
        if ((i10 & 2) != 0) {
            c14340e2 = oVar.f97659b;
        }
        return oVar.g(c14340e, c14340e2);
    }

    public static boolean m(o oVar, float f10, float f11, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            f11 = 0.0f;
        }
        C14340e s10 = oVar.s();
        if (Math.abs(s10.z() - f10) < f11 && Math.abs(s10.B() - f10) < f11) {
            C14340e t10 = oVar.t();
            if (Math.abs(t10.z() - f10) < f11 && Math.abs(t10.B() - f10) < f11) {
                return true;
            }
        }
        return false;
    }

    public static boolean n(o oVar, o m10, float f10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            f10 = 0.0f;
        }
        M.p(m10, "m");
        C14340e s10 = oVar.s();
        C14340e s11 = m10.s();
        if (Math.abs(s10.z() - s11.z()) < f10 && Math.abs(s10.B() - s11.B()) < f10) {
            C14340e t10 = oVar.t();
            C14340e t11 = m10.t();
            if (Math.abs(t10.z() - t11.z()) < f10 && Math.abs(t10.B() - t11.B()) < f10) {
                return true;
            }
        }
        return false;
    }

    public final void A(int i10, @NotNull C14340e v10) {
        M.p(v10, "v");
        C14340e q10 = q(i10);
        q10.S(v10.z());
        q10.U(v10.B());
    }

    public final void B(@NotNull C14340e c14340e) {
        M.p(c14340e, "<set-?>");
        this.f97658a = c14340e;
    }

    public final void C(@NotNull C14340e c14340e) {
        M.p(c14340e, "<set-?>");
        this.f97659b = c14340e;
    }

    @NotNull
    public final C14340e D(@NotNull C14340e v10) {
        M.p(v10, "v");
        return new C14340e((this.f97658a.z() * v10.z()) + (this.f97659b.z() * v10.B()), (this.f97658a.B() * v10.z()) + (this.f97659b.B() * v10.B()));
    }

    @NotNull
    public final o E(float f10) {
        C14340e c14340e = this.f97658a;
        C14340e c14340e2 = new C14340e(c14340e.z() * f10, c14340e.B() * f10);
        C14340e c14340e3 = this.f97659b;
        return new o(c14340e2, new C14340e(c14340e3.z() * f10, c14340e3.B() * f10));
    }

    @NotNull
    public final o F(@NotNull o m10) {
        M.p(m10, "m");
        return new o(new C14340e((this.f97658a.z() * m10.f97658a.z()) + (this.f97659b.z() * m10.f97658a.B()), (this.f97658a.B() * m10.f97658a.z()) + (this.f97659b.B() * m10.f97658a.B())), new C14340e((this.f97658a.z() * m10.f97659b.z()) + (this.f97659b.z() * m10.f97659b.B()), (this.f97658a.B() * m10.f97659b.z()) + (this.f97659b.B() * m10.f97659b.B())));
    }

    @NotNull
    public final float[] G() {
        return new float[]{this.f97658a.z(), this.f97659b.z(), this.f97658a.B(), this.f97659b.B()};
    }

    @NotNull
    public final o H() {
        return new o(this.f97658a.Z(), this.f97659b.Z());
    }

    @NotNull
    public final o a(float f10, float f11) {
        C14340e s10 = s();
        C14340e c14340e = new C14340e(Math.abs(s10.z() - f10) < f11 ? 0.0f : Float.compare(r3, f10), Math.abs(s10.B() - f10) < f11 ? 0.0f : Float.compare(r1, f10));
        C14340e t10 = t();
        return new o(c14340e, new C14340e(Math.abs(t10.z() - f10) < f11 ? 0.0f : Float.compare(r4, f10), Math.abs(t10.B() - f10) >= f11 ? Float.compare(r1, f10) : 0.0f));
    }

    @NotNull
    public final o b(@NotNull o m10, float f10) {
        M.p(m10, "m");
        C14340e s10 = s();
        C14340e s11 = m10.s();
        C14340e c14340e = new C14340e(Math.abs(s10.z() - s11.z()) < f10 ? 0.0f : Float.compare(r4, r5), Math.abs(s10.B() - s11.B()) < f10 ? 0.0f : Float.compare(r1, r2));
        C14340e t10 = t();
        C14340e t11 = m10.t();
        return new o(c14340e, new C14340e(Math.abs(t10.z() - t11.z()) < f10 ? 0.0f : Float.compare(r4, r5), Math.abs(t10.B() - t11.B()) >= f10 ? Float.compare(r1, r9) : 0.0f));
    }

    @NotNull
    public final C14340e e() {
        return this.f97658a;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        return M.g(this.f97658a, oVar.f97658a) && M.g(this.f97659b, oVar.f97659b);
    }

    @NotNull
    public final C14340e f() {
        return this.f97659b;
    }

    @NotNull
    public final o g(@NotNull C14340e x10, @NotNull C14340e y10) {
        M.p(x10, "x");
        M.p(y10, "y");
        return new o(x10, y10);
    }

    public int hashCode() {
        return (this.f97658a.hashCode() * 31) + this.f97659b.hashCode();
    }

    @NotNull
    public final o i() {
        C14340e c14340e = this.f97658a;
        this.f97658a = c14340e.i();
        C14340e c14340e2 = this.f97659b;
        this.f97659b = c14340e2.i();
        return new o(c14340e, c14340e2);
    }

    @NotNull
    public final o j(float f10) {
        C14340e c14340e = this.f97658a;
        C14340e c14340e2 = new C14340e(c14340e.z() / f10, c14340e.B() / f10);
        C14340e c14340e3 = this.f97659b;
        return new o(c14340e2, new C14340e(c14340e3.z() / f10, c14340e3.B() / f10));
    }

    public final boolean k(float f10, float f11) {
        C14340e s10 = s();
        if (Math.abs(s10.z() - f10) < f11 && Math.abs(s10.B() - f10) < f11) {
            C14340e t10 = t();
            if (Math.abs(t10.z() - f10) < f11 && Math.abs(t10.B() - f10) < f11) {
                return true;
            }
        }
        return false;
    }

    public final boolean l(@NotNull o m10, float f10) {
        M.p(m10, "m");
        C14340e s10 = s();
        C14340e s11 = m10.s();
        if (Math.abs(s10.z() - s11.z()) < f10 && Math.abs(s10.B() - s11.B()) < f10) {
            C14340e t10 = t();
            C14340e t11 = m10.t();
            if (Math.abs(t10.z() - t11.z()) < f10 && Math.abs(t10.B() - t11.B()) < f10) {
                return true;
            }
        }
        return false;
    }

    public final float o(int i10, int i11) {
        return q(i10).p(i11);
    }

    public final float p(@NotNull r column, int i10) {
        M.p(column, "column");
        return r(column).p(i10);
    }

    @NotNull
    public final C14340e q(int i10) {
        if (i10 == 0) {
            return this.f97658a;
        }
        if (i10 == 1) {
            return this.f97659b;
        }
        throw new IllegalArgumentException("column must be in 0..1");
    }

    @NotNull
    public final C14340e r(@NotNull r column) {
        M.p(column, "column");
        int i10 = b.f97660a[column.ordinal()];
        if (i10 == 1) {
            return this.f97658a;
        }
        if (i10 == 2) {
            return this.f97659b;
        }
        throw new IllegalArgumentException("column must be X or Y");
    }

    @NotNull
    public final C14340e s() {
        return this.f97658a;
    }

    @NotNull
    public final C14340e t() {
        return this.f97659b;
    }

    @NotNull
    public String toString() {
        return C3610D.v("\n            |" + this.f97658a.z() + " " + this.f97659b.z() + "|\n            |" + this.f97658a.B() + " " + this.f97659b.B() + "|\n            ");
    }

    @NotNull
    public final o u() {
        C14340e c14340e = this.f97658a;
        this.f97658a = c14340e.C();
        C14340e c14340e2 = this.f97659b;
        this.f97659b = c14340e2.C();
        return new o(c14340e, c14340e2);
    }

    public final float v(int i10, int i11) {
        return q(i11 - 1).p(i10 - 1);
    }

    public final void w(int i10, int i11, float f10) {
        z(i11 - 1, i10 - 1, f10);
    }

    @NotNull
    public final o x(float f10) {
        C14340e c14340e = this.f97658a;
        C14340e c14340e2 = new C14340e(c14340e.z() - f10, c14340e.B() - f10);
        C14340e c14340e3 = this.f97659b;
        return new o(c14340e2, new C14340e(c14340e3.z() - f10, c14340e3.B() - f10));
    }

    @NotNull
    public final o y(float f10) {
        C14340e c14340e = this.f97658a;
        C14340e c14340e2 = new C14340e(c14340e.z() + f10, c14340e.B() + f10);
        C14340e c14340e3 = this.f97659b;
        return new o(c14340e2, new C14340e(c14340e3.z() + f10, c14340e3.B() + f10));
    }

    public final void z(int i10, int i11, float f10) {
        q(i10).I(i11, f10);
    }

    public o(@NotNull C14340e x10, @NotNull C14340e y10) {
        M.p(x10, "x");
        M.p(y10, "y");
        this.f97658a = x10;
        this.f97659b = y10;
    }

    public o(C14340e c14340e, C14340e c14340e2, int i10, C14026x c14026x) {
        this((i10 & 1) != 0 ? new C14340e(1.0f, 0.0f, 2, null) : c14340e, (i10 & 2) != 0 ? new C14340e(0.0f, 1.0f, 1, null) : c14340e2);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public o(@NotNull o m10) {
        this(C14340e.h(m10.f97658a, 0.0f, 0.0f, 3, null), C14340e.h(m10.f97659b, 0.0f, 0.0f, 3, null));
        M.p(m10, "m");
    }
}
