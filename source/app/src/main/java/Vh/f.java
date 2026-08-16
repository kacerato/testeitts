package Vh;

import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;

public class f extends AbstractC14545v {

    public q f27036b;

    public o f27037c;

    public f(q qVar, o oVar) {
        this.f27036b = qVar;
        this.f27037c = oVar;
    }

    public static f u(Object obj) {
        if (obj instanceof f) {
            return (f) obj;
        }
        if (obj != null) {
            return new f(E.G(obj));
        }
        return null;
    }

    public static f v(M m10, boolean z10) {
        return u(E.H(m10, z10));
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f27036b);
        o oVar = this.f27037c;
        if (oVar != null) {
            c14518h.a(new K0(true, 0, (InterfaceC14516g) oVar));
        }
        return new G0(c14518h);
    }

    public o x() {
        return this.f27037c;
    }

    public q y() {
        return this.f27036b;
    }

    public f(E e10) {
        this.f27036b = q.u(e10.I(0));
        if (e10.size() == 2) {
            this.f27037c = o.w((M) e10.I(1), true);
        }
    }
}
