package uh;

import oh.AbstractC14545v;
import oh.C14539s;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;
import oh.K0;

public class Q extends AbstractC14545v implements InterfaceC14514f {

    public InterfaceC14516g f120601b;

    public Q(oh.B b10) {
        this.f120601b = b10;
    }

    public static Q v(Object obj) {
        if (obj == null || (obj instanceof Q)) {
            return (Q) obj;
        }
        if (obj instanceof oh.E) {
            return new Q((oh.E) obj);
        }
        if (obj instanceof oh.M) {
            return new Q((oh.M) obj);
        }
        throw new IllegalArgumentException("unknown object in factory: " + obj.getClass().getName());
    }

    @Override
    public oh.B r() {
        return this.f120601b.r();
    }

    public InterfaceC14516g u() {
        InterfaceC14516g interfaceC14516g = this.f120601b;
        if (!(interfaceC14516g instanceof oh.M)) {
            return F.v(interfaceC14516g);
        }
        oh.M m10 = (oh.M) interfaceC14516g;
        int g10 = m10.g();
        if (g10 == 1) {
            return E.v(m10, false);
        }
        if (g10 == 2) {
            return w(m10);
        }
        if (g10 == 3) {
            return N.w(m10, false);
        }
        if (g10 == 4) {
            return L.v(m10, false);
        }
        throw new IllegalStateException("unknown tag");
    }

    public final B w(oh.M m10) {
        return B.w(m10, m10.X());
    }

    public C14539s x() {
        InterfaceC14516g interfaceC14516g = this.f120601b;
        if (!(interfaceC14516g instanceof oh.M)) {
            return F.v(interfaceC14516g).z();
        }
        oh.M m10 = (oh.M) interfaceC14516g;
        int g10 = m10.g();
        if (g10 == 1) {
            return E.v(m10, false).B();
        }
        if (g10 == 2) {
            return w(m10).z();
        }
        if (g10 == 3) {
            return N.w(m10, false).z();
        }
        if (g10 == 4) {
            return new C14539s(0L);
        }
        throw new IllegalStateException("unknown tag");
    }

    public boolean y() {
        return this.f120601b instanceof oh.M;
    }

    public Q(B b10) {
        this.f120601b = new K0(false, 2, (InterfaceC14516g) b10);
    }

    public Q(E e10) {
        this.f120601b = new K0(false, 1, (InterfaceC14516g) e10);
    }

    public Q(F f10) {
        this.f120601b = f10;
    }

    public Q(L l10) {
        this.f120601b = new K0(false, 4, (InterfaceC14516g) l10);
    }

    public Q(N n10) {
        this.f120601b = new K0(false, 3, (InterfaceC14516g) n10);
    }
}
