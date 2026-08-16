package Vh;

import hi.C13479C;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;

public class i extends AbstractC14545v {

    public b f27047b;

    public C13479C f27048c;

    public i(b bVar, C13479C c13479c) {
        this.f27047b = bVar;
        this.f27048c = c13479c;
    }

    public static i u(Object obj) {
        if (obj instanceof i) {
            return (i) obj;
        }
        if (obj != null) {
            return new i(E.G(obj));
        }
        return null;
    }

    public static i v(M m10, boolean z10) {
        return u(E.H(m10, z10));
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f27047b);
        C13479C c13479c = this.f27048c;
        if (c13479c != null) {
            c14518h.a(new K0(true, 0, (InterfaceC14516g) c13479c));
        }
        return new G0(c14518h);
    }

    public b x() {
        return this.f27047b;
    }

    public C13479C y() {
        return this.f27048c;
    }

    public i(E e10) {
        this.f27047b = b.v(e10.I(0));
        if (e10.size() == 2) {
            this.f27048c = C13479C.D((M) e10.I(1), true);
        }
    }
}
