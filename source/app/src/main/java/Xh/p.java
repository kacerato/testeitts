package Xh;

import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.C14518h;
import oh.C14549x;
import oh.G0;
import oh.InterfaceC14516g;

public class p extends AbstractC14545v implements t {

    public m f28989b;

    public k f28990c;

    public p(m mVar, k kVar) {
        this.f28989b = mVar;
        this.f28990c = kVar;
    }

    public static p v(Object obj) {
        if (obj instanceof p) {
            return (p) obj;
        }
        if (obj != null) {
            return new p(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f28989b);
        c14518h.a(this.f28990c);
        return new G0(c14518h);
    }

    public k u() {
        return this.f28990c;
    }

    public m x() {
        return this.f28989b;
    }

    public p(oh.E e10) {
        Enumeration J10 = e10.J();
        oh.E G10 = oh.E.G(((InterfaceC14516g) J10.nextElement()).r());
        InterfaceC14516g I10 = G10.I(0);
        C14549x c14549x = t.f29107h1;
        if (I10.equals(c14549x)) {
            this.f28989b = new m(c14549x, q.u(G10.I(1)));
        } else {
            this.f28989b = m.v(G10);
        }
        this.f28990c = k.v(J10.nextElement());
    }
}
