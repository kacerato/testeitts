package hi;

import java.math.BigInteger;
import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.C14518h;
import oh.C14539s;
import oh.G0;

public class C13508u extends AbstractC14545v {

    public C14539s f90925b;

    public C14539s f90926c;

    public C14539s f90927d;

    public C13508u(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this.f90925b = new C14539s(bigInteger);
        this.f90926c = new C14539s(bigInteger2);
        this.f90927d = new C14539s(bigInteger3);
    }

    public static C13508u v(Object obj) {
        if (obj instanceof C13508u) {
            return (C13508u) obj;
        }
        if (obj != null) {
            return new C13508u(oh.E.G(obj));
        }
        return null;
    }

    public static C13508u w(oh.M m10, boolean z10) {
        return v(oh.E.H(m10, z10));
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(3);
        c14518h.a(this.f90925b);
        c14518h.a(this.f90926c);
        c14518h.a(this.f90927d);
        return new G0(c14518h);
    }

    public BigInteger u() {
        return this.f90927d.H();
    }

    public BigInteger x() {
        return this.f90925b.H();
    }

    public BigInteger y() {
        return this.f90926c.H();
    }

    public C13508u(oh.E e10) {
        if (e10.size() != 3) {
            throw new IllegalArgumentException("Bad sequence size: " + e10.size());
        }
        Enumeration J10 = e10.J();
        this.f90925b = C14539s.F(J10.nextElement());
        this.f90926c = C14539s.F(J10.nextElement());
        this.f90927d = C14539s.F(J10.nextElement());
    }
}
