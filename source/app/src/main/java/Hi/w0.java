package hi;

import fi.C13228d;
import oh.AbstractC14508c;
import oh.AbstractC14545v;
import oh.C14539s;

public class w0 extends AbstractC14545v implements E0, Xh.t {

    public oh.E f90963b;

    public k0 f90964c;

    public C13486b f90965d;

    public AbstractC14508c f90966e;

    public w0(oh.E e10) {
        this.f90963b = e10;
        if (e10.size() != 3) {
            throw new IllegalArgumentException("sequence wrong size for a certificate");
        }
        this.f90964c = k0.w(e10.I(0));
        this.f90965d = C13486b.v(e10.I(1));
        this.f90966e = AbstractC14508c.H(e10.I(2));
    }

    public static w0 v(Object obj) {
        if (obj instanceof w0) {
            return (w0) obj;
        }
        if (obj != null) {
            return new w0(oh.E.G(obj));
        }
        return null;
    }

    public static w0 w(oh.M m10, boolean z10) {
        return v(oh.E.H(m10, z10));
    }

    public C13486b A() {
        return this.f90965d;
    }

    public o0 B() {
        return this.f90964c.C();
    }

    public C13228d C() {
        return this.f90964c.D();
    }

    public h0 D() {
        return this.f90964c.E();
    }

    public k0 E() {
        return this.f90964c;
    }

    public int F() {
        return this.f90964c.G();
    }

    @Override
    public oh.B r() {
        return this.f90963b;
    }

    public o0 u() {
        return this.f90964c.u();
    }

    public C13228d x() {
        return this.f90964c.y();
    }

    public C14539s y() {
        return this.f90964c.A();
    }

    public AbstractC14508c z() {
        return this.f90966e;
    }
}
