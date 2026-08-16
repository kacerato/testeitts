package Fk;

import java.math.BigInteger;
import oh.C14539s;

public class C extends J {
    public C(long j10) {
        super(j10);
    }

    public static C w(Object obj) {
        if (obj instanceof C) {
            return (C) obj;
        }
        if (obj != null) {
            return new C(C14539s.F(obj));
        }
        return null;
    }

    public C(BigInteger bigInteger) {
        super(bigInteger);
    }

    public C(C14539s c14539s) {
        this(c14539s.I());
    }
}
