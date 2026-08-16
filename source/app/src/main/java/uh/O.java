package uh;

import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C14518h;
import oh.G0;

public class O extends AbstractC14545v {

    public D f120598b;

    public AbstractC14551y f120599c;

    public O(oh.E e10) {
        this.f120598b = D.u(e10.I(0));
        this.f120599c = (AbstractC14551y) e10.I(1);
    }

    public static O w(Object obj) {
        if (obj instanceof O) {
            return (O) obj;
        }
        if (obj != null) {
            return new O(oh.E.G(obj));
        }
        return null;
    }

    public static O x(oh.M m10, boolean z10) {
        return w(oh.E.H(m10, z10));
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f120598b);
        c14518h.a(this.f120599c);
        return new G0(c14518h);
    }

    public AbstractC14551y u() {
        return this.f120599c;
    }

    public D v() {
        return this.f120598b;
    }

    public O(D d10, AbstractC14551y abstractC14551y) {
        this.f120598b = d10;
        this.f120599c = abstractC14551y;
    }
}
