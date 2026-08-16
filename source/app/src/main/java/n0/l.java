package n0;

import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class l {

    public short f97634a;

    public short f97635b;

    public short f97636c;

    public short f97637d;

    public class a {

        public static final int[] f97638a;

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
            f97638a = iArr;
        }
    }

    public l(j jVar, short s10, short s11, C14026x c14026x) {
        this(jVar, s10, s11);
    }

    public static l f(l lVar, short s10, short s11, short s12, short s13, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            s10 = lVar.f97634a;
        }
        if ((i10 & 2) != 0) {
            s11 = lVar.f97635b;
        }
        if ((i10 & 4) != 0) {
            s12 = lVar.f97636c;
        }
        if ((i10 & 8) != 0) {
            s13 = lVar.f97637d;
        }
        return lVar.e(s10, s11, s12, s13);
    }

    @NotNull
    public final k A() {
        return new k(I(), M(), N(), (C14026x) null);
    }

    public final void A0(short s10) {
        this.f97636c = s10;
    }

    @NotNull
    public final l B() {
        return new l(I(), M(), N(), H(), (C14026x) null);
    }

    @NotNull
    public final l B0(@NotNull j v10) {
        M.p(v10, "v");
        return new l(C14344i.P(I(), v10.r()), C14344i.P(M(), v10.t()), N(), H(), (C14026x) null);
    }

    public final short C() {
        return I();
    }

    @NotNull
    public final l C0(@NotNull k v10) {
        M.p(v10, "v");
        return new l(C14344i.P(I(), v10.z()), C14344i.P(M(), v10.C()), C14344i.P(N(), v10.D()), H(), (C14026x) null);
    }

    @NotNull
    public final j D() {
        return new j(I(), M(), null);
    }

    @NotNull
    public final l D0(@NotNull l v10) {
        M.p(v10, "v");
        return new l(C14344i.P(I(), v10.I()), C14344i.P(M(), v10.M()), C14344i.P(N(), v10.N()), C14344i.P(H(), v10.H()), (C14026x) null);
    }

    @NotNull
    public final k E() {
        return new k(I(), M(), N(), (C14026x) null);
    }

    @NotNull
    public final l E0(short s10) {
        return new l(C14344i.P(I(), s10), C14344i.P(M(), s10), C14344i.P(N(), s10), C14344i.P(H(), s10), (C14026x) null);
    }

    @NotNull
    public final l F() {
        return new l(I(), M(), N(), H(), (C14026x) null);
    }

    @NotNull
    public final float[] F0() {
        return new float[]{C14344i.T(this.f97634a), C14344i.T(this.f97635b), C14344i.T(this.f97636c), C14344i.T(this.f97637d)};
    }

    public final short G() {
        return M();
    }

    @NotNull
    public final l G0(@NotNull Mf.l<? super C14344i, C14344i> block) {
        M.p(block, "block");
        v0(block.invoke(C14344i.m(I())).b0());
        z0(block.invoke(C14344i.m(M())).b0());
        A0(block.invoke(C14344i.m(N())).b0());
        u0(block.invoke(C14344i.m(H())).b0());
        return this;
    }

    public final short H() {
        return this.f97637d;
    }

    @NotNull
    public final l H0() {
        return new l(C14344i.Z(this.f97634a), C14344i.Z(this.f97635b), C14344i.Z(this.f97636c), C14344i.Z(this.f97637d), (C14026x) null);
    }

    public final short I() {
        return this.f97634a;
    }

    @NotNull
    public final j J() {
        return new j(I(), M(), null);
    }

    @NotNull
    public final k K() {
        return new k(I(), M(), N(), (C14026x) null);
    }

    @NotNull
    public final l L() {
        return new l(I(), M(), N(), H(), (C14026x) null);
    }

    public final short M() {
        return this.f97635b;
    }

    public final short N() {
        return this.f97636c;
    }

    @NotNull
    public final l O() {
        short s10 = this.f97634a;
        this.f97634a = C14344i.C(s10);
        short s11 = this.f97635b;
        this.f97635b = C14344i.C(s11);
        short s12 = this.f97636c;
        this.f97636c = C14344i.C(s12);
        short s13 = this.f97637d;
        this.f97637d = C14344i.C(s13);
        return new l(s10, s11, s12, s13, (C14026x) null);
    }

    public final short P(int i10) {
        return r(i10 - 1);
    }

    @NotNull
    public final l Q(@NotNull j v10) {
        M.p(v10, "v");
        return new l(C14344i.I(I(), v10.r()), C14344i.I(M(), v10.t()), N(), H(), (C14026x) null);
    }

    @NotNull
    public final l R(@NotNull k v10) {
        M.p(v10, "v");
        return new l(C14344i.I(I(), v10.z()), C14344i.I(M(), v10.C()), C14344i.I(N(), v10.D()), H(), (C14026x) null);
    }

    @NotNull
    public final l S(@NotNull l v10) {
        M.p(v10, "v");
        return new l(C14344i.I(I(), v10.I()), C14344i.I(M(), v10.M()), C14344i.I(N(), v10.N()), C14344i.I(H(), v10.H()), (C14026x) null);
    }

    @NotNull
    public final l T(short s10) {
        return new l(C14344i.I(I(), s10), C14344i.I(M(), s10), C14344i.I(N(), s10), C14344i.I(H(), s10), (C14026x) null);
    }

    @NotNull
    public final l U(@NotNull j v10) {
        M.p(v10, "v");
        return new l(C14344i.M(I(), v10.r()), C14344i.M(M(), v10.t()), N(), H(), (C14026x) null);
    }

    @NotNull
    public final l V(@NotNull k v10) {
        M.p(v10, "v");
        return new l(C14344i.M(I(), v10.z()), C14344i.M(M(), v10.C()), C14344i.M(N(), v10.D()), H(), (C14026x) null);
    }

    @NotNull
    public final l W(@NotNull l v10) {
        M.p(v10, "v");
        return new l(C14344i.M(I(), v10.I()), C14344i.M(M(), v10.M()), C14344i.M(N(), v10.N()), C14344i.M(H(), v10.H()), (C14026x) null);
    }

    @NotNull
    public final l X(short s10) {
        return new l(C14344i.M(I(), s10), C14344i.M(M(), s10), C14344i.M(N(), s10), C14344i.M(H(), s10), (C14026x) null);
    }

    public final void Y(int i10, short s10) {
        if (i10 == 0) {
            this.f97634a = s10;
            return;
        }
        if (i10 == 1) {
            this.f97635b = s10;
        } else if (i10 == 2) {
            this.f97636c = s10;
        } else {
            if (i10 != 3) {
                throw new IllegalArgumentException("index must be in 0..3");
            }
            this.f97637d = s10;
        }
    }

    public final void Z(@NotNull H index, short s10) {
        M.p(index, "index");
        switch (a.f97638a[index.ordinal()]) {
            case 1:
            case 2:
            case 3:
                this.f97634a = s10;
                return;
            case 4:
            case 5:
            case 6:
                this.f97635b = s10;
                return;
            case 7:
            case 8:
            case 9:
                this.f97636c = s10;
                return;
            case 10:
            case 11:
            case 12:
                this.f97637d = s10;
                return;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    public final short a() {
        return this.f97634a;
    }

    public final void a0(int i10, int i11, short s10) {
        Y(i10, s10);
        Y(i11, s10);
    }

    public final short b() {
        return this.f97635b;
    }

    public final void b0(@NotNull H index1, @NotNull H index2, short s10) {
        M.p(index1, "index1");
        M.p(index2, "index2");
        Z(index1, s10);
        Z(index2, s10);
    }

    public final short c() {
        return this.f97636c;
    }

    public final void c0(int i10, int i11, int i12, int i13, short s10) {
        Y(i10, s10);
        Y(i11, s10);
        Y(i12, s10);
        Y(i13, s10);
    }

    public final short d() {
        return this.f97637d;
    }

    public final void d0(@NotNull H index1, @NotNull H index2, @NotNull H index3, @NotNull H index4, short s10) {
        M.p(index1, "index1");
        M.p(index2, "index2");
        M.p(index3, "index3");
        M.p(index4, "index4");
        Z(index1, s10);
        Z(index2, s10);
        Z(index3, s10);
        Z(index4, s10);
    }

    @NotNull
    public final l e(short s10, short s11, short s12, short s13) {
        return new l(s10, s11, s12, s13, (C14026x) null);
    }

    public final void e0(int i10, int i11, int i12, short s10) {
        Y(i10, s10);
        Y(i11, s10);
        Y(i12, s10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        return C14344i.v(this.f97634a, lVar.f97634a) && C14344i.v(this.f97635b, lVar.f97635b) && C14344i.v(this.f97636c, lVar.f97636c) && C14344i.v(this.f97637d, lVar.f97637d);
    }

    public final void f0(@NotNull H index1, @NotNull H index2, @NotNull H index3, short s10) {
        M.p(index1, "index1");
        M.p(index2, "index2");
        M.p(index3, "index3");
        Z(index1, s10);
        Z(index2, s10);
        Z(index3, s10);
    }

    @NotNull
    public final l g() {
        short s10 = this.f97634a;
        this.f97634a = C14344i.s(s10);
        short s11 = this.f97635b;
        this.f97635b = C14344i.s(s11);
        short s12 = this.f97636c;
        this.f97636c = C14344i.s(s12);
        short s13 = this.f97637d;
        this.f97637d = C14344i.s(s13);
        return new l(s10, s11, s12, s13, (C14026x) null);
    }

    public final void g0(short s10) {
        u0(s10);
    }

    @NotNull
    public final l h(@NotNull j v10) {
        M.p(v10, "v");
        return new l(C14344i.t(I(), v10.r()), C14344i.t(M(), v10.t()), N(), H(), (C14026x) null);
    }

    public final void h0(short s10) {
        A0(s10);
    }

    public int hashCode() {
        return (((((C14344i.B(this.f97634a) * 31) + C14344i.B(this.f97635b)) * 31) + C14344i.B(this.f97636c)) * 31) + C14344i.B(this.f97637d);
    }

    @NotNull
    public final l i(@NotNull k v10) {
        M.p(v10, "v");
        return new l(C14344i.t(I(), v10.z()), C14344i.t(M(), v10.C()), C14344i.t(N(), v10.D()), H(), (C14026x) null);
    }

    public final void i0(short s10) {
        z0(s10);
    }

    @NotNull
    public final l j(@NotNull l v10) {
        M.p(v10, "v");
        return new l(C14344i.t(I(), v10.I()), C14344i.t(M(), v10.M()), C14344i.t(N(), v10.N()), C14344i.t(H(), v10.H()), (C14026x) null);
    }

    public final void j0(short s10) {
        A0(s10);
    }

    @NotNull
    public final l k(short s10) {
        return new l(C14344i.t(I(), s10), C14344i.t(M(), s10), C14344i.t(N(), s10), C14344i.t(H(), s10), (C14026x) null);
    }

    public final void k0(short s10) {
        u0(s10);
    }

    @NotNull
    public final j l(int i10, int i11) {
        return new j(r(i10), r(i11), null);
    }

    public final void l0(short s10) {
        v0(s10);
    }

    @NotNull
    public final j m(@NotNull H index1, @NotNull H index2) {
        M.p(index1, "index1");
        M.p(index2, "index2");
        return new j(s(index1), s(index2), null);
    }

    public final void m0(@NotNull j value) {
        M.p(value, "value");
        v0(value.r());
        z0(value.t());
    }

    @NotNull
    public final k n(int i10, int i11, int i12) {
        return new k(r(i10), r(i11), r(i12), (C14026x) null);
    }

    public final void n0(@NotNull k value) {
        M.p(value, "value");
        v0(value.z());
        z0(value.C());
        A0(value.D());
    }

    @NotNull
    public final k o(@NotNull H index1, @NotNull H index2, @NotNull H index3) {
        M.p(index1, "index1");
        M.p(index2, "index2");
        M.p(index3, "index3");
        return new k(s(index1), s(index2), s(index3), (C14026x) null);
    }

    public final void o0(@NotNull l value) {
        M.p(value, "value");
        v0(value.I());
        z0(value.M());
        A0(value.N());
        u0(value.H());
    }

    @NotNull
    public final l p(int i10, int i11, int i12, int i13) {
        return new l(r(i10), r(i11), r(i12), r(i13), (C14026x) null);
    }

    public final void p0(short s10) {
        v0(s10);
    }

    @NotNull
    public final l q(@NotNull H index1, @NotNull H index2, @NotNull H index3, @NotNull H index4) {
        M.p(index1, "index1");
        M.p(index2, "index2");
        M.p(index3, "index3");
        M.p(index4, "index4");
        return new l(s(index1), s(index2), s(index3), s(index4), (C14026x) null);
    }

    public final void q0(@NotNull j value) {
        M.p(value, "value");
        v0(value.r());
        z0(value.t());
    }

    public final short r(int i10) {
        if (i10 == 0) {
            return this.f97634a;
        }
        if (i10 == 1) {
            return this.f97635b;
        }
        if (i10 == 2) {
            return this.f97636c;
        }
        if (i10 == 3) {
            return this.f97637d;
        }
        throw new IllegalArgumentException("index must be in 0..3");
    }

    public final void r0(@NotNull k value) {
        M.p(value, "value");
        v0(value.z());
        z0(value.C());
        A0(value.D());
    }

    public final short s(@NotNull H index) {
        M.p(index, "index");
        switch (a.f97638a[index.ordinal()]) {
            case 1:
            case 2:
            case 3:
                return this.f97634a;
            case 4:
            case 5:
            case 6:
                return this.f97635b;
            case 7:
            case 8:
            case 9:
                return this.f97636c;
            case 10:
            case 11:
            case 12:
                return this.f97637d;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    public final void s0(@NotNull l value) {
        M.p(value, "value");
        v0(value.I());
        z0(value.M());
        A0(value.N());
        u0(value.H());
    }

    public final short t() {
        return H();
    }

    public final void t0(short s10) {
        z0(s10);
    }

    @NotNull
    public String toString() {
        return "Half4(x=" + C14344i.Y(this.f97634a) + ", y=" + C14344i.Y(this.f97635b) + ", z=" + C14344i.Y(this.f97636c) + ", w=" + C14344i.Y(this.f97637d) + ")";
    }

    public final short u() {
        return N();
    }

    public final void u0(short s10) {
        this.f97637d = s10;
    }

    public final short v() {
        return M();
    }

    public final void v0(short s10) {
        this.f97634a = s10;
    }

    public final short w() {
        return N();
    }

    public final void w0(@NotNull j value) {
        M.p(value, "value");
        v0(value.r());
        z0(value.t());
    }

    public final short x() {
        return H();
    }

    public final void x0(@NotNull k value) {
        M.p(value, "value");
        v0(value.z());
        z0(value.C());
        A0(value.D());
    }

    public final short y() {
        return I();
    }

    public final void y0(@NotNull l value) {
        M.p(value, "value");
        v0(value.I());
        z0(value.M());
        A0(value.N());
        u0(value.H());
    }

    @NotNull
    public final j z() {
        return new j(I(), M(), null);
    }

    public final void z0(short s10) {
        this.f97635b = s10;
    }

    public l(k kVar, short s10, C14026x c14026x) {
        this(kVar, s10);
    }

    public l(short s10, C14026x c14026x) {
        this(s10);
    }

    public l(short s10, short s11, short s12, short s13, C14026x c14026x) {
        this(s10, s11, s12, s13);
    }

    public l(short s10, short s11, short s12, short s13) {
        this.f97634a = s10;
        this.f97635b = s11;
        this.f97636c = s12;
        this.f97637d = s13;
    }

    public l(short s10, short s11, short s12, short s13, int i10, C14026x c14026x) {
        this((i10 & 1) != 0 ? C14344i.f97612c.k() : s10, (i10 & 2) != 0 ? C14344i.f97612c.k() : s11, (i10 & 4) != 0 ? C14344i.f97612c.k() : s12, (i10 & 8) != 0 ? C14344i.f97612c.k() : s13, (C14026x) null);
    }

    public l(short s10) {
        this(s10, s10, s10, s10, (C14026x) null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public l(j v10, short s10, short s11) {
        this(v10.r(), v10.t(), s10, s11, (C14026x) null);
        M.p(v10, "v");
    }

    public l(j jVar, short s10, short s11, int i10, C14026x c14026x) {
        this(jVar, (i10 & 2) != 0 ? C14344i.f97612c.k() : s10, (i10 & 4) != 0 ? C14344i.f97612c.k() : s11, (C14026x) null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public l(k v10, short s10) {
        this(v10.z(), v10.C(), v10.D(), s10, (C14026x) null);
        M.p(v10, "v");
    }

    public l(k kVar, short s10, int i10, C14026x c14026x) {
        this(kVar, (i10 & 2) != 0 ? C14344i.f97612c.k() : s10, (C14026x) null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public l(@NotNull l v10) {
        this(v10.f97634a, v10.f97635b, v10.f97636c, v10.f97637d, (C14026x) null);
        M.p(v10, "v");
    }
}
