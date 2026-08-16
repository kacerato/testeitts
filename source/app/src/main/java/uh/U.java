package uh;

import oh.AbstractC14545v;
import oh.C14518h;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;

public class U extends AbstractC14545v {

    public final C15624o f120607b;

    public final C15624o f120608c;

    public U(oh.E e10) {
        InterfaceC14516g I10;
        if (e10.I(0) instanceof oh.M) {
            this.f120607b = C15624o.x(oh.M.R(e10.I(0)), true);
            I10 = e10.I(1);
        } else {
            this.f120607b = null;
            I10 = e10.I(0);
        }
        this.f120608c = C15624o.w(I10);
    }

    public static U u(Object obj) {
        if (obj instanceof U) {
            return (U) obj;
        }
        if (obj != null) {
            return new U(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(2);
        C15624o c15624o = this.f120607b;
        if (c15624o != null) {
            c14518h.a(new K0(true, 0, (InterfaceC14516g) c15624o));
        }
        c14518h.a(this.f120608c);
        return new G0(c14518h);
    }

    public C15624o v() {
        return this.f120607b;
    }

    public C15624o x() {
        return this.f120608c;
    }

    public U(C15624o c15624o) {
        this.f120607b = null;
        this.f120608c = c15624o;
    }

    public U(C15624o c15624o, C15624o c15624o2) {
        this.f120607b = c15624o;
        this.f120608c = c15624o2;
    }
}
