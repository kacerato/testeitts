package hi;

import fi.C13228d;
import java.io.IOException;
import oh.C14518h;
import oh.C14530n;
import oh.C14539s;
import oh.G0;
import oh.K0;

public class t0 {

    public static final oh.E[] f90917h;

    public C13486b f90919b;

    public C13228d f90920c;

    public o0 f90921d;

    public C14539s f90918a = new C14539s(1);

    public o0 f90922e = null;

    public C13479C f90923f = null;

    public C14518h f90924g = new C14518h();

    static {
        f90917h = r0;
        oh.E[] eArr = {g(0), g(1), g(2), g(3), g(4), g(5), g(6), g(7), g(8), g(9), g(10)};
    }

    public static oh.E f(C14530n c14530n) {
        C14518h c14518h = new C14518h(2);
        try {
            c14518h.a(C13478B.f90539o);
            c14518h.a(new oh.C0(c14530n.getEncoded()));
            return new G0(c14518h);
        } catch (IOException e10) {
            throw new IllegalArgumentException("error encoding reason: " + ((Object) e10));
        }
    }

    public static oh.E g(int i10) {
        C14518h c14518h = new C14518h(2);
        C13503o w10 = C13503o.w(i10);
        try {
            c14518h.a(C13478B.f90537m);
            c14518h.a(new oh.C0(w10.getEncoded()));
            return new G0(c14518h);
        } catch (IOException e10) {
            throw new IllegalArgumentException("error encoding reason: " + ((Object) e10));
        }
    }

    public void a(C14539s c14539s, o0 o0Var, int i10) {
        b(c14539s, o0Var, i10, null);
    }

    public void b(C14539s c14539s, o0 o0Var, int i10, C14530n c14530n) {
        G0 g02;
        oh.E g10;
        if (i10 != 0) {
            C14518h c14518h = new C14518h(2);
            oh.E[] eArr = f90917h;
            if (i10 >= eArr.length) {
                g10 = g(i10);
            } else {
                if (i10 < 0) {
                    throw new IllegalArgumentException("invalid reason value: " + i10);
                }
                g10 = eArr[i10];
            }
            c14518h.a(g10);
            if (c14530n != null) {
                c14518h.a(f(c14530n));
            }
            g02 = new G0(c14518h);
        } else {
            if (c14530n == null) {
                c(c14539s, o0Var, null);
                return;
            }
            g02 = new G0(f(c14530n));
        }
        k(c14539s, o0Var, g02);
    }

    public void c(C14539s c14539s, o0 o0Var, C13479C c13479c) {
        C14518h c14518h = new C14518h(3);
        c14518h.a(c14539s);
        c14518h.a(o0Var);
        if (c13479c != null) {
            c14518h.a(c13479c);
        }
        e(new G0(c14518h));
    }

    public void d(C14539s c14539s, oh.P p10, int i10) {
        a(c14539s, new o0(p10), i10);
    }

    public void e(oh.E e10) {
        this.f90924g.a(e10);
    }

    public oh.E h() {
        if (this.f90919b != null) {
            throw new IllegalStateException("signature should not be set in PreTBSCertList generator");
        }
        if (this.f90920c == null || this.f90921d == null) {
            throw new IllegalStateException("not all mandatory fields set in V2 PreTBSCertList generator");
        }
        return j();
    }

    public i0 i() {
        if (this.f90919b == null || this.f90920c == null || this.f90921d == null) {
            throw new IllegalStateException("not all mandatory fields set in V2 TBSCertList generator");
        }
        return new i0(j());
    }

    public final oh.E j() {
        C14518h c14518h = new C14518h(7);
        c14518h.a(this.f90918a);
        C13486b c13486b = this.f90919b;
        if (c13486b != null) {
            c14518h.a(c13486b);
        }
        c14518h.a(this.f90920c);
        c14518h.a(this.f90921d);
        o0 o0Var = this.f90922e;
        if (o0Var != null) {
            c14518h.a(o0Var);
        }
        if (this.f90924g.i() != 0) {
            c14518h.a(new G0(this.f90924g));
        }
        C13479C c13479c = this.f90923f;
        if (c13479c != null) {
            c14518h.a(new K0(0, c13479c));
        }
        return new G0(c14518h);
    }

    public final void k(C14539s c14539s, o0 o0Var, oh.E e10) {
        C14518h c14518h = new C14518h(3);
        c14518h.a(c14539s);
        c14518h.a(o0Var);
        if (e10 != null) {
            c14518h.a(e10);
        }
        e(new G0(c14518h));
    }

    public void l(C13479C c13479c) {
        this.f90923f = c13479c;
    }

    public void m(z0 z0Var) {
        l(C13479C.C(z0Var));
    }

    public void n(C13228d c13228d) {
        this.f90920c = c13228d;
    }

    public void o(B0 b02) {
        this.f90920c = C13228d.x(b02.r());
    }

    public void p(o0 o0Var) {
        this.f90922e = o0Var;
    }

    public void q(oh.P p10) {
        this.f90922e = new o0(p10);
    }

    public void r(C13486b c13486b) {
        this.f90919b = c13486b;
    }

    public void s(o0 o0Var) {
        this.f90921d = o0Var;
    }

    public void t(oh.P p10) {
        this.f90921d = new o0(p10);
    }
}
