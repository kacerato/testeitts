package Ek;

import java.math.BigInteger;
import oh.C14522j;

public class C2494e extends C14522j {

    public static final C2494e f5958f = new C2494e(BigInteger.ZERO);

    public static final C2494e f5959g = new C2494e(BigInteger.ONE);

    public C2494e(BigInteger bigInteger) {
        super(bigInteger);
        M();
    }

    public static C2494e N(Object obj) {
        if (obj instanceof C2494e) {
            return (C2494e) obj;
        }
        if (obj != null) {
            return new C2494e(C14522j.F(obj));
        }
        return null;
    }

    public void M() {
        if (H().compareTo(BigInteger.ZERO) < 0 || H().compareTo(org.bouncycastle.util.b.f102316b) > 0) {
            throw new IllegalArgumentException("invalid enumeration value " + ((Object) H()));
        }
    }

    public C2494e(C14522j c14522j) {
        this(c14522j.H());
    }
}
