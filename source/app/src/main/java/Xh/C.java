package Xh;

import oh.AbstractC14545v;
import oh.C14518h;
import oh.C14549x;
import oh.G;
import oh.InterfaceC14516g;
import oh.M;
import oh.V0;
import oh.Z0;

public class C extends AbstractC14545v {

    public C14549x f28939b;

    public InterfaceC14516g f28940c;

    public G f28941d;

    public C(C14549x c14549x, InterfaceC14516g interfaceC14516g) {
        this.f28939b = c14549x;
        this.f28940c = interfaceC14516g;
        this.f28941d = null;
    }

    public static C y(Object obj) {
        if (obj instanceof C) {
            return (C) obj;
        }
        if (obj != null) {
            return new C(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(3);
        c14518h.a(this.f28939b);
        c14518h.a(new Z0(true, 0, this.f28940c));
        G g10 = this.f28941d;
        if (g10 != null) {
            c14518h.a(g10);
        }
        return new V0(c14518h);
    }

    public G u() {
        return this.f28941d;
    }

    public C14549x v() {
        return this.f28939b;
    }

    public InterfaceC14516g x() {
        return this.f28940c;
    }

    public C(C14549x c14549x, InterfaceC14516g interfaceC14516g, G g10) {
        this.f28939b = c14549x;
        this.f28940c = interfaceC14516g;
        this.f28941d = g10;
    }

    public C(oh.E e10) {
        this.f28939b = (C14549x) e10.I(0);
        this.f28940c = ((M) e10.I(1)).O();
        if (e10.size() == 3) {
            this.f28941d = (G) e10.I(2);
        }
    }
}
