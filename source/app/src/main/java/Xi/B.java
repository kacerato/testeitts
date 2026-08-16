package Xi;

import java.math.BigInteger;

public class B extends C3373x {

    public static final BigInteger f29193e = BigInteger.valueOf(1);

    public static final BigInteger f29194f = BigInteger.valueOf(2);

    public BigInteger f29195d;

    public B(BigInteger bigInteger, C3375z c3375z) {
        super(false, c3375z);
        this.f29195d = f(bigInteger, c3375z);
    }

    public BigInteger e() {
        return this.f29195d;
    }

    public final BigInteger f(BigInteger bigInteger, C3375z c3375z) {
        if (c3375z == null) {
            return bigInteger;
        }
        BigInteger bigInteger2 = f29194f;
        if (bigInteger2.compareTo(bigInteger) > 0 || c3375z.b().subtract(bigInteger2).compareTo(bigInteger) < 0 || !f29193e.equals(bigInteger.modPow(c3375z.c(), c3375z.b()))) {
            throw new IllegalArgumentException("y value does not appear to be in correct group");
        }
        return bigInteger;
    }
}
