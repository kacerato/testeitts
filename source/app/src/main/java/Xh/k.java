package Xh;

import hi.C13486b;
import oh.AbstractC14545v;
import oh.C14549x;
import oh.InterfaceC14516g;

public class k extends AbstractC14545v {

    public C13486b f28979b;

    public k(C14549x c14549x) {
        this.f28979b = new C13486b(c14549x);
    }

    public static k v(Object obj) {
        if (obj instanceof k) {
            return (k) obj;
        }
        if (obj != null) {
            return new k(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return this.f28979b.r();
    }

    public C14549x u() {
        return this.f28979b.u();
    }

    public InterfaceC14516g x() {
        return this.f28979b.x();
    }

    public k(C14549x c14549x, InterfaceC14516g interfaceC14516g) {
        this.f28979b = new C13486b(c14549x, interfaceC14516g);
    }

    public k(oh.E e10) {
        this.f28979b = C13486b.v(e10);
    }
}
