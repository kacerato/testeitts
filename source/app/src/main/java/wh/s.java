package wh;

import hi.C13486b;
import oh.AbstractC14508c;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;
import oh.V;

public class s extends AbstractC14545v {

    public t f127547b;

    public C13486b f127548c;

    public AbstractC14508c f127549d;

    public s(E e10) {
        int i10 = 0;
        if (e10.I(0) instanceof M) {
            this.f127547b = t.u(V.j((M) e10.I(0), 0, false, 16));
            i10 = 1;
        }
        this.f127548c = C13486b.v(e10.I(i10));
        this.f127549d = AbstractC14508c.H(e10.I(i10 + 1));
    }

    public static s v(Object obj) {
        if (obj instanceof s) {
            return (s) obj;
        }
        if (obj != null) {
            return new s(E.G(obj));
        }
        return null;
    }

    public static s w(M m10, boolean z10) {
        return v(E.H(m10, z10));
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(3);
        t tVar = this.f127547b;
        if (tVar != null) {
            c14518h.a(new K0(false, 0, (InterfaceC14516g) tVar));
        }
        c14518h.a(this.f127548c);
        c14518h.a(this.f127549d);
        return new G0(c14518h);
    }

    public C13486b u() {
        return this.f127548c;
    }

    public t x() {
        return this.f127547b;
    }

    public AbstractC14508c y() {
        return this.f127549d;
    }

    public s(t tVar, C13486b c13486b, AbstractC14508c abstractC14508c) {
        this.f127547b = tVar;
        this.f127548c = c13486b;
        this.f127549d = abstractC14508c;
    }
}
