package n0;

import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class j {

    public short f97627a;

    public short f97628b;

    public class a {

        public static final int[] f97629a;

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
            f97629a = iArr;
        }
    }

    public j(short s10, C14026x c14026x) {
        this(s10);
    }

    public static j d(j jVar, short s10, short s11, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            s10 = jVar.f97627a;
        }
        if ((i10 & 2) != 0) {
            s11 = jVar.f97628b;
        }
        return jVar.c(s10, s11);
    }

    public final void A(int i10, short s10) {
        if (i10 == 0) {
            this.f97627a = s10;
        } else {
            if (i10 != 1) {
                throw new IllegalArgumentException("index must be in 0..1");
            }
            this.f97628b = s10;
        }
    }

    public final void B(@NotNull H index, short s10) {
        M.p(index, "index");
        switch (a.f97629a[index.ordinal()]) {
            case 1:
            case 2:
            case 3:
                this.f97627a = s10;
                return;
            case 4:
            case 5:
            case 6:
                this.f97628b = s10;
                return;
            default:
                throw new IllegalArgumentException("index must be X, Y, R, G, S or T");
        }
    }

    public final void C(int i10, int i11, short s10) {
        A(i10, s10);
        A(i11, s10);
    }

    public final void D(@NotNull H index1, @NotNull H index2, short s10) {
        M.p(index1, "index1");
        M.p(index2, "index2");
        B(index1, s10);
        B(index2, s10);
    }

    public final void E(short s10) {
        M(s10);
    }

    public final void F(short s10) {
        K(s10);
    }

    public final void G(@NotNull j value) {
        M.p(value, "value");
        K(value.r());
        M(value.t());
    }

    public final void H(short s10) {
        K(s10);
    }

    public final void I(@NotNull j value) {
        M.p(value, "value");
        K(value.r());
        M(value.t());
    }

    public final void J(short s10) {
        M(s10);
    }

    public final void K(short s10) {
        this.f97627a = s10;
    }

    public final void L(@NotNull j value) {
        M.p(value, "value");
        K(value.r());
        M(value.t());
    }

    public final void M(short s10) {
        this.f97628b = s10;
    }

    @NotNull
    public final j N(@NotNull j v10) {
        M.p(v10, "v");
        return new j(C14344i.P(r(), v10.r()), C14344i.P(t(), v10.t()), null);
    }

    @NotNull
    public final j O(short s10) {
        return new j(C14344i.P(r(), s10), C14344i.P(t(), s10), null);
    }

    @NotNull
    public final float[] P() {
        return new float[]{C14344i.T(this.f97627a), C14344i.T(this.f97628b)};
    }

    @NotNull
    public final j Q(@NotNull Mf.l<? super C14344i, C14344i> block) {
        M.p(block, "block");
        K(block.invoke(C14344i.m(r())).b0());
        M(block.invoke(C14344i.m(t())).b0());
        return this;
    }

    @NotNull
    public final j R() {
        return new j(C14344i.Z(this.f97627a), C14344i.Z(this.f97628b), null);
    }

    public final short a() {
        return this.f97627a;
    }

    public final short b() {
        return this.f97628b;
    }

    @NotNull
    public final j c(short s10, short s11) {
        return new j(s10, s11, null);
    }

    @NotNull
    public final j e() {
        short s10 = this.f97627a;
        this.f97627a = C14344i.s(s10);
        short s11 = this.f97628b;
        this.f97628b = C14344i.s(s11);
        return new j(s10, s11, null);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        return C14344i.v(this.f97627a, jVar.f97627a) && C14344i.v(this.f97628b, jVar.f97628b);
    }

    @NotNull
    public final j f(@NotNull j v10) {
        M.p(v10, "v");
        return new j(C14344i.t(r(), v10.r()), C14344i.t(t(), v10.t()), null);
    }

    @NotNull
    public final j g(short s10) {
        return new j(C14344i.t(r(), s10), C14344i.t(t(), s10), null);
    }

    @NotNull
    public final j h(int i10, int i11) {
        return new j(j(i10), j(i11), null);
    }

    public int hashCode() {
        return (C14344i.B(this.f97627a) * 31) + C14344i.B(this.f97628b);
    }

    @NotNull
    public final j i(@NotNull H index1, @NotNull H index2) {
        M.p(index1, "index1");
        M.p(index2, "index2");
        return new j(k(index1), k(index2), null);
    }

    public final short j(int i10) {
        if (i10 == 0) {
            return this.f97627a;
        }
        if (i10 == 1) {
            return this.f97628b;
        }
        throw new IllegalArgumentException("index must be in 0..1");
    }

    public final short k(@NotNull H index) {
        M.p(index, "index");
        switch (a.f97629a[index.ordinal()]) {
            case 1:
            case 2:
            case 3:
                return this.f97627a;
            case 4:
            case 5:
            case 6:
                return this.f97628b;
            default:
                throw new IllegalArgumentException("index must be X, Y, R, G, S or T");
        }
    }

    public final short l() {
        return t();
    }

    public final short m() {
        return r();
    }

    @NotNull
    public final j n() {
        return new j(r(), t(), null);
    }

    public final short o() {
        return r();
    }

    @NotNull
    public final j p() {
        return new j(r(), t(), null);
    }

    public final short q() {
        return t();
    }

    public final short r() {
        return this.f97627a;
    }

    @NotNull
    public final j s() {
        return new j(r(), t(), null);
    }

    public final short t() {
        return this.f97628b;
    }

    @NotNull
    public String toString() {
        return "Half2(x=" + C14344i.Y(this.f97627a) + ", y=" + C14344i.Y(this.f97628b) + ")";
    }

    @NotNull
    public final j u() {
        short s10 = this.f97627a;
        this.f97627a = C14344i.C(s10);
        short s11 = this.f97628b;
        this.f97628b = C14344i.C(s11);
        return new j(s10, s11, null);
    }

    public final short v(int i10) {
        return j(i10 - 1);
    }

    @NotNull
    public final j w(@NotNull j v10) {
        M.p(v10, "v");
        return new j(C14344i.I(r(), v10.r()), C14344i.I(t(), v10.t()), null);
    }

    @NotNull
    public final j x(short s10) {
        return new j(C14344i.I(r(), s10), C14344i.I(t(), s10), null);
    }

    @NotNull
    public final j y(@NotNull j v10) {
        M.p(v10, "v");
        return new j(C14344i.M(r(), v10.r()), C14344i.M(t(), v10.t()), null);
    }

    @NotNull
    public final j z(short s10) {
        return new j(C14344i.M(r(), s10), C14344i.M(t(), s10), null);
    }

    public j(short s10, short s11, C14026x c14026x) {
        this(s10, s11);
    }

    public j(short s10, short s11) {
        this.f97627a = s10;
        this.f97628b = s11;
    }

    public j(short s10, short s11, int i10, C14026x c14026x) {
        this((i10 & 1) != 0 ? C14344i.f97612c.k() : s10, (i10 & 2) != 0 ? C14344i.f97612c.k() : s11, null);
    }

    public j(short s10) {
        this(s10, s10, null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public j(@NotNull j v10) {
        this(v10.f97627a, v10.f97628b, null);
        M.p(v10, "v");
    }
}
