package Xh;

import hi.C13486b;
import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C14518h;
import oh.C14539s;
import oh.G;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;

public class E extends AbstractC14545v {

    public C14539s f28948b;

    public l f28949c;

    public C13486b f28950d;

    public G f28951e;

    public C13486b f28952f;

    public AbstractC14551y f28953g;

    public G f28954h;

    public E(C14539s c14539s, l lVar, C13486b c13486b, G g10, C13486b c13486b2, AbstractC14551y abstractC14551y, G g11) {
        this.f28948b = c14539s;
        this.f28949c = lVar;
        this.f28950d = c13486b;
        this.f28951e = g10;
        this.f28952f = c13486b2;
        this.f28953g = abstractC14551y;
        this.f28954h = g11;
    }

    public static E z(Object obj) {
        if (obj instanceof E) {
            return (E) obj;
        }
        if (obj instanceof oh.E) {
            return new E((oh.E) obj);
        }
        throw new IllegalArgumentException("unknown object in factory: " + obj.getClass().getName());
    }

    public l A() {
        return this.f28949c;
    }

    public G B() {
        return this.f28954h;
    }

    public C14539s C() {
        return this.f28948b;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(7);
        c14518h.a(this.f28948b);
        c14518h.a(this.f28949c);
        c14518h.a(this.f28950d);
        G g10 = this.f28951e;
        if (g10 != null) {
            c14518h.a(new K0(false, 0, (InterfaceC14516g) g10));
        }
        c14518h.a(this.f28952f);
        c14518h.a(this.f28953g);
        G g11 = this.f28954h;
        if (g11 != null) {
            c14518h.a(new K0(false, 1, (InterfaceC14516g) g11));
        }
        return new G0(c14518h);
    }

    public G u() {
        return this.f28951e;
    }

    public C13486b v() {
        return this.f28950d;
    }

    public C13486b x() {
        return this.f28952f;
    }

    public AbstractC14551y y() {
        return this.f28953g;
    }

    public E(oh.E e10) {
        Enumeration J10 = e10.J();
        this.f28948b = (C14539s) J10.nextElement();
        this.f28949c = l.v(J10.nextElement());
        this.f28950d = C13486b.v(J10.nextElement());
        Object nextElement = J10.nextElement();
        if (nextElement instanceof M) {
            this.f28951e = G.G((M) nextElement, false);
            nextElement = J10.nextElement();
        } else {
            this.f28951e = null;
        }
        this.f28952f = C13486b.v(nextElement);
        this.f28953g = AbstractC14551y.F(J10.nextElement());
        if (J10.hasMoreElements()) {
            this.f28954h = G.G((M) J10.nextElement(), false);
        } else {
            this.f28954h = null;
        }
    }
}
