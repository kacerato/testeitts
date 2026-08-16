package Fk;

import java.math.BigInteger;
import oh.AbstractC14545v;
import oh.C14539s;

public class K extends AbstractC14545v {

    public static final BigInteger f7019c = new BigInteger("-1799999999");

    public static final BigInteger f7020d = new BigInteger("1800000000");

    public static final BigInteger f7021e = new BigInteger("1800000001");

    public final BigInteger f7022b;

    public K(long j10) {
        this(BigInteger.valueOf(j10));
    }

    private static BigInteger u(BigInteger bigInteger) {
        return bigInteger;
    }

    public static K v(Object obj) {
        if (obj instanceof K) {
            return (K) obj;
        }
        if (obj != null) {
            return new K(C14539s.F(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new C14539s(this.f7022b);
    }

    public BigInteger x() {
        return this.f7022b;
    }

    public K(BigInteger bigInteger) {
        if (!bigInteger.equals(f7021e)) {
            if (bigInteger.compareTo(f7019c) < 0) {
                throw new IllegalStateException("one eighty degree int cannot be less than -1799999999");
            }
            if (bigInteger.compareTo(f7020d) > 0) {
                throw new IllegalStateException("one eighty degree int cannot be greater than 1800000000");
            }
        }
        this.f7022b = bigInteger;
    }

    public K(C14539s c14539s) {
        this(c14539s.I());
    }
}
