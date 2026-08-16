package hi;

import oh.C14518h;
import oh.C14530n;
import oh.C14538r0;
import oh.C14539s;
import oh.C14549x;
import oh.G0;
import oh.I0;
import oh.InterfaceC14516g;

public class r0 {

    public I f90902b;

    public C13492e f90903c;

    public C13486b f90904d;

    public C14539s f90905e;

    public C14538r0 f90907g;

    public C13479C f90908h;

    public C14530n f90909i;

    public C14530n f90910j;

    public C14539s f90901a = new C14539s(1);

    public C14518h f90906f = new C14518h();

    public void a(C13495g c13495g) {
        this.f90906f.a(c13495g);
    }

    public void b(String str, InterfaceC14516g interfaceC14516g) {
        this.f90906f.a(new C13495g(new C14549x(str), new I0(interfaceC14516g)));
    }

    public C13497i c() {
        if (this.f90905e == null || this.f90904d == null || this.f90903c == null || this.f90909i == null || this.f90910j == null || this.f90902b == null || this.f90906f == null) {
            throw new IllegalStateException("not all mandatory fields set in V2 AttributeCertificateInfo generator");
        }
        C14518h c14518h = new C14518h(9);
        c14518h.a(this.f90901a);
        c14518h.a(this.f90902b);
        c14518h.a(this.f90903c);
        c14518h.a(this.f90904d);
        c14518h.a(this.f90905e);
        c14518h.a(new C13494f(this.f90909i, this.f90910j));
        c14518h.a(new G0(this.f90906f));
        C14538r0 c14538r0 = this.f90907g;
        if (c14538r0 != null) {
            c14518h.a(c14538r0);
        }
        C13479C c13479c = this.f90908h;
        if (c13479c != null) {
            c14518h.a(c13479c);
        }
        return C13497i.z(new G0(c14518h));
    }

    public void d(C14530n c14530n) {
        this.f90910j = c14530n;
    }

    public void e(C13479C c13479c) {
        this.f90908h = c13479c;
    }

    public void f(z0 z0Var) {
        this.f90908h = C13479C.C(z0Var.r());
    }

    public void g(I i10) {
        this.f90902b = i10;
    }

    public void h(C13492e c13492e) {
        this.f90903c = c13492e;
    }

    public void i(C14538r0 c14538r0) {
        this.f90907g = c14538r0;
    }

    public void j(C14539s c14539s) {
        this.f90905e = c14539s;
    }

    public void k(C13486b c13486b) {
        this.f90904d = c13486b;
    }

    public void l(C14530n c14530n) {
        this.f90909i = c14530n;
    }
}
