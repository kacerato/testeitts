package Wh;

import java.math.BigInteger;
import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.C14539s;
import oh.E;
import oh.G0;

public class a extends AbstractC14545v {

    public C14539s f27775b;

    public C14539s f27776c;

    public a(BigInteger bigInteger, BigInteger bigInteger2) {
        this.f27775b = new C14539s(bigInteger);
        this.f27776c = new C14539s(bigInteger2);
    }

    public static a v(Object obj) {
        if (obj instanceof a) {
            return (a) obj;
        }
        if (obj != null) {
            return new a(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f27775b);
        c14518h.a(this.f27776c);
        return new G0(c14518h);
    }

    public BigInteger u() {
        return this.f27776c.H();
    }

    public BigInteger x() {
        return this.f27775b.H();
    }

    public a(E e10) {
        Enumeration J10 = e10.J();
        this.f27775b = (C14539s) J10.nextElement();
        this.f27776c = (C14539s) J10.nextElement();
    }
}
