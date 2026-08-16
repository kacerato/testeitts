package oh;

import java.io.IOException;
import java.math.BigInteger;

public class C14539s extends B {

    public static final T f98977d = new a(C14539s.class, 2);

    public static final int f98978e = -1;

    public static final int f98979f = 255;

    public final byte[] f98980b;

    public final int f98981c;

    public class a extends T {
        public a(Class cls, int i10) {
            super(cls, i10);
        }

        @Override
        public B e(C0 c02) {
            return C14539s.E(c02.H());
        }
    }

    public C14539s(long j10) {
        this.f98980b = BigInteger.valueOf(j10).toByteArray();
        this.f98981c = 0;
    }

    public static C14539s E(byte[] bArr) {
        return new C14539s(bArr, false);
    }

    public static C14539s F(Object obj) {
        if (obj == null || (obj instanceof C14539s)) {
            return (C14539s) obj;
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        }
        try {
            return (C14539s) f98977d.c((byte[]) obj);
        } catch (Exception e10) {
            throw new IllegalArgumentException("encoding error in getInstance: " + e10.toString());
        }
    }

    public static C14539s G(M m10, boolean z10) {
        return (C14539s) f98977d.f(m10, z10);
    }

    public static int N(byte[] bArr, int i10, int i11) {
        int length = bArr.length;
        int max = Math.max(i10, length - 4);
        int i12 = i11 & bArr[max];
        while (true) {
            max++;
            if (max >= length) {
                return i12;
            }
            i12 = (i12 << 8) | (bArr[max] & 255);
        }
    }

    public static boolean P(byte[] bArr) {
        int length = bArr.length;
        if (length == 0) {
            return true;
        }
        if (length != 1) {
            return bArr[0] == (bArr[1] >> 7) && !org.bouncycastle.util.q.f("org.bouncycastle.asn1.allow_unsafe_integer");
        }
        return false;
    }

    public static long Q(byte[] bArr, int i10, int i11) {
        int length = bArr.length;
        int max = Math.max(i10, length - 8);
        long j10 = i11 & bArr[max];
        while (true) {
            max++;
            if (max >= length) {
                return j10;
            }
            j10 = (j10 << 8) | (bArr[max] & 255);
        }
    }

    public static int S(byte[] bArr) {
        int length = bArr.length - 1;
        int i10 = 0;
        while (i10 < length) {
            int i11 = i10 + 1;
            if (bArr[i10] != (bArr[i11] >> 7)) {
                break;
            }
            i10 = i11;
        }
        return i10;
    }

    public BigInteger H() {
        return new BigInteger(1, this.f98980b);
    }

    public BigInteger I() {
        return new BigInteger(this.f98980b);
    }

    public boolean J(int i10) {
        byte[] bArr = this.f98980b;
        int length = bArr.length;
        int i11 = this.f98981c;
        return length - i11 <= 4 && N(bArr, i11, -1) == i10;
    }

    public boolean K(long j10) {
        byte[] bArr = this.f98980b;
        int length = bArr.length;
        int i10 = this.f98981c;
        return length - i10 <= 8 && Q(bArr, i10, -1) == j10;
    }

    public boolean L(BigInteger bigInteger) {
        return bigInteger != null && N(this.f98980b, this.f98981c, -1) == bigInteger.intValue() && I().equals(bigInteger);
    }

    public int M() {
        byte[] bArr = this.f98980b;
        int length = bArr.length;
        int i10 = this.f98981c;
        int i11 = length - i10;
        if (i11 > 4 || (i11 == 4 && (bArr[i10] & 128) != 0)) {
            throw new ArithmeticException("ASN.1 Integer out of positive int range");
        }
        return N(bArr, i10, 255);
    }

    public int O() {
        byte[] bArr = this.f98980b;
        int length = bArr.length;
        int i10 = this.f98981c;
        if (length - i10 <= 4) {
            return N(bArr, i10, -1);
        }
        throw new ArithmeticException("ASN.1 Integer out of int range");
    }

    public long R() {
        byte[] bArr = this.f98980b;
        int length = bArr.length;
        int i10 = this.f98981c;
        if (length - i10 <= 8) {
            return Q(bArr, i10, -1);
        }
        throw new ArithmeticException("ASN.1 Integer out of long range");
    }

    @Override
    public int hashCode() {
        return org.bouncycastle.util.a.t0(this.f98980b);
    }

    public String toString() {
        return I().toString();
    }

    @Override
    public boolean u(B b10) {
        if (b10 instanceof C14539s) {
            return org.bouncycastle.util.a.g(this.f98980b, ((C14539s) b10).f98980b);
        }
        return false;
    }

    @Override
    public void v(C14503A c14503a, boolean z10) throws IOException {
        c14503a.r(z10, 2, this.f98980b);
    }

    @Override
    public boolean x() {
        return false;
    }

    @Override
    public int y(boolean z10) {
        return C14503A.i(z10, this.f98980b.length);
    }

    public C14539s(BigInteger bigInteger) {
        this.f98980b = bigInteger.toByteArray();
        this.f98981c = 0;
    }

    public C14539s(byte[] bArr) {
        this(bArr, true);
    }

    public C14539s(byte[] bArr, boolean z10) {
        if (P(bArr)) {
            throw new IllegalArgumentException("malformed integer");
        }
        this.f98980b = z10 ? org.bouncycastle.util.a.p(bArr) : bArr;
        this.f98981c = S(bArr);
    }
}
