package Xi;

import java.math.BigInteger;
import sk.AbstractC15329o;

public class C3366s extends C3357n {

    public static final BigInteger f29411e = BigInteger.valueOf(1);

    public static final BigInteger f29412f = BigInteger.valueOf(2);

    public BigInteger f29413d;

    public C3366s(BigInteger bigInteger, C3363q c3363q) {
        super(false, c3363q);
        this.f29413d = g(bigInteger, c3363q);
    }

    public static int f(BigInteger bigInteger, BigInteger bigInteger2) {
        int bitLength = bigInteger2.bitLength();
        int[] U10 = AbstractC15329o.U(bitLength, bigInteger);
        int[] U11 = AbstractC15329o.U(bitLength, bigInteger2);
        int length = U11.length;
        int i10 = 0;
        while (true) {
            int i11 = U10[0];
            if (i11 == 0) {
                AbstractC15329o.B0(length, U10, 0);
            } else {
                int e10 = org.bouncycastle.util.k.e(i11);
                if (e10 > 0) {
                    AbstractC15329o.x0(length, U10, e10, 0);
                    int i12 = U11[0];
                    i10 ^= (e10 << 1) & (i12 ^ (i12 >>> 1));
                }
                int x10 = AbstractC15329o.x(length, U10, U11);
                if (x10 == 0) {
                    break;
                }
                if (x10 < 0) {
                    i10 ^= U10[0] & U11[0];
                    int[] iArr = U11;
                    U11 = U10;
                    U10 = iArr;
                }
                while (true) {
                    int i13 = length - 1;
                    if (U10[i13] != 0) {
                        break;
                    }
                    length = i13;
                }
                AbstractC15329o.S0(length, U10, U11, U10);
            }
        }
        if (AbstractC15329o.f0(length, U11)) {
            return 1 - (i10 & 2);
        }
        return 0;
    }

    public BigInteger e() {
        return this.f29413d;
    }

    @Override
    public boolean equals(Object obj) {
        return (obj instanceof C3366s) && ((C3366s) obj).e().equals(this.f29413d) && super.equals(obj);
    }

    public final BigInteger g(BigInteger bigInteger, C3363q c3363q) {
        if (bigInteger == null) {
            throw new NullPointerException("y value cannot be null");
        }
        BigInteger f10 = c3363q.f();
        BigInteger bigInteger2 = f29412f;
        if (bigInteger.compareTo(bigInteger2) < 0 || bigInteger.compareTo(f10.subtract(bigInteger2)) > 0) {
            throw new IllegalArgumentException("invalid DH public key");
        }
        BigInteger g10 = c3363q.g();
        if (g10 == null) {
            return bigInteger;
        }
        if (f10.testBit(0) && f10.bitLength() - 1 == g10.bitLength() && f10.shiftRight(1).equals(g10)) {
            if (1 == f(bigInteger, f10)) {
                return bigInteger;
            }
        } else if (f29411e.equals(bigInteger.modPow(g10, f10))) {
            return bigInteger;
        }
        throw new IllegalArgumentException("Y value does not appear to be in correct group");
    }

    @Override
    public int hashCode() {
        return this.f29413d.hashCode() ^ super.hashCode();
    }
}
