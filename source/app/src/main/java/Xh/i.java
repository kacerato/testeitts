package Xh;

import hi.C13486b;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C14517g0;
import oh.C14518h;
import oh.C14527l0;
import oh.C14539s;
import oh.C14549x;
import oh.InterfaceC14516g;
import oh.M;

public class i extends AbstractC14545v {

    public oh.E f28976b;

    public i(C14549x c14549x, C13486b c13486b, InterfaceC14516g interfaceC14516g) {
        C14518h c14518h = new C14518h(3);
        c14518h.a(c14549x);
        c14518h.a(c13486b.r());
        c14518h.a(new C14527l0(false, 0, interfaceC14516g));
        this.f28976b = new C14517g0(c14518h);
    }

    public static i y(Object obj) {
        if (obj instanceof i) {
            return (i) obj;
        }
        if (obj != null) {
            return new i(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(new C14539s(0L));
        c14518h.a(this.f28976b);
        return new C14517g0(c14518h);
    }

    public AbstractC14551y u() {
        if (this.f28976b.size() == 3) {
            return AbstractC14551y.G(M.R(this.f28976b.I(2)), false);
        }
        return null;
    }

    public C14549x v() {
        return C14549x.K(this.f28976b.I(0));
    }

    public C13486b x() {
        return C13486b.v(this.f28976b.I(1));
    }

    public i(oh.E e10) {
        if (!((C14539s) e10.I(0)).J(0)) {
            throw new IllegalArgumentException("sequence not version 0");
        }
        this.f28976b = oh.E.G(e10.I(1));
    }
}
