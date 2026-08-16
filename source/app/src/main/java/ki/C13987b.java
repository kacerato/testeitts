package ki;

import java.math.BigInteger;
import oh.AbstractC14545v;
import oh.B;
import oh.C14539s;
import oh.M;

public class C13987b extends AbstractC14545v {

    public C14539s f95234b;

    public C13987b(BigInteger bigInteger) {
        if (bigInteger == null) {
            throw new IllegalArgumentException("'y' cannot be null");
        }
        this.f95234b = new C14539s(bigInteger);
    }

    public static C13987b u(Object obj) {
        if (obj == null || (obj instanceof C13987b)) {
            return (C13987b) obj;
        }
        if (obj instanceof C14539s) {
            return new C13987b((C14539s) obj);
        }
        throw new IllegalArgumentException("Invalid DHPublicKey: " + obj.getClass().getName());
    }

    public static C13987b v(M m10, boolean z10) {
        return u(C14539s.G(m10, z10));
    }

    @Override
    public B r() {
        return this.f95234b;
    }

    public BigInteger x() {
        return this.f95234b.H();
    }

    public C13987b(C14539s c14539s) {
        if (c14539s == null) {
            throw new IllegalArgumentException("'y' cannot be null");
        }
        this.f95234b = c14539s;
    }
}
