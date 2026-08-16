package uh;

import oh.AbstractC14545v;
import oh.C14518h;
import oh.C14549x;
import oh.G0;
import oh.InterfaceC14516g;

public class M extends AbstractC14545v {

    public C14549x f120592b;

    public InterfaceC14516g f120593c;

    public M(C14549x c14549x, InterfaceC14516g interfaceC14516g) {
        this.f120592b = c14549x;
        this.f120593c = interfaceC14516g;
    }

    public static M w(Object obj) {
        if (obj instanceof M) {
            return (M) obj;
        }
        if (obj != null) {
            return new M(oh.E.G(obj));
        }
        return null;
    }

    public static M x(oh.M m10, boolean z10) {
        return w(oh.E.H(m10, z10));
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f120592b);
        c14518h.a(this.f120593c);
        return new G0(c14518h);
    }

    public InterfaceC14516g u() {
        return this.f120593c;
    }

    public C14549x v() {
        return this.f120592b;
    }

    public M(oh.E e10) {
        this.f120592b = C14549x.K(e10.I(0));
        this.f120593c = e10.I(1);
    }
}
