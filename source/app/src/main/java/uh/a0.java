package uh;

import oh.AbstractC14545v;
import oh.C14518h;
import oh.G0;

public class a0 extends AbstractC14545v {

    public C15624o f120639b;

    public hi.r f120640c;

    public a0(oh.E e10) {
        this.f120639b = C15624o.w(e10.I(0));
        if (e10.size() == 2) {
            this.f120640c = hi.r.u(e10.I(1));
        }
    }

    public static a0 w(Object obj) {
        if (obj instanceof a0) {
            return (a0) obj;
        }
        if (obj != null) {
            return new a0(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f120639b);
        hi.r rVar = this.f120640c;
        if (rVar != null) {
            c14518h.a(rVar);
        }
        return new G0(c14518h);
    }

    public hi.r u() {
        return this.f120640c;
    }

    public hi.r v() {
        return this.f120640c;
    }

    public C15624o x() {
        return this.f120639b;
    }

    public a0(C15624o c15624o) {
        this.f120639b = c15624o;
    }
}
