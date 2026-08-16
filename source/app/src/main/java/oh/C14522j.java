package oh;

import java.io.IOException;
import java.math.BigInteger;

public class C14522j extends B {

    public static final T f98898d = new a(C14522j.class, 10);

    public static final C14522j[] f98899e = new C14522j[12];

    public final byte[] f98900b;

    public final int f98901c;

    public class a extends T {
        public a(Class cls, int i10) {
            super(cls, i10);
        }

        @Override
        public B e(C0 c02) {
            return C14522j.E(c02.H(), false);
        }
    }

    public C14522j(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("enumerated must be non-negative");
        }
        this.f98900b = BigInteger.valueOf(i10).toByteArray();
        this.f98901c = 0;
    }

    public static C14522j E(byte[] bArr, boolean z10) {
        if (bArr.length > 1) {
            return new C14522j(bArr, z10);
        }
        if (bArr.length == 0) {
            throw new IllegalArgumentException("ENUMERATED has zero length");
        }
        int i10 = bArr[0] & 255;
        C14522j[] c14522jArr = f98899e;
        if (i10 >= c14522jArr.length) {
            return new C14522j(bArr, z10);
        }
        C14522j c14522j = c14522jArr[i10];
        if (c14522j != null) {
            return c14522j;
        }
        C14522j c14522j2 = new C14522j(bArr, z10);
        c14522jArr[i10] = c14522j2;
        return c14522j2;
    }

    public static C14522j F(Object obj) {
        if (obj == null || (obj instanceof C14522j)) {
            return (C14522j) obj;
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        }
        try {
            return (C14522j) f98898d.c((byte[]) obj);
        } catch (Exception e10) {
            throw new IllegalArgumentException("encoding error in getInstance: " + e10.toString());
        }
    }

    public static C14522j G(M m10, boolean z10) {
        return (C14522j) f98898d.f(m10, z10);
    }

    public BigInteger H() {
        return new BigInteger(this.f98900b);
    }

    public boolean I(int i10) {
        byte[] bArr = this.f98900b;
        int length = bArr.length;
        int i11 = this.f98901c;
        return length - i11 <= 4 && C14539s.N(bArr, i11, -1) == i10;
    }

    public boolean J(BigInteger bigInteger) {
        return bigInteger != null && C14539s.N(this.f98900b, this.f98901c, -1) == bigInteger.intValue() && H().equals(bigInteger);
    }

    public int L() {
        byte[] bArr = this.f98900b;
        int length = bArr.length;
        int i10 = this.f98901c;
        if (length - i10 <= 4) {
            return C14539s.N(bArr, i10, -1);
        }
        throw new ArithmeticException("ASN.1 Enumerated out of int range");
    }

    @Override
    public int hashCode() {
        return org.bouncycastle.util.a.t0(this.f98900b);
    }

    @Override
    public boolean u(B b10) {
        if (b10 instanceof C14522j) {
            return org.bouncycastle.util.a.g(this.f98900b, ((C14522j) b10).f98900b);
        }
        return false;
    }

    @Override
    public void v(C14503A c14503a, boolean z10) throws IOException {
        c14503a.r(z10, 10, this.f98900b);
    }

    @Override
    public boolean x() {
        return false;
    }

    @Override
    public int y(boolean z10) {
        return C14503A.i(z10, this.f98900b.length);
    }

    public C14522j(BigInteger bigInteger) {
        if (bigInteger.signum() < 0) {
            throw new IllegalArgumentException("enumerated must be non-negative");
        }
        this.f98900b = bigInteger.toByteArray();
        this.f98901c = 0;
    }

    public C14522j(byte[] bArr) {
        this(bArr, true);
    }

    public C14522j(byte[] bArr, boolean z10) {
        if (C14539s.P(bArr)) {
            throw new IllegalArgumentException("malformed enumerated");
        }
        if ((bArr[0] & 128) != 0) {
            throw new IllegalArgumentException("enumerated must be non-negative");
        }
        this.f98900b = z10 ? org.bouncycastle.util.a.p(bArr) : bArr;
        this.f98901c = C14539s.S(bArr);
    }
}
