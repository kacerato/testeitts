package wh;

import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.C14549x;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;

public class C16003a extends AbstractC14545v {

    public C14549x f127472b;

    public InterfaceC14516g f127473c;

    public C16003a(String str, InterfaceC14516g interfaceC14516g) {
        this(new C14549x(str), interfaceC14516g);
    }

    public static C16003a u(Object obj) {
        if (obj instanceof C16003a) {
            return (C16003a) obj;
        }
        if (obj != null) {
            return new C16003a(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f127472b);
        c14518h.a(this.f127473c);
        return new G0(c14518h);
    }

    public C14549x v() {
        return this.f127472b;
    }

    public InterfaceC14516g x() {
        return this.f127473c;
    }

    public C16003a(C14549x c14549x, InterfaceC14516g interfaceC14516g) {
        this.f127472b = c14549x;
        this.f127473c = interfaceC14516g;
    }

    public C16003a(E e10) {
        this.f127472b = (C14549x) e10.I(0);
        this.f127473c = e10.I(1);
    }
}
