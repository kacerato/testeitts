package Vh;

import hi.C13479C;
import hi.z0;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.C14530n;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;

public class p extends AbstractC14545v {

    public b f27066b;

    public c f27067c;

    public C14530n f27068d;

    public C14530n f27069e;

    public C13479C f27070f;

    public p(b bVar, c cVar, C14530n c14530n, C14530n c14530n2, C13479C c13479c) {
        this.f27066b = bVar;
        this.f27067c = cVar;
        this.f27068d = c14530n;
        this.f27069e = c14530n2;
        this.f27070f = c13479c;
    }

    public static p w(Object obj) {
        if (obj instanceof p) {
            return (p) obj;
        }
        if (obj != null) {
            return new p(E.G(obj));
        }
        return null;
    }

    public static p x(M m10, boolean z10) {
        return w(E.H(m10, z10));
    }

    public C14530n A() {
        return this.f27068d;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(5);
        c14518h.a(this.f27066b);
        c14518h.a(this.f27067c);
        c14518h.a(this.f27068d);
        C14530n c14530n = this.f27069e;
        if (c14530n != null) {
            c14518h.a(new K0(true, 0, (InterfaceC14516g) c14530n));
        }
        C13479C c13479c = this.f27070f;
        if (c13479c != null) {
            c14518h.a(new K0(true, 1, (InterfaceC14516g) c13479c));
        }
        return new G0(c14518h);
    }

    public b u() {
        return this.f27066b;
    }

    public c v() {
        return this.f27067c;
    }

    public C14530n y() {
        return this.f27069e;
    }

    public C13479C z() {
        return this.f27070f;
    }

    public p(b bVar, c cVar, C14530n c14530n, C14530n c14530n2, z0 z0Var) {
        this(bVar, cVar, c14530n, c14530n2, C13479C.C(z0Var));
    }

    public p(E e10) {
        M m10;
        this.f27066b = b.v(e10.I(0));
        this.f27067c = c.u(e10.I(1));
        this.f27068d = C14530n.J(e10.I(2));
        if (e10.size() > 4) {
            this.f27069e = C14530n.K((M) e10.I(3), true);
            m10 = (M) e10.I(4);
        } else {
            if (e10.size() <= 3) {
                return;
            }
            m10 = (M) e10.I(3);
            if (m10.g() == 0) {
                this.f27069e = C14530n.K(m10, true);
                return;
            }
        }
        this.f27070f = C13479C.D(m10, true);
    }
}
