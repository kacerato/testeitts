package hi;

import oh.AbstractC14545v;
import oh.C14518h;
import oh.C14549x;
import oh.G0;
import oh.InterfaceC14516g;

public class C13486b extends AbstractC14545v {

    public C14549x f90759b;

    public InterfaceC14516g f90760c;

    public C13486b(C14549x c14549x) {
        this.f90759b = c14549x;
    }

    public static C13486b v(Object obj) {
        if (obj instanceof C13486b) {
            return (C13486b) obj;
        }
        if (obj != null) {
            return new C13486b(oh.E.G(obj));
        }
        return null;
    }

    public static C13486b w(oh.M m10, boolean z10) {
        return v(oh.E.H(m10, z10));
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f90759b);
        InterfaceC14516g interfaceC14516g = this.f90760c;
        if (interfaceC14516g != null) {
            c14518h.a(interfaceC14516g);
        }
        return new G0(c14518h);
    }

    public C14549x u() {
        return this.f90759b;
    }

    public InterfaceC14516g x() {
        return this.f90760c;
    }

    public C13486b(C14549x c14549x, InterfaceC14516g interfaceC14516g) {
        this.f90759b = c14549x;
        this.f90760c = interfaceC14516g;
    }

    public C13486b(oh.E e10) {
        if (e10.size() >= 1 && e10.size() <= 2) {
            this.f90759b = C14549x.K(e10.I(0));
            this.f90760c = e10.size() == 2 ? e10.I(1) : null;
        } else {
            throw new IllegalArgumentException("Bad sequence size: " + e10.size());
        }
    }
}
