package uh;

import oh.AbstractC14545v;
import oh.C14518h;
import oh.C14549x;
import oh.G0;
import oh.InterfaceC14516g;

public class K extends AbstractC14545v {

    public C14549x f120588b;

    public InterfaceC14516g f120589c;

    public K(C14549x c14549x, InterfaceC14516g interfaceC14516g) {
        this.f120588b = c14549x;
        this.f120589c = interfaceC14516g;
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

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f120588b);
        c14518h.a(this.f120589c);
        return new G0(c14518h);
    }

    public InterfaceC14516g v() {
        return this.f120589c;
    }

    public C14549x x() {
        return this.f120588b;
    }

    public K(oh.E e10) {
        this.f120588b = (C14549x) e10.I(0);
        this.f120589c = e10.I(1);
    }
}
