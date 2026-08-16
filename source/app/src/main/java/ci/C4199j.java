package ci;

import hi.C13479C;
import hi.C13481E;
import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.B;
import oh.C14512e;
import oh.C14518h;
import oh.C14530n;
import oh.C14539s;
import oh.C14549x;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;

public class C4199j extends AbstractC14545v {

    public C14539s f34849b;

    public C14549x f34850c;

    public C4197h f34851d;

    public C14539s f34852e;

    public C14530n f34853f;

    public C4190a f34854g;

    public C14512e f34855h;

    public C14539s f34856i;

    public C13481E f34857j;

    public C13479C f34858k;

    public C4199j(C14549x c14549x, C4197h c4197h, C14539s c14539s, C14530n c14530n, C4190a c4190a, C14512e c14512e, C14539s c14539s2, C13481E c13481e, C13479C c13479c) {
        this.f34849b = new C14539s(1L);
        this.f34850c = c14549x;
        this.f34851d = c4197h;
        this.f34852e = c14539s;
        this.f34853f = c14530n;
        this.f34854g = c4190a;
        this.f34855h = c14512e;
        this.f34856i = c14539s2;
        this.f34857j = c13481e;
        this.f34858k = c13479c;
    }

    public static C4199j y(Object obj) {
        if (obj instanceof C4199j) {
            return (C4199j) obj;
        }
        if (obj != null) {
            return new C4199j(E.G(obj));
        }
        return null;
    }

    public C14539s A() {
        return this.f34856i;
    }

    public C14512e B() {
        return this.f34855h;
    }

    public C14549x C() {
        return this.f34850c;
    }

    public C14539s D() {
        return this.f34852e;
    }

    public C13481E E() {
        return this.f34857j;
    }

    public C14539s F() {
        return this.f34849b;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(10);
        c14518h.a(this.f34849b);
        c14518h.a(this.f34850c);
        c14518h.a(this.f34851d);
        c14518h.a(this.f34852e);
        c14518h.a(this.f34853f);
        C4190a c4190a = this.f34854g;
        if (c4190a != null) {
            c14518h.a(c4190a);
        }
        C14512e c14512e = this.f34855h;
        if (c14512e != null && c14512e.J()) {
            c14518h.a(this.f34855h);
        }
        C14539s c14539s = this.f34856i;
        if (c14539s != null) {
            c14518h.a(c14539s);
        }
        C13481E c13481e = this.f34857j;
        if (c13481e != null) {
            c14518h.a(new K0(true, 0, (InterfaceC14516g) c13481e));
        }
        C13479C c13479c = this.f34858k;
        if (c13479c != null) {
            c14518h.a(new K0(false, 1, (InterfaceC14516g) c13479c));
        }
        return new G0(c14518h);
    }

    public C4190a u() {
        return this.f34854g;
    }

    public C13479C v() {
        return this.f34858k;
    }

    public C14530n x() {
        return this.f34853f;
    }

    public C4197h z() {
        return this.f34851d;
    }

    public C4199j(E e10) {
        AbstractC14545v abstractC14545v;
        Enumeration J10 = e10.J();
        this.f34849b = C14539s.F(J10.nextElement());
        this.f34850c = C14549x.K(J10.nextElement());
        this.f34851d = C4197h.w(J10.nextElement());
        this.f34852e = C14539s.F(J10.nextElement());
        this.f34853f = C14530n.J(J10.nextElement());
        C14512e I10 = C14512e.I(false);
        while (true) {
            this.f34855h = I10;
            while (J10.hasMoreElements()) {
                abstractC14545v = (AbstractC14545v) J10.nextElement();
                if (abstractC14545v instanceof M) {
                    M m10 = (M) abstractC14545v;
                    int g10 = m10.g();
                    if (g10 == 0) {
                        this.f34857j = C13481E.w(m10, true);
                    } else {
                        if (g10 != 1) {
                            throw new IllegalArgumentException("Unknown tag value " + m10.g());
                        }
                        this.f34858k = C13479C.D(m10, false);
                    }
                } else if ((abstractC14545v instanceof E) || (abstractC14545v instanceof C4190a)) {
                    this.f34854g = C4190a.u(abstractC14545v);
                } else if (abstractC14545v instanceof C14512e) {
                    break;
                } else if (abstractC14545v instanceof C14539s) {
                    this.f34856i = C14539s.F(abstractC14545v);
                }
            }
            return;
            I10 = C14512e.G(abstractC14545v);
        }
    }
}
