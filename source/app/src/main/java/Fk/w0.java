package Fk;

import java.math.BigInteger;
import oh.C14539s;

public class w0 extends x0 {

    public static final BigInteger f7189c = BigInteger.valueOf(255);

    public w0(int i10) {
        super(i10);
    }

    public static w0 w(Object obj) {
        if (obj instanceof w0) {
            return (w0) obj;
        }
        if (obj != null) {
            return new w0(C14539s.F(obj));
        }
        return null;
    }

    @Override
    public void u() {
        if (this.f7190b.signum() < 0) {
            throw new IllegalArgumentException("value must not be negative");
        }
        BigInteger bigInteger = this.f7190b;
        BigInteger bigInteger2 = f7189c;
        if (bigInteger.compareTo(bigInteger2) <= 0) {
            return;
        }
        throw new IllegalArgumentException("value 0x" + this.f7190b.toString(16) + "  must not exceed 0x" + bigInteger2.toString(16));
    }

    public w0(long j10) {
        super(j10);
    }

    public w0(BigInteger bigInteger) {
        super(bigInteger);
    }

    public w0(C14539s c14539s) {
        super(c14539s);
    }
}
