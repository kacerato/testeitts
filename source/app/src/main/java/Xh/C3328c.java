package Xh;

import oh.AbstractC14545v;
import oh.C14518h;
import oh.C14549x;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;

public class C3328c extends AbstractC14545v {

    public C14549x f28959b;

    public InterfaceC14516g f28960c;

    public C3328c(C14549x c14549x, InterfaceC14516g interfaceC14516g) {
        this.f28959b = c14549x;
        this.f28960c = interfaceC14516g;
    }

    public static C3328c w(Object obj) {
        if (obj instanceof C3328c) {
            return (C3328c) obj;
        }
        if (obj != null) {
            return new C3328c(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f28959b);
        c14518h.a(new K0(0, this.f28960c));
        return new G0(c14518h);
    }

    public C14549x u() {
        return this.f28959b;
    }

    public InterfaceC14516g v() {
        return this.f28960c;
    }

    public C3328c(oh.E e10) {
        this.f28959b = C14549x.K(e10.I(0));
        this.f28960c = M.R(e10.I(1)).O();
    }
}
