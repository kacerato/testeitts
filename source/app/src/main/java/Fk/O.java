package Fk;

import java.math.BigInteger;
import oh.AbstractC14545v;
import oh.C14539s;

public class O extends AbstractC14545v {

    public final BigInteger f7033b;

    public O(long j10) {
        this(BigInteger.valueOf(j10));
    }

    public static O u(Object obj) {
        if (obj instanceof O) {
            return (O) obj;
        }
        if (obj != null) {
            return new O(C14539s.F(obj).I());
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new C14539s(this.f7033b);
    }

    public BigInteger v() {
        return this.f7033b;
    }

    public O(BigInteger bigInteger) {
        if (bigInteger.signum() < 0) {
            throw new IllegalStateException("psid must be greater than zero");
        }
        this.f7033b = bigInteger;
    }
}
