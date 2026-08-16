package hi;

import fi.C13228d;
import oh.C14518h;
import oh.C14539s;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;

public class q0 {

    public K0 f90888a = new K0(true, 0, (InterfaceC14516g) new C14539s(0));

    public C14539s f90889b;

    public C13486b f90890c;

    public C13228d f90891d;

    public o0 f90892e;

    public o0 f90893f;

    public C13228d f90894g;

    public h0 f90895h;

    public j0 a() {
        if (this.f90889b == null || this.f90890c == null || this.f90891d == null || this.f90892e == null || this.f90893f == null || this.f90894g == null || this.f90895h == null) {
            throw new IllegalStateException("not all mandatory fields set in V1 TBScertificate generator");
        }
        C14518h c14518h = new C14518h(6);
        c14518h.a(this.f90889b);
        c14518h.a(this.f90890c);
        c14518h.a(this.f90891d);
        C14518h c14518h2 = new C14518h(2);
        c14518h2.a(this.f90892e);
        c14518h2.a(this.f90893f);
        c14518h.a(new G0(c14518h2));
        c14518h.a(this.f90894g);
        c14518h.a(this.f90895h);
        return j0.w(new G0(c14518h));
    }

    public void b(o0 o0Var) {
        this.f90893f = o0Var;
    }

    public void c(oh.P p10) {
        this.f90893f = new o0(p10);
    }

    public void d(C13228d c13228d) {
        this.f90891d = c13228d;
    }

    public void e(B0 b02) {
        this.f90891d = C13228d.x(b02.r());
    }

    public void f(C14539s c14539s) {
        this.f90889b = c14539s;
    }

    public void g(C13486b c13486b) {
        this.f90890c = c13486b;
    }

    public void h(o0 o0Var) {
        this.f90892e = o0Var;
    }

    public void i(oh.P p10) {
        this.f90892e = new o0(p10);
    }

    public void j(C13228d c13228d) {
        this.f90894g = c13228d;
    }

    public void k(B0 b02) {
        this.f90894g = C13228d.x(b02.r());
    }

    public void l(h0 h0Var) {
        this.f90895h = h0Var;
    }
}
