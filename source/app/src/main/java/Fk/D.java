package Fk;

import java.math.BigInteger;
import oh.C14539s;

public class D extends I {
    public D(long j10) {
        super(j10);
    }

    public static D z(Object obj) {
        if (obj instanceof D) {
            return (D) obj;
        }
        if (obj != null) {
            return new D(C14539s.F(obj));
        }
        return null;
    }

    public D(BigInteger bigInteger) {
        super(bigInteger);
    }

    public D(C14539s c14539s) {
        this(c14539s.I());
    }
}
