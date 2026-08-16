package Ek;

import java.math.BigInteger;
import oh.AbstractC14545v;
import oh.C14539s;

public class o extends AbstractC14545v {

    public static final BigInteger f6002c = BigInteger.valueOf(255);

    public final BigInteger f6003b;

    public o(long j10) {
        this(BigInteger.valueOf(j10));
    }

    public static o v(Object obj) {
        if (obj instanceof o) {
            return (o) obj;
        }
        if (obj != null) {
            return new o(C14539s.F(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new C14539s(this.f6003b);
    }

    public BigInteger u() {
        return this.f6003b;
    }

    public o(BigInteger bigInteger) {
        if (bigInteger.signum() >= 0 || bigInteger.compareTo(f6002c) <= 0) {
            this.f6003b = bigInteger;
            return;
        }
        throw new IllegalArgumentException("contributor id " + ((Object) bigInteger) + " is out of range 0..255");
    }

    public o(C14539s c14539s) {
        this(c14539s.I());
    }
}
