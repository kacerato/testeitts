package Xh;

import oh.AbstractC14545v;
import oh.C14517g0;
import oh.C14518h;
import oh.C14539s;

public class u extends AbstractC14545v implements t {

    public g f29155b;

    public n f29156c;

    public u(g gVar, n nVar) {
        this.f29155b = gVar;
        this.f29156c = nVar;
    }

    public static u v(Object obj) {
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
        C14518h c14518h = new C14518h(3);
        c14518h.a(new C14539s(3L));
        c14518h.a(this.f29155b);
        n nVar = this.f29156c;
        if (nVar != null) {
            c14518h.a(nVar);
        }
        return new C14517g0(c14518h);
    }

    public g u() {
        return this.f29155b;
    }

    public n x() {
        return this.f29156c;
    }

    public u(oh.E e10) {
        this.f29156c = null;
        if (!C14539s.F(e10.I(0)).J(3)) {
            throw new IllegalArgumentException("wrong version for PFX PDU");
        }
        this.f29155b = g.w(e10.I(1));
        if (e10.size() == 3) {
            this.f29156c = n.u(e10.I(2));
        }
    }
}
