package Fk;

import java.math.BigInteger;
import oh.C14522j;

public class C2547t extends C14522j {

    public static final C2547t f7184f = new C2547t(BigInteger.ZERO);

    public static final C2547t f7185g = new C2547t(org.bouncycastle.util.b.f102316b);

    public C2547t(BigInteger bigInteger) {
        super(bigInteger);
        M();
    }

    public static C2547t N(Object obj) {
        if (obj instanceof C2547t) {
            return (C2547t) obj;
        }
        if (obj != null) {
            return new C2547t(C14522j.F(obj));
        }
        return null;
    }

    public void M() {
        int l10 = org.bouncycastle.util.b.l(H());
        if (l10 == 0 || l10 == 1) {
            return;
        }
        throw new IllegalArgumentException("invalid enumeration value " + ((Object) H()));
    }

    public C2547t(C14522j c14522j) {
        this(c14522j.H());
    }
}
