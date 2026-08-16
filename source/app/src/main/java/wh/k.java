package wh;

import hi.C13481E;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;
import oh.Q;

public class k extends AbstractC14545v {

    public final Xh.v f127518b;

    public final InterfaceC14516g f127519c;

    public k(Xh.v vVar) {
        this.f127518b = vVar;
        this.f127519c = null;
    }

    public static k v(Object obj) {
        if (obj instanceof k) {
            return (k) obj;
        }
        if (obj != null) {
            return new k(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f127518b);
        InterfaceC14516g interfaceC14516g = this.f127519c;
        if (interfaceC14516g != null) {
            c14518h.a(interfaceC14516g);
        }
        return new G0(c14518h);
    }

    public InterfaceC14516g u() {
        return this.f127519c;
    }

    public Xh.v x() {
        return this.f127518b;
    }

    public boolean y() {
        return this.f127519c != null;
    }

    public boolean z() {
        return this.f127519c instanceof Q;
    }

    public k(Xh.v vVar, C13481E c13481e) {
        this.f127518b = vVar;
        this.f127519c = c13481e;
    }

    public k(Xh.v vVar, Q q10) {
        this.f127518b = vVar;
        this.f127519c = q10;
    }

    public k(E e10) {
        InterfaceC14516g interfaceC14516g;
        this.f127518b = Xh.v.v(e10.I(0));
        if (e10.size() > 1) {
            boolean z10 = e10.I(1) instanceof Q;
            interfaceC14516g = e10.I(1);
            if (!z10) {
                interfaceC14516g = C13481E.v(interfaceC14516g);
            }
        } else {
            interfaceC14516g = null;
        }
        this.f127519c = interfaceC14516g;
    }
}
