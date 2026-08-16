package hi;

import oh.AbstractC14508c;
import oh.AbstractC14545v;
import oh.C14518h;
import oh.G0;

public class C13496h extends AbstractC14545v {

    public C13497i f90795b;

    public C13486b f90796c;

    public AbstractC14508c f90797d;

    public C13496h(C13497i c13497i, C13486b c13486b, AbstractC14508c abstractC14508c) {
        this.f90795b = c13497i;
        this.f90796c = c13486b;
        this.f90797d = abstractC14508c;
    }

    public static C13496h v(Object obj) {
        if (obj instanceof C13496h) {
            return (C13496h) obj;
        }
        if (obj != null) {
            return new C13496h(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(3);
        c14518h.a(this.f90795b);
        c14518h.a(this.f90796c);
        c14518h.a(this.f90797d);
        return new G0(c14518h);
    }

    public C13497i u() {
        return this.f90795b;
    }

    public C13486b x() {
        return this.f90796c;
    }

    public AbstractC14508c y() {
        return this.f90797d;
    }

    public C13496h(oh.E e10) {
        if (e10.size() == 3) {
            this.f90795b = C13497i.z(e10.I(0));
            this.f90796c = C13486b.v(e10.I(1));
            this.f90797d = AbstractC14508c.H(e10.I(2));
        } else {
            throw new IllegalArgumentException("Bad sequence size: " + e10.size());
        }
    }
}
