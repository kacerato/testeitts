package hi;

import fi.C13228d;
import oh.AbstractC14508c;
import oh.AbstractC14545v;
import oh.C14539s;

public class C13505q extends AbstractC14545v {

    public oh.E f90884b;

    public j0 f90885c;

    public C13486b f90886d;

    public AbstractC14508c f90887e;

    public C13505q(oh.E e10) {
        this.f90884b = e10;
        if (e10.size() != 3) {
            throw new IllegalArgumentException("sequence wrong size for a certificate");
        }
        this.f90885c = j0.w(e10.I(0));
        this.f90886d = C13486b.v(e10.I(1));
        this.f90887e = AbstractC14508c.H(e10.I(2));
    }

    public static C13505q v(Object obj) {
        if (obj instanceof C13505q) {
            return (C13505q) obj;
        }
        if (obj != null) {
            return new C13505q(oh.E.G(obj));
        }
        return null;
    }

    public static C13505q w(oh.M m10, boolean z10) {
        return v(oh.E.H(m10, z10));
    }

    public C13486b A() {
        return this.f90886d;
    }

    public o0 B() {
        return this.f90885c.C();
    }

    public C13228d C() {
        return this.f90885c.D();
    }

    public h0 D() {
        return this.f90885c.E();
    }

    public j0 E() {
        return this.f90885c;
    }

    public C14539s F() {
        return this.f90885c.G();
    }

    public int G() {
        return this.f90885c.H();
    }

    @Override
    public oh.B r() {
        return this.f90884b;
    }

    public o0 u() {
        return this.f90885c.u();
    }

    public C13228d x() {
        return this.f90885c.y();
    }

    public C14539s y() {
        return this.f90885c.A();
    }

    public AbstractC14508c z() {
        return this.f90887e;
    }
}
