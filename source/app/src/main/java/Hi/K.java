package hi;

import fi.C13228d;
import java.math.BigInteger;
import oh.AbstractC14508c;
import oh.AbstractC14545v;
import oh.C14518h;
import oh.C14539s;
import oh.G0;

public class K extends AbstractC14545v {

    public C13482F f90669b;

    public C14539s f90670c;

    public AbstractC14508c f90671d;

    public K(C13228d c13228d, BigInteger bigInteger) {
        this(new C13482F(new C13481E(c13228d)), new C14539s(bigInteger));
    }

    public static K u(Object obj) {
        if (obj instanceof K) {
            return (K) obj;
        }
        if (obj != null) {
            return new K(oh.E.G(obj));
        }
        return null;
    }

    public static K v(oh.M m10, boolean z10) {
        return u(oh.E.H(m10, z10));
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(3);
        c14518h.a(this.f90669b);
        c14518h.a(this.f90670c);
        AbstractC14508c abstractC14508c = this.f90671d;
        if (abstractC14508c != null) {
            c14518h.a(abstractC14508c);
        }
        return new G0(c14518h);
    }

    public C13482F x() {
        return this.f90669b;
    }

    public AbstractC14508c y() {
        return this.f90671d;
    }

    public C14539s z() {
        return this.f90670c;
    }

    public K(C13482F c13482f, BigInteger bigInteger) {
        this(c13482f, new C14539s(bigInteger));
    }

    public K(C13482F c13482f, C14539s c14539s) {
        this.f90669b = c13482f;
        this.f90670c = c14539s;
    }

    public K(oh.E e10) {
        if (e10.size() != 2 && e10.size() != 3) {
            throw new IllegalArgumentException("Bad sequence size: " + e10.size());
        }
        this.f90669b = C13482F.w(e10.I(0));
        this.f90670c = C14539s.F(e10.I(1));
        if (e10.size() == 3) {
            this.f90671d = AbstractC14508c.H(e10.I(2));
        }
    }
}
