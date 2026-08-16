package Fk;

import java.math.BigInteger;
import oh.C14539s;

public class u0 extends x0 {

    public static final BigInteger f7187c = BigInteger.valueOf(7);

    public u0(int i10) {
        super(i10);
    }

    public static u0 w(Object obj) {
        if (obj instanceof u0) {
            return (u0) obj;
        }
        if (obj != null) {
            return new u0(C14539s.F(obj));
        }
        return null;
    }

    @Override
    public void u() {
        if (this.f7190b.signum() < 0) {
            throw new IllegalArgumentException("value must not be negative");
        }
        BigInteger bigInteger = this.f7190b;
        BigInteger bigInteger2 = f7187c;
        if (bigInteger.compareTo(bigInteger2) <= 0) {
            return;
        }
        throw new IllegalArgumentException("value must not exceed " + bigInteger2.toString(16));
    }

    public u0(long j10) {
        super(j10);
    }

    public u0(BigInteger bigInteger) {
        super(bigInteger);
    }

    public u0(C14539s c14539s) {
        super(c14539s);
    }
}
