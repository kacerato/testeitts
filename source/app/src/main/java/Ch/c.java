package Ch;

import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.C14549x;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;

public class c extends AbstractC14545v {

    public C14549x f4322b;

    public InterfaceC14516g f4323c;

    public c(C14549x c14549x) {
        this(c14549x, null);
    }

    public static c v(Object obj) {
        if (obj instanceof c) {
            return (c) obj;
        }
        if (obj != null) {
            return new c(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f4322b);
        InterfaceC14516g interfaceC14516g = this.f4323c;
        if (interfaceC14516g != null) {
            c14518h.a(interfaceC14516g);
        }
        return new G0(c14518h);
    }

    public C14549x u() {
        return this.f4322b;
    }

    public InterfaceC14516g x() {
        return this.f4323c;
    }

    public c(C14549x c14549x, InterfaceC14516g interfaceC14516g) {
        this.f4322b = c14549x;
        this.f4323c = interfaceC14516g;
    }

    public c(E e10) {
        this.f4322b = (C14549x) e10.I(0);
        if (e10.size() > 1) {
            this.f4323c = e10.I(1);
        }
    }
}
