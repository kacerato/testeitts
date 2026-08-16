package hi;

import fi.C13228d;
import oh.AbstractC14508c;
import oh.AbstractC14545v;
import oh.C14539s;

public class k0 extends AbstractC14545v implements E0, Xh.t {

    public oh.E f90835b;

    public C14539s f90836c;

    public C14539s f90837d;

    public C13486b f90838e;

    public C13228d f90839f;

    public o0 f90840g;

    public o0 f90841h;

    public C13228d f90842i;

    public h0 f90843j;

    public AbstractC14508c f90844k;

    public AbstractC14508c f90845l;

    public z0 f90846m;

    public k0(oh.E e10) {
        int i10;
        this.f90835b = e10;
        if (e10.I(0) instanceof oh.M) {
            this.f90836c = C14539s.G((oh.M) e10.I(0), true);
            i10 = 0;
        } else {
            this.f90836c = new C14539s(0L);
            i10 = -1;
        }
        this.f90837d = C14539s.F(e10.I(i10 + 1));
        this.f90838e = C13486b.v(e10.I(i10 + 2));
        this.f90839f = C13228d.x(e10.I(i10 + 3));
        oh.E e11 = (oh.E) e10.I(i10 + 4);
        this.f90840g = o0.v(e11.I(0));
        this.f90841h = o0.v(e11.I(1));
        this.f90842i = C13228d.x(e10.I(i10 + 5));
        int i11 = i10 + 6;
        this.f90843j = h0.w(e10.I(i11));
        for (int size = (e10.size() - i11) - 1; size > 0; size--) {
            oh.M R10 = oh.M.R(e10.I(i11 + size));
            int g10 = R10.g();
            if (g10 == 1) {
                this.f90844k = AbstractC14508c.I(R10, false);
            } else if (g10 == 2) {
                this.f90845l = AbstractC14508c.I(R10, false);
            } else if (g10 == 3) {
                this.f90846m = z0.z(R10);
            }
        }
    }

    public static k0 w(Object obj) {
        if (obj instanceof k0) {
            return (k0) obj;
        }
        if (obj != null) {
            return new k0(oh.E.G(obj));
        }
        return null;
    }

    public static k0 x(oh.M m10, boolean z10) {
        return w(oh.E.H(m10, z10));
    }

    public C14539s A() {
        return this.f90837d;
    }

    public C13486b B() {
        return this.f90838e;
    }

    public o0 C() {
        return this.f90840g;
    }

    public C13228d D() {
        return this.f90842i;
    }

    public h0 E() {
        return this.f90843j;
    }

    public AbstractC14508c F() {
        return this.f90845l;
    }

    public int G() {
        return this.f90836c.O() + 1;
    }

    public C14539s H() {
        return this.f90836c;
    }

    @Override
    public oh.B r() {
        return this.f90835b;
    }

    public o0 u() {
        return this.f90841h;
    }

    public z0 v() {
        return this.f90846m;
    }

    public C13228d y() {
        return this.f90839f;
    }

    public AbstractC14508c z() {
        return this.f90844k;
    }
}
