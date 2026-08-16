package uh;

import oh.AbstractC14545v;
import oh.C14518h;
import oh.C14549x;
import oh.G0;
import oh.InterfaceC14516g;

public class L extends AbstractC14545v {

    public C14549x f120590b;

    public InterfaceC14516g f120591c;

    public L(C14549x c14549x, InterfaceC14516g interfaceC14516g) {
        this.f120590b = c14549x;
        this.f120591c = interfaceC14516g;
    }

    public static L u(Object obj) {
        if (obj instanceof L) {
            return (L) obj;
        }
        if (obj != null) {
            return new L(oh.E.G(obj));
        }
        return null;
    }

    public static L v(oh.M m10, boolean z10) {
        return u(oh.E.H(m10, z10));
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f120590b);
        c14518h.a(this.f120591c);
        return new G0(c14518h);
    }

    public C14549x x() {
        return this.f120590b;
    }

    public InterfaceC14516g y() {
        return this.f120591c;
    }

    public L(oh.E e10) {
        this.f120590b = C14549x.K(e10.I(0));
        this.f120591c = e10.I(1);
    }
}
