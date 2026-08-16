package Fk;

import java.math.BigInteger;
import oh.C14539s;

public class s0 extends x0 {

    public static final BigInteger f7183c = BigInteger.valueOf(Sg.b.f23266s);

    public s0(int i10) {
        super(i10);
    }

    public static s0 w(Object obj) {
        if (obj instanceof s0) {
            return (s0) obj;
        }
        if (obj != null) {
            return new s0(C14539s.F(obj));
        }
        return null;
    }

    public static s0 x(int i10) {
        return new s0(i10);
    }

    @Override
    public void u() {
        if (this.f7190b.signum() < 0) {
            throw new IllegalArgumentException("value must not be negative");
        }
        BigInteger bigInteger = this.f7190b;
        BigInteger bigInteger2 = f7183c;
        if (bigInteger.compareTo(bigInteger2) <= 0) {
            return;
        }
        throw new IllegalArgumentException("value must not exceed " + bigInteger2.toString(16));
    }

    public s0(long j10) {
        super(j10);
    }

    public s0(BigInteger bigInteger) {
        super(bigInteger);
    }

    public s0(C14539s c14539s) {
        super(c14539s);
    }
}
