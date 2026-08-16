package uh;

import oh.AbstractC14545v;
import oh.C14518h;
import oh.C14549x;
import oh.G0;
import oh.InterfaceC14516g;

public class C15610a extends AbstractC14545v {

    public C14549x f120637b;

    public oh.G f120638c;

    public C15610a(C14549x c14549x, oh.G g10) {
        this.f120637b = c14549x;
        this.f120638c = g10;
    }

    public static C15610a y(Object obj) {
        if (obj instanceof C15610a) {
            return (C15610a) obj;
        }
        if (obj != null) {
            return new C15610a(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f120637b);
        c14518h.a(this.f120638c);
        return new G0(c14518h);
    }

    public C14549x u() {
        return this.f120637b;
    }

    public oh.G v() {
        return this.f120638c;
    }

    public InterfaceC14516g[] x() {
        return this.f120638c.N();
    }

    public C15610a(oh.E e10) {
        this.f120637b = (C14549x) e10.I(0);
        this.f120638c = (oh.G) e10.I(1);
    }
}
