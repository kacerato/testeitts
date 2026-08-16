package hi;

import fi.C13228d;
import java.util.Enumeration;
import oh.AbstractC14508c;
import oh.AbstractC14545v;
import oh.C14518h;
import oh.C14539s;
import oh.C14549x;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;

public class C13509v extends AbstractC14545v {

    public final C14539s f90940b;

    public C13486b f90941c;

    public C13228d f90942d;

    public oh.E f90943e;

    public C13228d f90944f;

    public h0 f90945g;

    public C13479C f90946h;

    public final AbstractC14508c f90947i;

    public C13509v(oh.E e10) {
        this.f90940b = C14539s.F(e10.I(0));
        InterfaceC14516g I10 = e10.I(1);
        int i10 = 1;
        while (I10 instanceof oh.M) {
            oh.M R10 = oh.M.R(I10);
            int g10 = R10.g();
            if (g10 == 0) {
                this.f90941c = C13486b.w(R10, false);
            } else if (g10 == 1) {
                this.f90942d = C13228d.y(R10, true);
            } else if (g10 == 2) {
                this.f90943e = oh.E.H(R10, false);
            } else if (g10 == 3) {
                this.f90944f = C13228d.y(R10, true);
            }
            int i11 = i10 + 1;
            InterfaceC14516g I11 = e10.I(i10);
            i10 = i11;
            I10 = I11;
        }
        this.f90945g = h0.w(I10);
        InterfaceC14516g I12 = e10.I(i10);
        while (I12 instanceof oh.M) {
            oh.M R11 = oh.M.R(I12);
            if (R11.g() == 4) {
                this.f90946h = C13479C.D(R11, false);
            }
            InterfaceC14516g I13 = e10.I(i10);
            i10++;
            I12 = I13;
        }
        this.f90947i = AbstractC14508c.H(I12);
    }

    public static C13509v v(C13479C c13479c) {
        return y(C13479C.A(c13479c, C13478B.f90528N));
    }

    public static C13509v y(Object obj) {
        if (obj instanceof C13509v) {
            return (C13509v) obj;
        }
        if (obj != null) {
            return new C13509v(oh.E.G(obj));
        }
        return null;
    }

    public C14539s A() {
        return this.f90940b;
    }

    public C13486b B() {
        return this.f90941c;
    }

    public AbstractC14508c C() {
        return this.f90947i;
    }

    public C13228d D() {
        return this.f90944f;
    }

    public h0 E() {
        return this.f90945g;
    }

    public oh.E F() {
        return this.f90943e;
    }

    public C13509v G(j0 j0Var, C13479C c13479c) {
        C13486b c13486b = j0Var.f90823e;
        C13228d c13228d = j0Var.f90824f;
        G0 g02 = new G0(new InterfaceC14516g[]{j0Var.f90825g, j0Var.f90826h});
        C13228d c13228d2 = j0Var.f90827i;
        oh.E G10 = oh.E.G(r());
        C14518h c14518h = new C14518h();
        Enumeration J10 = G10.J();
        InterfaceC14516g interfaceC14516g = (InterfaceC14516g) J10.nextElement();
        loop0: while (true) {
            c14518h.a(interfaceC14516g);
            while (true) {
                interfaceC14516g = (InterfaceC14516g) J10.nextElement();
                if (!(interfaceC14516g instanceof oh.M)) {
                    break loop0;
                }
                oh.M R10 = oh.M.R(interfaceC14516g);
                int g10 = R10.g();
                if (g10 != 0) {
                    if (g10 != 1) {
                        if (g10 != 2) {
                            if (g10 == 3 && !C13228d.y(R10, true).equals(c13228d2)) {
                                break;
                            }
                        } else if (!oh.E.H(R10, false).A(g02)) {
                            break;
                        }
                    } else if (!C13228d.y(R10, true).equals(c13228d)) {
                        break;
                    }
                } else if (!C13486b.w(R10, false).equals(c13486b)) {
                    break;
                }
            }
        }
        c14518h.a(interfaceC14516g);
        while (true) {
            InterfaceC14516g interfaceC14516g2 = (InterfaceC14516g) J10.nextElement();
            if (!(interfaceC14516g2 instanceof oh.M)) {
                c14518h.a(interfaceC14516g2);
                return new C13509v(new G0(c14518h));
            }
            oh.M R11 = oh.M.R(interfaceC14516g2);
            if (R11.g() == 4) {
                C13479C D10 = C13479C.D(R11, false);
                C13480D c13480d = new C13480D();
                Enumeration F10 = D10.F();
                while (F10.hasMoreElements()) {
                    C13478B x10 = D10.x((C14549x) F10.nextElement());
                    C13478B x11 = c13479c.x(x10.x());
                    if (x11 != null && !x10.equals(x11)) {
                        c13480d.a(x10);
                    }
                }
                if (!c13480d.h()) {
                    c14518h.a(new K0(false, 4, (InterfaceC14516g) c13480d.e()));
                }
            }
        }
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(7);
        c14518h.a(this.f90940b);
        u(c14518h, 0, false, this.f90941c);
        u(c14518h, 1, true, this.f90942d);
        u(c14518h, 2, false, this.f90943e);
        u(c14518h, 3, true, this.f90944f);
        c14518h.a(this.f90945g);
        u(c14518h, 4, false, this.f90946h);
        c14518h.a(this.f90947i);
        return new G0(c14518h);
    }

    public final void u(C14518h c14518h, int i10, boolean z10, AbstractC14545v abstractC14545v) {
        if (abstractC14545v != null) {
            c14518h.a(new K0(z10, i10, abstractC14545v));
        }
    }

    public C13479C x() {
        return this.f90946h;
    }

    public C13228d z() {
        return this.f90942d;
    }
}
