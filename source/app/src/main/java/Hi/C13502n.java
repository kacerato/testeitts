package hi;

import java.math.BigInteger;
import oh.AbstractC14545v;
import oh.C14539s;

public class C13502n extends AbstractC14545v {

    public BigInteger f90855b;

    public C13502n(BigInteger bigInteger) {
        if (org.bouncycastle.util.b.f102315a.compareTo(bigInteger) > 0) {
            throw new IllegalArgumentException("Invalid CRL number : not in (0..MAX)");
        }
        this.f90855b = bigInteger;
    }

    public static C13502n v(Object obj) {
        if (obj instanceof C13502n) {
            return (C13502n) obj;
        }
        if (obj != null) {
            return new C13502n(C14539s.F(obj).I());
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new C14539s(this.f90855b);
    }

    public String toString() {
        return "CRLNumber: " + ((Object) u());
    }

    public BigInteger u() {
        return this.f90855b;
    }
}
