package hi;

import oh.AbstractC14508c;
import oh.AbstractC14545v;
import oh.C14518h;
import oh.C14539s;
import oh.G0;
import oh.InterfaceC14516g;

public class C13497i extends AbstractC14545v {

    public C14539s f90800b;

    public I f90801c;

    public C13492e f90802d;

    public C13486b f90803e;

    public C14539s f90804f;

    public C13494f f90805g;

    public oh.E f90806h;

    public AbstractC14508c f90807i;

    public C13479C f90808j;

    public C13497i(oh.E e10) {
        if (e10.size() < 6 || e10.size() > 9) {
            throw new IllegalArgumentException("Bad sequence size: " + e10.size());
        }
        int i10 = 0;
        if (e10.I(0) instanceof C14539s) {
            this.f90800b = C14539s.F(e10.I(0));
            i10 = 1;
        } else {
            this.f90800b = new C14539s(0L);
        }
        this.f90801c = I.w(e10.I(i10));
        this.f90802d = C13492e.u(e10.I(i10 + 1));
        this.f90803e = C13486b.v(e10.I(i10 + 2));
        this.f90804f = C14539s.F(e10.I(i10 + 3));
        this.f90805g = C13494f.u(e10.I(i10 + 4));
        this.f90806h = oh.E.G(e10.I(i10 + 5));
        for (int i11 = i10 + 6; i11 < e10.size(); i11++) {
            InterfaceC14516g I10 = e10.I(i11);
            if (I10 instanceof AbstractC14508c) {
                this.f90807i = AbstractC14508c.H(e10.I(i11));
            } else if ((I10 instanceof oh.E) || (I10 instanceof C13479C)) {
                this.f90808j = C13479C.C(e10.I(i11));
            }
        }
    }

    public static C13497i A(oh.M m10, boolean z10) {
        return z(oh.E.H(m10, z10));
    }

    public static C13497i z(Object obj) {
        if (obj instanceof C13497i) {
            return (C13497i) obj;
        }
        if (obj != null) {
            return new C13497i(oh.E.G(obj));
        }
        return null;
    }

    public C13492e B() {
        return this.f90802d;
    }

    public AbstractC14508c C() {
        return this.f90807i;
    }

    public C14539s D() {
        return this.f90804f;
    }

    public C13486b E() {
        return this.f90803e;
    }

    public C14539s F() {
        return this.f90800b;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(9);
        if (!this.f90800b.J(0)) {
            c14518h.a(this.f90800b);
        }
        c14518h.a(this.f90801c);
        c14518h.a(this.f90802d);
        c14518h.a(this.f90803e);
        c14518h.a(this.f90804f);
        c14518h.a(this.f90805g);
        c14518h.a(this.f90806h);
        AbstractC14508c abstractC14508c = this.f90807i;
        if (abstractC14508c != null) {
            c14518h.a(abstractC14508c);
        }
        C13479C c13479c = this.f90808j;
        if (c13479c != null) {
            c14518h.a(c13479c);
        }
        return new G0(c14518h);
    }

    public C13494f u() {
        return this.f90805g;
    }

    public oh.E v() {
        return this.f90806h;
    }

    public C13479C x() {
        return this.f90808j;
    }

    public I y() {
        return this.f90801c;
    }
}
