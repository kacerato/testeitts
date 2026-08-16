package wh;

import fi.C13228d;
import hi.C13479C;
import hi.C13486b;
import hi.h0;
import hi.z0;
import oh.C14518h;
import oh.C14538r0;
import oh.C14539s;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;

public class h {

    public C14539s f127505a;

    public C14539s f127506b;

    public C13486b f127507c;

    public C13228d f127508d;

    public n f127509e;

    public C13228d f127510f;

    public h0 f127511g;

    public C14538r0 f127512h;

    public C14538r0 f127513i;

    public C13479C f127514j;

    public final void a(C14518h c14518h, int i10, boolean z10, InterfaceC14516g interfaceC14516g) {
        if (interfaceC14516g != null) {
            c14518h.a(new K0(z10, i10, interfaceC14516g));
        }
    }

    public g b() {
        C14518h c14518h = new C14518h(10);
        a(c14518h, 0, false, this.f127505a);
        a(c14518h, 1, false, this.f127506b);
        a(c14518h, 2, false, this.f127507c);
        a(c14518h, 3, true, this.f127508d);
        a(c14518h, 4, false, this.f127509e);
        a(c14518h, 5, true, this.f127510f);
        a(c14518h, 6, false, this.f127511g);
        a(c14518h, 7, false, this.f127512h);
        a(c14518h, 8, false, this.f127513i);
        a(c14518h, 9, false, this.f127514j);
        return g.v(new G0(c14518h));
    }

    public h c(C13479C c13479c) {
        this.f127514j = c13479c;
        return this;
    }

    public h d(z0 z0Var) {
        return c(C13479C.C(z0Var));
    }

    public h e(C13228d c13228d) {
        this.f127508d = c13228d;
        return this;
    }

    public h f(C14538r0 c14538r0) {
        this.f127512h = c14538r0;
        return this;
    }

    public h g(h0 h0Var) {
        this.f127511g = h0Var;
        return this;
    }

    public h h(C14539s c14539s) {
        this.f127506b = c14539s;
        return this;
    }

    public h i(C13486b c13486b) {
        this.f127507c = c13486b;
        return this;
    }

    public h j(C13228d c13228d) {
        this.f127510f = c13228d;
        return this;
    }

    public h k(C14538r0 c14538r0) {
        this.f127513i = c14538r0;
        return this;
    }

    public h l(n nVar) {
        this.f127509e = nVar;
        return this;
    }

    public h m(int i10) {
        this.f127505a = new C14539s(i10);
        return this;
    }
}
