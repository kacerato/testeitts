package Fk;

import java.math.BigInteger;
import oh.C14539s;

public class I extends K {
    public I(long j10) {
        super(j10);
    }

    public static I y(Object obj) {
        if (obj instanceof I) {
            return (I) obj;
        }
        if (obj != null) {
            return new I(C14539s.F(obj));
        }
        return null;
    }

    public I(BigInteger bigInteger) {
        super(bigInteger);
    }

    public I(C14539s c14539s) {
        this(c14539s.I());
    }
}
