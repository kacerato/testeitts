package Fk;

import java.math.BigInteger;
import oh.AbstractC14545v;
import oh.C14539s;

public class J extends AbstractC14545v {

    public static final BigInteger f7015c = new BigInteger("-900000000");

    public static final BigInteger f7016d = new BigInteger("900000000");

    public static final BigInteger f7017e = new BigInteger("900000001");

    public final BigInteger f7018b;

    public J(long j10) {
        this(BigInteger.valueOf(j10));
    }

    public static J u(Object obj) {
        if (obj instanceof J) {
            return (J) obj;
        }
        if (obj != null) {
            return new J(C14539s.F(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new C14539s(this.f7018b);
    }

    public BigInteger v() {
        return this.f7018b;
    }

    public J(BigInteger bigInteger) {
        if (!bigInteger.equals(f7017e)) {
            if (bigInteger.compareTo(f7015c) < 0) {
                throw new IllegalStateException("ninety degree int cannot be less than -900000000");
            }
            if (bigInteger.compareTo(f7016d) > 0) {
                throw new IllegalStateException("ninety degree int cannot be greater than 900000000");
            }
        }
        this.f7018b = bigInteger;
    }

    public J(C14539s c14539s) {
        this(c14539s.I());
    }
}
