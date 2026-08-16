package Ak;

import oh.AbstractC14545v;
import oh.G0;
import oh.InterfaceC14516g;

public class A extends AbstractC14545v {

    public final Bk.e f833b;

    public final B f834c;

    public A(Bk.e eVar, B b10) {
        this.f833b = eVar;
        this.f834c = b10;
    }

    public static A v(Object obj) {
        if (obj instanceof A) {
            return (A) obj;
        }
        if (obj != null) {
            return obj instanceof Ek.v ? new A(oh.E.G(((Ek.v) obj).v())) : new A(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new G0(new InterfaceC14516g[]{this.f833b, this.f834c});
    }

    public B u() {
        return this.f834c;
    }

    public Bk.e x() {
        return this.f833b;
    }

    public A(oh.E e10) {
        if (e10.size() != 2) {
            throw new IllegalArgumentException("expected sequence size of 2");
        }
        this.f833b = Bk.e.u(e10.I(0));
        this.f834c = B.w(e10.I(1));
    }
}
