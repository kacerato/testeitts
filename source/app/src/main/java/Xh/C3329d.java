package Xh;

import oh.AbstractC14545v;
import oh.C14518h;
import oh.C14549x;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;

public class C3329d extends AbstractC14545v {

    public C14549x f28961b;

    public InterfaceC14516g f28962c;

    public C3329d(C14549x c14549x, InterfaceC14516g interfaceC14516g) {
        this.f28961b = c14549x;
        this.f28962c = interfaceC14516g;
    }

    public static C3329d w(Object obj) {
        if (obj instanceof C3329d) {
            return (C3329d) obj;
        }
        if (obj != null) {
            return new C3329d(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f28961b);
        c14518h.a(new K0(0, this.f28962c));
        return new G0(c14518h);
    }

    public C14549x u() {
        return this.f28961b;
    }

    public InterfaceC14516g v() {
        return this.f28962c;
    }

    public C3329d(oh.E e10) {
        this.f28961b = C14549x.K(e10.I(0));
        this.f28962c = M.R(e10.I(1)).O();
    }
}
