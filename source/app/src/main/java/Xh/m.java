package Xh;

import hi.C13486b;
import oh.AbstractC14545v;
import oh.C14549x;
import oh.InterfaceC14516g;

public class m extends AbstractC14545v {

    public C13486b f28982b;

    public m(C14549x c14549x, InterfaceC14516g interfaceC14516g) {
        this.f28982b = new C13486b(c14549x, interfaceC14516g);
    }

    public static m v(Object obj) {
        if (obj instanceof m) {
            return (m) obj;
        }
        if (obj != null) {
            return new m(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return this.f28982b.r();
    }

    public C14549x u() {
        return this.f28982b.u();
    }

    public InterfaceC14516g x() {
        return this.f28982b.x();
    }

    public m(oh.E e10) {
        this.f28982b = C13486b.v(e10);
    }
}
