package sh;

import hi.C13481E;
import java.math.BigInteger;
import oh.AbstractC14545v;
import oh.C14518h;
import oh.C14539s;
import oh.G0;

public class u extends AbstractC14545v {

    public final C13481E f109620b;

    public final BigInteger f109621c;

    public u(C13481E c13481e, BigInteger bigInteger) {
        this.f109620b = c13481e;
        this.f109621c = bigInteger;
    }

    public static u u(Object obj) {
        if (obj instanceof u) {
            return (u) obj;
        }
        if (obj != null) {
            return new u(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f109620b);
        c14518h.a(new C14539s(this.f109621c));
        return new G0(c14518h);
    }

    public C13481E v() {
        return this.f109620b;
    }

    public BigInteger x() {
        return this.f109621c;
    }

    public u(oh.E e10) {
        if (e10.size() != 2) {
            throw new IllegalArgumentException("incorrect sequence size");
        }
        this.f109620b = C13481E.v(e10.I(0));
        this.f109621c = C14539s.F(e10.I(1)).I();
    }
}
