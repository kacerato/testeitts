package ii;

import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.C14549x;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;

public class C13742e extends AbstractC14545v implements InterfaceC13739b, InterfaceC13743f {

    public C14549x f92291b;

    public InterfaceC14516g f92292c;

    public C13742e(C14549x c14549x) {
        this.f92291b = c14549x;
        this.f92292c = null;
    }

    public static C13742e u(Object obj) {
        if (obj instanceof C13742e) {
            return (C13742e) obj;
        }
        if (obj != null) {
            return new C13742e(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f92291b);
        InterfaceC14516g interfaceC14516g = this.f92292c;
        if (interfaceC14516g != null) {
            c14518h.a(interfaceC14516g);
        }
        return new G0(c14518h);
    }

    public C14549x v() {
        return this.f92291b;
    }

    public InterfaceC14516g x() {
        return this.f92292c;
    }

    public C13742e(C14549x c14549x, InterfaceC14516g interfaceC14516g) {
        this.f92291b = c14549x;
        this.f92292c = interfaceC14516g;
    }

    public C13742e(E e10) {
        Enumeration J10 = e10.J();
        this.f92291b = C14549x.K(J10.nextElement());
        if (J10.hasMoreElements()) {
            this.f92292c = (InterfaceC14516g) J10.nextElement();
        }
    }
}
