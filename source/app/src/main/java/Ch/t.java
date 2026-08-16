package Ch;

import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.C14549x;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;

public class t extends AbstractC14545v {

    public C14549x f4367b;

    public InterfaceC14516g f4368c;

    public t(C14549x c14549x, InterfaceC14516g interfaceC14516g) {
        this.f4367b = c14549x;
        this.f4368c = interfaceC14516g;
    }

    public static t u(Object obj) {
        if (obj instanceof t) {
            return (t) obj;
        }
        if (obj != null) {
            return new t(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f4367b);
        c14518h.a(this.f4368c);
        return new G0(c14518h);
    }

    public C14549x v() {
        return new C14549x(this.f4367b.J());
    }

    public InterfaceC14516g x() {
        return this.f4368c;
    }

    public t(E e10) {
        this.f4367b = C14549x.K(e10.I(0));
        this.f4368c = e10.I(1);
    }
}
