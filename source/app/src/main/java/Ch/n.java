package Ch;

import hi.C13486b;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C14518h;
import oh.E;
import oh.G0;

public class n extends AbstractC14545v {

    public C13486b f4355b;

    public AbstractC14551y f4356c;

    public n(C13486b c13486b, AbstractC14551y abstractC14551y) {
        this.f4355b = c13486b;
        this.f4356c = abstractC14551y;
    }

    public static n w(Object obj) {
        if (obj instanceof n) {
            return (n) obj;
        }
        if (obj != null) {
            return new n(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f4355b);
        c14518h.a(this.f4356c);
        return new G0(c14518h);
    }

    public C13486b u() {
        return this.f4355b;
    }

    public AbstractC14551y v() {
        return this.f4356c;
    }

    public n(E e10) {
        if (e10.size() == 2) {
            this.f4355b = C13486b.v(e10.I(0));
            this.f4356c = AbstractC14551y.F(e10.I(1));
        } else {
            throw new IllegalArgumentException("Bad sequence size: " + e10.size());
        }
    }
}
