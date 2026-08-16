package Vh;

import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;

public class g extends AbstractC14545v {

    public h f27038b;

    public k f27039c;

    public g(h hVar, k kVar) {
        this.f27038b = hVar;
        this.f27039c = kVar;
    }

    public static g u(Object obj) {
        if (obj instanceof g) {
            return (g) obj;
        }
        if (obj != null) {
            return new g(E.G(obj));
        }
        return null;
    }

    public static g v(M m10, boolean z10) {
        return u(E.H(m10, z10));
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f27038b);
        k kVar = this.f27039c;
        if (kVar != null) {
            c14518h.a(new K0(true, 0, (InterfaceC14516g) kVar));
        }
        return new G0(c14518h);
    }

    public k x() {
        return this.f27039c;
    }

    public h y() {
        return this.f27038b;
    }

    public g(E e10) {
        this.f27038b = h.u(e10.I(0));
        if (e10.size() == 2) {
            this.f27039c = k.v((M) e10.I(1), true);
        }
    }
}
