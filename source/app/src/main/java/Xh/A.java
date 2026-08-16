package Xh;

import java.math.BigInteger;
import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.C14518h;
import oh.C14539s;
import oh.G0;
import oh.M;

public class A extends AbstractC14545v {

    public BigInteger f28929b;

    public BigInteger f28930c;

    public A(BigInteger bigInteger, BigInteger bigInteger2) {
        this.f28929b = bigInteger;
        this.f28930c = bigInteger2;
    }

    public static A u(Object obj) {
        if (obj instanceof A) {
            return (A) obj;
        }
        if (obj != null) {
            return new A(oh.E.G(obj));
        }
        return null;
    }

    public static A v(M m10, boolean z10) {
        return u(oh.E.H(m10, z10));
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(new C14539s(x()));
        c14518h.a(new C14539s(y()));
        return new G0(c14518h);
    }

    public BigInteger x() {
        return this.f28929b;
    }

    public BigInteger y() {
        return this.f28930c;
    }

    public A(oh.E e10) {
        if (e10.size() == 2) {
            Enumeration J10 = e10.J();
            this.f28929b = C14539s.F(J10.nextElement()).H();
            this.f28930c = C14539s.F(J10.nextElement()).H();
        } else {
            throw new IllegalArgumentException("Bad sequence size: " + e10.size());
        }
    }
}
