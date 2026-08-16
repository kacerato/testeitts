package Fk;

import java.math.BigInteger;
import oh.C14539s;

public class t0 extends x0 {

    public static final BigInteger f7186c = new BigInteger("FFFFFFFF", 16);

    public t0(int i10) {
        super(i10);
    }

    public static t0 w(Object obj) {
        if (obj instanceof w0) {
            return (t0) obj;
        }
        if (obj != null) {
            return new t0(C14539s.F(obj));
        }
        return null;
    }

    @Override
    public void u() {
        if (this.f7190b.signum() < 0) {
            throw new IllegalArgumentException("value must not be negative");
        }
        BigInteger bigInteger = this.f7190b;
        BigInteger bigInteger2 = f7186c;
        if (bigInteger.compareTo(bigInteger2) <= 0) {
            return;
        }
        throw new IllegalArgumentException("value must not exceed " + bigInteger2.toString(16));
    }

    public t0(long j10) {
        super(j10);
    }

    public t0(BigInteger bigInteger) {
        super(bigInteger);
    }

    public t0(C14539s c14539s) {
        super(c14539s);
    }
}
