package yh;

import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;

public class j extends AbstractC14545v {

    public final h f130331b;

    public final k f130332c;

    public j(E e10) {
        this.f130331b = h.v(e10.I(0));
        this.f130332c = k.x(M.R(e10.I(1)), false);
    }

    public static j u(Object obj) {
        if (obj instanceof j) {
            return (j) obj;
        }
        if (obj != null) {
            return new j(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f130331b);
        k kVar = this.f130332c;
        if (kVar != null) {
            c14518h.a(new K0(false, 0, (InterfaceC14516g) kVar));
        }
        return new G0(c14518h);
    }

    public h v() {
        return this.f130331b;
    }

    public k x() {
        return this.f130332c;
    }

    public j(h hVar, k kVar) {
        this.f130331b = hVar;
        this.f130332c = kVar;
    }
}
