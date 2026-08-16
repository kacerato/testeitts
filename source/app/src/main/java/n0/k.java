package n0;

import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class k {

    public short f97630a;

    public short f97631b;

    public short f97632c;

    public class a {

        public static final int[] f97633a;

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
            f97633a = iArr;
        }
    }

    public k(j jVar, short s10, C14026x c14026x) {
        this(jVar, s10);
    }

    public static k e(k kVar, short s10, short s11, short s12, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            s10 = kVar.f97630a;
        }
        if ((i10 & 2) != 0) {
            s11 = kVar.f97631b;
        }
        if ((i10 & 4) != 0) {
            s12 = kVar.f97632c;
        }
        return kVar.d(s10, s11, s12);
    }

    @NotNull
    public final j A() {
        return new j(z(), C(), null);
    }

    @NotNull
    public final k B() {
        return new k(z(), C(), D(), (C14026x) null);
    }

    public final short C() {
        return this.f97631b;
    }

    public final short D() {
        return this.f97632c;
    }

    @NotNull
    public final k E() {
        short s10 = this.f97630a;
        this.f97630a = C14344i.C(s10);
        short s11 = this.f97631b;
        this.f97631b = C14344i.C(s11);
        short s12 = this.f97632c;
        this.f97632c = C14344i.C(s12);
        return new k(s10, s11, s12, (C14026x) null);
    }

    public final short F(int i10) {
        return n(i10 - 1);
    }

    @NotNull
    public final k G(@NotNull j v10) {
        M.p(v10, "v");
        return new k(C14344i.I(z(), v10.r()), C14344i.I(C(), v10.t()), D(), (C14026x) null);
    }

    @NotNull
    public final k H(@NotNull k v10) {
        M.p(v10, "v");
        return new k(C14344i.I(z(), v10.z()), C14344i.I(C(), v10.C()), C14344i.I(D(), v10.D()), (C14026x) null);
    }

    @NotNull
    public final k I(short s10) {
        return new k(C14344i.I(z(), s10), C14344i.I(C(), s10), C14344i.I(D(), s10), (C14026x) null);
    }

    @NotNull
    public final k J(@NotNull j v10) {
        M.p(v10, "v");
        return new k(C14344i.M(z(), v10.r()), C14344i.M(C(), v10.t()), D(), (C14026x) null);
    }

    @NotNull
    public final k K(@NotNull k v10) {
        M.p(v10, "v");
        return new k(C14344i.M(z(), v10.z()), C14344i.M(C(), v10.C()), C14344i.M(D(), v10.D()), (C14026x) null);
    }

    @NotNull
    public final k L(short s10) {
        return new k(C14344i.M(z(), s10), C14344i.M(C(), s10), C14344i.M(D(), s10), (C14026x) null);
    }

    public final void M(int i10, short s10) {
        if (i10 == 0) {
            this.f97630a = s10;
        } else if (i10 == 1) {
            this.f97631b = s10;
        } else {
            if (i10 != 2) {
                throw new IllegalArgumentException("index must be in 0..2");
            }
            this.f97632c = s10;
        }
    }

    public final void N(@NotNull H index, short s10) {
        M.p(index, "index");
        switch (a.f97633a[index.ordinal()]) {
            case 1:
            case 2:
            case 3:
                this.f97630a = s10;
                return;
            case 4:
            case 5:
            case 6:
                this.f97631b = s10;
                return;
            case 7:
            case 8:
            case 9:
                this.f97632c = s10;
                return;
            default:
                throw new IllegalArgumentException("index must be X, Y, Z, R, G, B, S, T or P");
        }
    }

    public final void O(int i10, int i11, short s10) {
        M(i10, s10);
        M(i11, s10);
    }

    public final void P(@NotNull H index1, @NotNull H index2, short s10) {
        M.p(index1, "index1");
        M.p(index2, "index2");
        N(index1, s10);
        N(index2, s10);
    }

    public final void Q(int i10, int i11, int i12, short s10) {
        M(i10, s10);
        M(i11, s10);
        M(i12, s10);
    }

    public final void R(@NotNull H index1, @NotNull H index2, @NotNull H index3, short s10) {
        M.p(index1, "index1");
        M.p(index2, "index2");
        M.p(index3, "index3");
        N(index1, s10);
        N(index2, s10);
        N(index3, s10);
    }

    public final void S(short s10) {
        g0(s10);
    }

    public final void T(short s10) {
        f0(s10);
    }

    public final void U(short s10) {
        g0(s10);
    }

    public final void V(short s10) {
        c0(s10);
    }

    public final void W(@NotNull j value) {
        M.p(value, "value");
        c0(value.r());
        f0(value.t());
    }

    public final void X(@NotNull k value) {
        M.p(value, "value");
        c0(value.z());
        f0(value.C());
        g0(value.D());
    }

    public final void Y(short s10) {
        c0(s10);
    }

    public final void Z(@NotNull j value) {
        M.p(value, "value");
        c0(value.r());
        f0(value.t());
    }

    public final short a() {
        return this.f97630a;
    }

    public final void a0(@NotNull k value) {
        M.p(value, "value");
        c0(value.z());
        f0(value.C());
        g0(value.D());
    }

    public final short b() {
        return this.f97631b;
    }

    public final void b0(short s10) {
        f0(s10);
    }

    public final short c() {
        return this.f97632c;
    }

    public final void c0(short s10) {
        this.f97630a = s10;
    }

    @NotNull
    public final k d(short s10, short s11, short s12) {
        return new k(s10, s11, s12, (C14026x) null);
    }

    public final void d0(@NotNull j value) {
        M.p(value, "value");
        c0(value.r());
        f0(value.t());
    }

    public final void e0(@NotNull k value) {
        M.p(value, "value");
        c0(value.z());
        f0(value.C());
        g0(value.D());
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        return C14344i.v(this.f97630a, kVar.f97630a) && C14344i.v(this.f97631b, kVar.f97631b) && C14344i.v(this.f97632c, kVar.f97632c);
    }

    @NotNull
    public final k f() {
        short s10 = this.f97630a;
        this.f97630a = C14344i.s(s10);
        short s11 = this.f97631b;
        this.f97631b = C14344i.s(s11);
        short s12 = this.f97632c;
        this.f97632c = C14344i.s(s12);
        return new k(s10, s11, s12, (C14026x) null);
    }

    public final void f0(short s10) {
        this.f97631b = s10;
    }

    @NotNull
    public final k g(@NotNull j v10) {
        M.p(v10, "v");
        return new k(C14344i.t(z(), v10.r()), C14344i.t(C(), v10.t()), D(), (C14026x) null);
    }

    public final void g0(short s10) {
        this.f97632c = s10;
    }

    @NotNull
    public final k h(@NotNull k v10) {
        M.p(v10, "v");
        return new k(C14344i.t(z(), v10.z()), C14344i.t(C(), v10.C()), C14344i.t(D(), v10.D()), (C14026x) null);
    }

    @NotNull
    public final k h0(@NotNull j v10) {
        M.p(v10, "v");
        return new k(C14344i.P(z(), v10.r()), C14344i.P(C(), v10.t()), D(), (C14026x) null);
    }

    public int hashCode() {
        return (((C14344i.B(this.f97630a) * 31) + C14344i.B(this.f97631b)) * 31) + C14344i.B(this.f97632c);
    }

    @NotNull
    public final k i(short s10) {
        return new k(C14344i.t(z(), s10), C14344i.t(C(), s10), C14344i.t(D(), s10), (C14026x) null);
    }

    @NotNull
    public final k i0(@NotNull k v10) {
        M.p(v10, "v");
        return new k(C14344i.P(z(), v10.z()), C14344i.P(C(), v10.C()), C14344i.P(D(), v10.D()), (C14026x) null);
    }

    @NotNull
    public final j j(int i10, int i11) {
        return new j(n(i10), n(i11), null);
    }

    @NotNull
    public final k j0(short s10) {
        return new k(C14344i.P(z(), s10), C14344i.P(C(), s10), C14344i.P(D(), s10), (C14026x) null);
    }

    @NotNull
    public final j k(@NotNull H index1, @NotNull H index2) {
        M.p(index1, "index1");
        M.p(index2, "index2");
        return new j(o(index1), o(index2), null);
    }

    @NotNull
    public final float[] k0() {
        return new float[]{C14344i.T(this.f97630a), C14344i.T(this.f97631b), C14344i.T(this.f97632c)};
    }

    @NotNull
    public final k l(int i10, int i11, int i12) {
        return new k(n(i10), n(i11), n(i12), (C14026x) null);
    }

    @NotNull
    public final k l0(@NotNull Mf.l<? super C14344i, C14344i> block) {
        M.p(block, "block");
        c0(block.invoke(C14344i.m(z())).b0());
        f0(block.invoke(C14344i.m(C())).b0());
        g0(block.invoke(C14344i.m(D())).b0());
        return this;
    }

    @NotNull
    public final k m(@NotNull H index1, @NotNull H index2, @NotNull H index3) {
        M.p(index1, "index1");
        M.p(index2, "index2");
        M.p(index3, "index3");
        return new k(o(index1), o(index2), o(index3), (C14026x) null);
    }

    @NotNull
    public final k m0() {
        return new k(C14344i.Z(this.f97630a), C14344i.Z(this.f97631b), C14344i.Z(this.f97632c), (C14026x) null);
    }

    public final short n(int i10) {
        if (i10 == 0) {
            return this.f97630a;
        }
        if (i10 == 1) {
            return this.f97631b;
        }
        if (i10 == 2) {
            return this.f97632c;
        }
        throw new IllegalArgumentException("index must be in 0..2");
    }

    public final short o(@NotNull H index) {
        M.p(index, "index");
        switch (a.f97633a[index.ordinal()]) {
            case 1:
            case 2:
            case 3:
                return this.f97630a;
            case 4:
            case 5:
            case 6:
                return this.f97631b;
            case 7:
            case 8:
            case 9:
                return this.f97632c;
            default:
                throw new IllegalArgumentException("index must be X, Y, Z, R, G, B, S, T or P");
        }
    }

    public final short p() {
        return D();
    }

    public final short q() {
        return C();
    }

    public final short r() {
        return D();
    }

    public final short s() {
        return z();
    }

    @NotNull
    public final j t() {
        return new j(z(), C(), null);
    }

    @NotNull
    public String toString() {
        return "Half3(x=" + C14344i.Y(this.f97630a) + ", y=" + C14344i.Y(this.f97631b) + ", z=" + C14344i.Y(this.f97632c) + ")";
    }

    @NotNull
    public final k u() {
        return new k(z(), C(), D(), (C14026x) null);
    }

    public final short v() {
        return z();
    }

    @NotNull
    public final j w() {
        return new j(z(), C(), null);
    }

    @NotNull
    public final k x() {
        return new k(z(), C(), D(), (C14026x) null);
    }

    public final short y() {
        return C();
    }

    public final short z() {
        return this.f97630a;
    }

    public k(short s10, C14026x c14026x) {
        this(s10);
    }

    public k(short s10, short s11, short s12, C14026x c14026x) {
        this(s10, s11, s12);
    }

    public k(short s10, short s11, short s12) {
        this.f97630a = s10;
        this.f97631b = s11;
        this.f97632c = s12;
    }

    public k(short s10, short s11, short s12, int i10, C14026x c14026x) {
        this((i10 & 1) != 0 ? C14344i.f97612c.k() : s10, (i10 & 2) != 0 ? C14344i.f97612c.k() : s11, (i10 & 4) != 0 ? C14344i.f97612c.k() : s12, (C14026x) null);
    }

    public k(short s10) {
        this(s10, s10, s10, (C14026x) null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public k(j v10, short s10) {
        this(v10.r(), v10.t(), s10, (C14026x) null);
        M.p(v10, "v");
    }

    public k(j jVar, short s10, int i10, C14026x c14026x) {
        this(jVar, (i10 & 2) != 0 ? C14344i.f97612c.k() : s10, (C14026x) null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public k(@NotNull k v10) {
        this(v10.f97630a, v10.f97631b, v10.f97632c, (C14026x) null);
        M.p(v10, "v");
    }
}
