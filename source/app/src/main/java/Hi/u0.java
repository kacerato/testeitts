package hi;

import fi.C13228d;
import oh.C14518h;
import oh.C14538r0;
import oh.C14539s;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;

public class u0 {

    public K0 f90928a = new K0(true, 0, (InterfaceC14516g) new C14539s(2));

    public C14539s f90929b;

    public C13486b f90930c;

    public C13228d f90931d;

    public o0 f90932e;

    public o0 f90933f;

    public C13228d f90934g;

    public h0 f90935h;

    public C13479C f90936i;

    public boolean f90937j;

    public C14538r0 f90938k;

    public C14538r0 f90939l;

    public oh.E a() {
        if (this.f90930c != null) {
            throw new IllegalStateException("signature field should not be set in PreTBSCertificate");
        }
        if (this.f90929b == null || this.f90931d == null || this.f90932e == null || this.f90933f == null || ((this.f90934g == null && !this.f90937j) || this.f90935h == null)) {
            throw new IllegalStateException("not all mandatory fields set in V3 TBScertificate generator");
        }
        return c();
    }

    public j0 b() {
        if (this.f90929b == null || this.f90930c == null || this.f90931d == null || this.f90932e == null || this.f90933f == null || ((this.f90934g == null && !this.f90937j) || this.f90935h == null)) {
            throw new IllegalStateException("not all mandatory fields set in V3 TBScertificate generator");
        }
        return j0.w(c());
    }

    public final oh.E c() {
        C14518h c14518h = new C14518h(10);
        c14518h.a(this.f90928a);
        c14518h.a(this.f90929b);
        C13486b c13486b = this.f90930c;
        if (c13486b != null) {
            c14518h.a(c13486b);
        }
        c14518h.a(this.f90931d);
        C14518h c14518h2 = new C14518h(2);
        c14518h2.a(this.f90932e);
        c14518h2.a(this.f90933f);
        c14518h.a(new G0(c14518h2));
        InterfaceC14516g interfaceC14516g = this.f90934g;
        if (interfaceC14516g == null) {
            interfaceC14516g = new G0();
        }
        c14518h.a(interfaceC14516g);
        c14518h.a(this.f90935h);
        C14538r0 c14538r0 = this.f90938k;
        if (c14538r0 != null) {
            c14518h.a(new K0(false, 1, (InterfaceC14516g) c14538r0));
        }
        C14538r0 c14538r02 = this.f90939l;
        if (c14538r02 != null) {
            c14518h.a(new K0(false, 2, (InterfaceC14516g) c14538r02));
        }
        C13479C c13479c = this.f90936i;
        if (c13479c != null) {
            c14518h.a(new K0(true, 3, (InterfaceC14516g) c13479c));
        }
        return new G0(c14518h);
    }

    public void d(o0 o0Var) {
        this.f90933f = o0Var;
    }

    public void e(oh.P p10) {
        this.f90933f = new o0(p10);
    }

    public void f(C13479C c13479c) {
        C13478B x10;
        this.f90936i = c13479c;
        if (c13479c == null || (x10 = c13479c.x(C13478B.f90533i)) == null || !x10.B()) {
            return;
        }
        this.f90937j = true;
    }

    public void g(z0 z0Var) {
        f(C13479C.C(z0Var));
    }

    public void h(C13228d c13228d) {
        this.f90931d = c13228d;
    }

    public void i(B0 b02) {
        this.f90931d = C13228d.x(b02);
    }

    public void j(C14538r0 c14538r0) {
        this.f90938k = c14538r0;
    }

    public void k(C14539s c14539s) {
        this.f90929b = c14539s;
    }

    public void l(C13486b c13486b) {
        this.f90930c = c13486b;
    }

    public void m(o0 o0Var) {
        this.f90932e = o0Var;
    }

    public void n(oh.P p10) {
        this.f90932e = new o0(p10);
    }

    public void o(C13228d c13228d) {
        this.f90934g = c13228d;
    }

    public void p(B0 b02) {
        this.f90934g = C13228d.x(b02.r());
    }

    public void q(h0 h0Var) {
        this.f90935h = h0Var;
    }

    public void r(C14538r0 c14538r0) {
        this.f90939l = c14538r0;
    }
}
