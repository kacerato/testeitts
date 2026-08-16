package Xh;

import java.math.BigInteger;
import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.C14518h;
import oh.C14539s;
import oh.G0;

public class h extends AbstractC14545v {

    public C14539s f28973b;

    public C14539s f28974c;

    public C14539s f28975d;

    public h(BigInteger bigInteger, BigInteger bigInteger2, int i10) {
        this.f28973b = new C14539s(bigInteger);
        this.f28974c = new C14539s(bigInteger2);
        this.f28975d = i10 != 0 ? new C14539s(i10) : null;
    }

    public static h v(Object obj) {
        if (obj instanceof h) {
            return (h) obj;
        }
        if (obj != null) {
            return new h(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(3);
        c14518h.a(this.f28973b);
        c14518h.a(this.f28974c);
        if (x() != null) {
            c14518h.a(this.f28975d);
        }
        return new G0(c14518h);
    }

    public BigInteger u() {
        return this.f28974c.H();
    }

    public BigInteger x() {
        C14539s c14539s = this.f28975d;
        if (c14539s == null) {
            return null;
        }
        return c14539s.H();
    }

    public BigInteger y() {
        return this.f28973b.H();
    }

    public h(oh.E e10) {
        Enumeration J10 = e10.J();
        this.f28973b = C14539s.F(J10.nextElement());
        this.f28974c = C14539s.F(J10.nextElement());
        this.f28975d = J10.hasMoreElements() ? (C14539s) J10.nextElement() : null;
    }
}
