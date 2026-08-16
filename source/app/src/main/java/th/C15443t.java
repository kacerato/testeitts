package th;

import oh.AbstractC14545v;
import oh.C14518h;
import oh.C14549x;
import oh.G0;
import oh.InterfaceC14516g;

public class C15443t extends AbstractC14545v {

    public final C14549x f117631b;

    public final InterfaceC14516g f117632c;

    public C15443t(C14549x c14549x) {
        this(c14549x, null);
    }

    public static C15443t w(Object obj) {
        if (obj instanceof C15443t) {
            return (C15443t) obj;
        }
        if (obj != null) {
            return new C15443t(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f117631b);
        InterfaceC14516g interfaceC14516g = this.f117632c;
        if (interfaceC14516g != null) {
            c14518h.a(interfaceC14516g);
        }
        return new G0(c14518h);
    }

    public C14549x u() {
        return this.f117631b;
    }

    public InterfaceC14516g v() {
        return this.f117632c;
    }

    public C15443t(C14549x c14549x, InterfaceC14516g interfaceC14516g) {
        if (c14549x == null) {
            throw new NullPointerException("'infoType' cannot be null");
        }
        this.f117631b = c14549x;
        this.f117632c = interfaceC14516g;
    }

    public C15443t(oh.E e10) {
        this.f117631b = C14549x.K(e10.I(0));
        this.f117632c = e10.size() > 1 ? e10.I(1) : null;
    }
}
