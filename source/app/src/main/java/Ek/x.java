package Ek;

import java.math.BigInteger;
import oh.AbstractC14545v;
import oh.C14539s;

public class x extends AbstractC14545v {

    public static final BigInteger f6037c = BigInteger.valueOf(255);

    public static final x f6038d = new x(1);

    public static final x f6039e = new x(2);

    public final BigInteger f6040b;

    public x(long j10) {
        this(BigInteger.valueOf(j10));
    }

    public static BigInteger u(BigInteger bigInteger) {
        if (bigInteger.signum() < 0) {
            throw new IllegalArgumentException("value less than 0");
        }
        BigInteger bigInteger2 = f6037c;
        if (bigInteger.compareTo(bigInteger2) <= 0) {
            return bigInteger;
        }
        throw new IllegalArgumentException("value exceeds " + ((Object) bigInteger2));
    }

    public static x w(Object obj) {
        if (obj instanceof x) {
            return (x) obj;
        }
        if (obj != null) {
            return new x(C14539s.F(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new C14539s(this.f6040b);
    }

    public BigInteger v() {
        return this.f6040b;
    }

    public x(BigInteger bigInteger) {
        this.f6040b = u(bigInteger);
    }

    public x(C14539s c14539s) {
        this(c14539s.I());
    }

    public x(byte[] bArr) {
        this(new BigInteger(bArr));
    }
}
