package Fk;

import java.math.BigInteger;
import oh.C14522j;

public class m0 extends C14522j {

    public static final m0 f7143f = new m0(BigInteger.ZERO);

    public m0(BigInteger bigInteger) {
        super(bigInteger);
        M();
    }

    public static m0 N(Object obj) {
        if (obj instanceof m0) {
            return (m0) obj;
        }
        if (obj != null) {
            return new m0(C14522j.F(obj));
        }
        return null;
    }

    public void M() {
        if (org.bouncycastle.util.b.l(H()) == 0) {
            return;
        }
        throw new IllegalArgumentException("invalid enumeration value " + ((Object) H()));
    }

    public m0(C14522j c14522j) {
        super(c14522j.H());
        M();
    }
}
