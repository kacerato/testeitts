package uh;

import hi.C13486b;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C14517g0;
import oh.C14518h;
import oh.C14527l0;
import oh.C14549x;
import oh.InterfaceC14516g;

public class r extends AbstractC14545v {

    public C14549x f120734b;

    public C13486b f120735c;

    public AbstractC14551y f120736d;

    public r(C14549x c14549x, C13486b c13486b, AbstractC14551y abstractC14551y) {
        this.f120734b = c14549x;
        this.f120735c = c13486b;
        this.f120736d = abstractC14551y;
    }

    public static r y(Object obj) {
        if (obj instanceof r) {
            return (r) obj;
        }
        if (obj != null) {
            return new r(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(3);
        c14518h.a(this.f120734b);
        c14518h.a(this.f120735c);
        AbstractC14551y abstractC14551y = this.f120736d;
        if (abstractC14551y != null) {
            c14518h.a(new C14527l0(false, 0, (InterfaceC14516g) abstractC14551y));
        }
        return new C14517g0(c14518h);
    }

    public C13486b u() {
        return this.f120735c;
    }

    public C14549x v() {
        return this.f120734b;
    }

    public AbstractC14551y x() {
        return this.f120736d;
    }

    public r(oh.E e10) {
        if (e10.size() < 2) {
            throw new IllegalArgumentException("Truncated Sequence Found");
        }
        this.f120734b = (C14549x) e10.I(0);
        this.f120735c = C13486b.v(e10.I(1));
        if (e10.size() > 2) {
            this.f120736d = AbstractC14551y.G((oh.M) e10.I(2), false);
        }
    }
}
