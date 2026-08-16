package Fk;

import java.math.BigInteger;
import oh.C14539s;

public class F extends J {
    public F(long j10) {
        super(j10);
    }

    public static F w(Object obj) {
        if (obj instanceof F) {
            return (F) obj;
        }
        if (obj != null) {
            return new F(C14539s.F(obj));
        }
        return null;
    }

    public F(BigInteger bigInteger) {
        super(bigInteger);
    }

    public F(C14539s c14539s) {
        this(c14539s.I());
    }
}
