package Vh;

import hi.C13479C;
import hi.z0;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.C14530n;
import oh.C14539s;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;

public class l extends AbstractC14545v {

    public static final C14539s f27052h = new C14539s(0);

    public boolean f27053b;

    public C14539s f27054c;

    public j f27055d;

    public C14530n f27056e;

    public E f27057f;

    public C13479C f27058g;

    public l(j jVar, C14530n c14530n, E e10, C13479C c13479c) {
        this(f27052h, jVar, c14530n, e10, c13479c);
    }

    public static l u(Object obj) {
        if (obj instanceof l) {
            return (l) obj;
        }
        if (obj != null) {
            return new l(E.G(obj));
        }
        return null;
    }

    public static l v(M m10, boolean z10) {
        return u(E.H(m10, z10));
    }

    public E A() {
        return this.f27057f;
    }

    public C14539s B() {
        return this.f27054c;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(5);
        if (this.f27053b || !this.f27054c.A(f27052h)) {
            c14518h.a(new K0(true, 0, (InterfaceC14516g) this.f27054c));
        }
        c14518h.a(this.f27055d);
        c14518h.a(this.f27056e);
        c14518h.a(this.f27057f);
        C13479C c13479c = this.f27058g;
        if (c13479c != null) {
            c14518h.a(new K0(true, 1, (InterfaceC14516g) c13479c));
        }
        return new G0(c14518h);
    }

    public C14530n x() {
        return this.f27056e;
    }

    public j y() {
        return this.f27055d;
    }

    public C13479C z() {
        return this.f27058g;
    }

    public l(j jVar, C14530n c14530n, E e10, z0 z0Var) {
        this(f27052h, jVar, C14530n.J(c14530n), e10, C13479C.C(z0Var));
    }

    public l(C14539s c14539s, j jVar, C14530n c14530n, E e10, C13479C c13479c) {
        this.f27054c = c14539s;
        this.f27055d = jVar;
        this.f27056e = c14530n;
        this.f27057f = e10;
        this.f27058g = c13479c;
    }

    public l(E e10) {
        int i10 = 0;
        if ((e10.I(0) instanceof M) && ((M) e10.I(0)).g() == 0) {
            this.f27053b = true;
            this.f27054c = C14539s.G((M) e10.I(0), true);
            i10 = 1;
        } else {
            this.f27054c = f27052h;
        }
        this.f27055d = j.u(e10.I(i10));
        int i11 = i10 + 2;
        this.f27056e = C14530n.J(e10.I(i10 + 1));
        int i12 = i10 + 3;
        this.f27057f = (E) e10.I(i11);
        if (e10.size() > i12) {
            this.f27058g = C13479C.D((M) e10.I(i12), true);
        }
    }
}
