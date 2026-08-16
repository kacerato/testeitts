package hi;

import oh.AbstractC14508c;
import oh.AbstractC14545v;
import oh.C14518h;
import oh.G0;

public class C13493e0 extends AbstractC14545v {

    public C13486b f90787b;

    public AbstractC14508c f90788c;

    public C13493e0(C13486b c13486b, AbstractC14508c abstractC14508c) {
        this.f90787b = c13486b;
        this.f90788c = abstractC14508c;
    }

    public static C13493e0 u(C13479C c13479c) {
        return w(C13479C.A(c13479c, C13478B.f90525K));
    }

    public static C13493e0 w(Object obj) {
        if (obj instanceof C13493e0) {
            return (C13493e0) obj;
        }
        if (obj != null) {
            return new C13493e0(oh.E.G(obj));
        }
        return null;
    }

    public static C13493e0 x(oh.M m10, boolean z10) {
        return w(oh.E.H(m10, z10));
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h();
        c14518h.a(this.f90787b);
        c14518h.a(this.f90788c);
        return new G0(c14518h);
    }

    public C13486b v() {
        return this.f90787b;
    }

    public AbstractC14508c y() {
        return this.f90788c;
    }

    public C13493e0(h0 h0Var) {
        this.f90787b = h0Var.u();
        this.f90788c = h0Var.z();
    }

    public C13493e0(oh.E e10) {
        if (e10.size() != 2) {
            throw new IllegalArgumentException("extension should contain only 2 elements");
        }
        this.f90787b = C13486b.v(e10.I(0));
        this.f90788c = AbstractC14508c.H(e10.I(1));
    }
}
