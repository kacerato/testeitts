package Ch;

import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;

public class g extends AbstractC14545v {

    public f f4329b;

    public k f4330c;

    public o f4331d;

    public g(f fVar, k kVar, o oVar) {
        this.f4329b = fVar;
        this.f4330c = kVar;
        this.f4331d = oVar;
    }

    public static g v(Object obj) {
        if (obj instanceof g) {
            return (g) obj;
        }
        if (obj != null) {
            return new g(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(3);
        f fVar = this.f4329b;
        if (fVar != null) {
            c14518h.a(new K0(true, 0, (InterfaceC14516g) fVar.r()));
        }
        k kVar = this.f4330c;
        if (kVar != null) {
            c14518h.a(new K0(true, 1, (InterfaceC14516g) kVar.r()));
        }
        o oVar = this.f4331d;
        if (oVar != null) {
            c14518h.a(new K0(true, 2, (InterfaceC14516g) oVar.r()));
        }
        return new G0(c14518h);
    }

    public f u() {
        return this.f4329b;
    }

    public k x() {
        return this.f4330c;
    }

    public o y() {
        return this.f4331d;
    }

    public g(E e10) {
        Enumeration J10 = e10.J();
        while (J10.hasMoreElements()) {
            M S10 = M.S(J10.nextElement(), 128);
            int g10 = S10.g();
            if (g10 == 0) {
                this.f4329b = f.v(S10.O());
            } else if (g10 == 1) {
                this.f4330c = k.u(S10.O());
            } else {
                if (g10 != 2) {
                    throw new IllegalArgumentException("illegal tag");
                }
                this.f4331d = o.u(S10.O());
            }
        }
    }
}
