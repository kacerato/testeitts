package Vh;

import hi.C13503o;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.C14522j;
import oh.C14530n;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;

public class m extends AbstractC14545v {

    public C14530n f27059b;

    public C13503o f27060c;

    public m(C14530n c14530n) {
        this(c14530n, null);
    }

    public static m u(Object obj) {
        if (obj instanceof m) {
            return (m) obj;
        }
        if (obj != null) {
            return new m(E.G(obj));
        }
        return null;
    }

    public static m v(M m10, boolean z10) {
        return u(E.H(m10, z10));
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f27059b);
        C13503o c13503o = this.f27060c;
        if (c13503o != null) {
            c14518h.a(new K0(true, 0, (InterfaceC14516g) c13503o));
        }
        return new G0(c14518h);
    }

    public C13503o x() {
        return this.f27060c;
    }

    public C14530n y() {
        return this.f27059b;
    }

    public m(C14530n c14530n, C13503o c13503o) {
        this.f27059b = c14530n;
        this.f27060c = c13503o;
    }

    public m(E e10) {
        this.f27059b = C14530n.J(e10.I(0));
        if (e10.size() > 1) {
            this.f27060c = C13503o.u(C14522j.G((M) e10.I(1), true));
        }
    }
}
