package hi;

import fi.C13228d;
import hi.i0;
import java.util.Enumeration;
import oh.AbstractC14508c;
import oh.AbstractC14545v;
import oh.C14518h;
import oh.G0;

public class r extends AbstractC14545v {

    public i0 f90896b;

    public C13486b f90897c;

    public AbstractC14508c f90898d;

    public boolean f90899e = false;

    public int f90900f;

    public r(oh.E e10) {
        if (e10.size() != 3) {
            throw new IllegalArgumentException("sequence wrong size for CertificateList");
        }
        this.f90896b = i0.v(e10.I(0));
        this.f90897c = C13486b.v(e10.I(1));
        this.f90898d = AbstractC14508c.H(e10.I(2));
    }

    public static r u(Object obj) {
        if (obj instanceof r) {
            return (r) obj;
        }
        if (obj != null) {
            return new r(oh.E.G(obj));
        }
        return null;
    }

    public static r v(oh.M m10, boolean z10) {
        return u(oh.E.H(m10, z10));
    }

    public i0.b[] A() {
        return this.f90896b.A();
    }

    public AbstractC14508c B() {
        return this.f90898d;
    }

    public C13486b C() {
        return this.f90897c;
    }

    public i0 D() {
        return this.f90896b;
    }

    public o0 E() {
        return this.f90896b.C();
    }

    public int F() {
        return this.f90896b.E();
    }

    @Override
    public int hashCode() {
        if (!this.f90899e) {
            this.f90900f = super.hashCode();
            this.f90899e = true;
        }
        return this.f90900f;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(3);
        c14518h.a(this.f90896b);
        c14518h.a(this.f90897c);
        c14518h.a(this.f90898d);
        return new G0(c14518h);
    }

    public C13228d x() {
        return this.f90896b.x();
    }

    public o0 y() {
        return this.f90896b.y();
    }

    public Enumeration z() {
        return this.f90896b.z();
    }
}
