package Ch;

import fi.C13228d;
import java.math.BigInteger;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.C14539s;
import oh.E;
import oh.G0;
import oh.P;

public class e extends AbstractC14545v {

    public C13228d f4325b;

    public P f4326c;

    public C14539s f4327d;

    public e(C13228d c13228d, P p10) {
        this(c13228d, p10, null);
    }

    public static e y(Object obj) {
        if (obj instanceof e) {
            return (e) obj;
        }
        if (obj != null) {
            return new e(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(3);
        c14518h.a(this.f4325b.r());
        c14518h.a(this.f4326c);
        C14539s c14539s = this.f4327d;
        if (c14539s != null) {
            c14518h.a(c14539s);
        }
        return new G0(c14518h);
    }

    public P u() {
        return this.f4326c;
    }

    public C13228d v() {
        return this.f4325b;
    }

    public BigInteger x() {
        C14539s c14539s = this.f4327d;
        if (c14539s == null) {
            return null;
        }
        return c14539s.I();
    }

    public e(C13228d c13228d, P p10, BigInteger bigInteger) {
        this.f4325b = c13228d;
        this.f4326c = p10;
        if (bigInteger != null) {
            this.f4327d = new C14539s(bigInteger);
        }
    }

    public e(E e10) {
        if (e10.size() < 2 || e10.size() > 3) {
            throw new IllegalArgumentException();
        }
        this.f4325b = C13228d.x(e10.I(0));
        this.f4326c = P.I(e10.I(1));
        if (e10.size() > 2) {
            this.f4327d = C14539s.F(e10.I(2));
        }
    }
}
