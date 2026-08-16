package hi;

import java.math.BigInteger;
import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.C14518h;
import oh.C14539s;
import oh.G0;

public class C13487b0 extends AbstractC14545v {

    public BigInteger f90761b;

    public BigInteger f90762c;

    public C13487b0(BigInteger bigInteger, BigInteger bigInteger2) {
        this.f90761b = bigInteger;
        this.f90762c = bigInteger2;
    }

    public static C13487b0 u(Object obj) {
        if (obj == null || (obj instanceof C13487b0)) {
            return (C13487b0) obj;
        }
        if (obj instanceof oh.E) {
            return new C13487b0((oh.E) obj);
        }
        throw new IllegalArgumentException("Invalid RSAPublicKeyStructure: " + obj.getClass().getName());
    }

    public static C13487b0 v(oh.M m10, boolean z10) {
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
        return this.f90761b;
    }

    public BigInteger y() {
        return this.f90762c;
    }

    public C13487b0(oh.E e10) {
        if (e10.size() == 2) {
            Enumeration J10 = e10.J();
            this.f90761b = C14539s.F(J10.nextElement()).H();
            this.f90762c = C14539s.F(J10.nextElement()).H();
        } else {
            throw new IllegalArgumentException("Bad sequence size: " + e10.size());
        }
    }
}
