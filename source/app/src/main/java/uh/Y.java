package uh;

import hi.C13486b;
import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C14518h;
import oh.C14539s;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;

public class Y extends AbstractC14545v {

    public C14539s f120629b;

    public X f120630c;

    public C13486b f120631d;

    public oh.G f120632e;

    public C13486b f120633f;

    public AbstractC14551y f120634g;

    public oh.G f120635h;

    public Y(oh.E e10) {
        Enumeration J10 = e10.J();
        this.f120629b = (C14539s) J10.nextElement();
        this.f120630c = X.v(J10.nextElement());
        this.f120631d = C13486b.v(J10.nextElement());
        Object nextElement = J10.nextElement();
        if (nextElement instanceof oh.M) {
            this.f120632e = oh.G.G((oh.M) nextElement, false);
            nextElement = J10.nextElement();
        } else {
            this.f120632e = null;
        }
        this.f120633f = C13486b.v(nextElement);
        this.f120634g = AbstractC14551y.F(J10.nextElement());
        if (J10.hasMoreElements()) {
            this.f120635h = oh.G.G((oh.M) J10.nextElement(), false);
        } else {
            this.f120635h = null;
        }
    }

    public static Y z(Object obj) throws IllegalArgumentException {
        if (obj instanceof Y) {
            return (Y) obj;
        }
        if (obj != null) {
            return new Y(oh.E.G(obj));
        }
        return null;
    }

    public X A() {
        return this.f120630c;
    }

    public oh.G B() {
        return this.f120635h;
    }

    public C14539s C() {
        return this.f120629b;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(7);
        c14518h.a(this.f120629b);
        c14518h.a(this.f120630c);
        c14518h.a(this.f120631d);
        oh.G g10 = this.f120632e;
        if (g10 != null) {
            c14518h.a(new K0(false, 0, (InterfaceC14516g) g10));
        }
        c14518h.a(this.f120633f);
        c14518h.a(this.f120634g);
        oh.G g11 = this.f120635h;
        if (g11 != null) {
            c14518h.a(new K0(false, 1, (InterfaceC14516g) g11));
        }
        return new G0(c14518h);
    }

    public oh.G u() {
        return this.f120632e;
    }

    public C13486b v() {
        return this.f120631d;
    }

    public C13486b x() {
        return this.f120633f;
    }

    public AbstractC14551y y() {
        return this.f120634g;
    }

    public Y(X x10, C13486b c13486b, oh.G g10, C13486b c13486b2, AbstractC14551y abstractC14551y, oh.G g11) {
        this.f120629b = x10.x() ? new C14539s(3L) : new C14539s(1L);
        this.f120630c = x10;
        this.f120631d = c13486b;
        this.f120632e = g10;
        this.f120633f = c13486b2;
        this.f120634g = abstractC14551y;
        this.f120635h = g11;
    }

    public Y(X x10, C13486b c13486b, C15612c c15612c, C13486b c13486b2, AbstractC14551y abstractC14551y, C15612c c15612c2) {
        this.f120629b = x10.x() ? new C14539s(3L) : new C14539s(1L);
        this.f120630c = x10;
        this.f120631d = c13486b;
        this.f120632e = oh.G.F(c15612c);
        this.f120633f = c13486b2;
        this.f120634g = abstractC14551y;
        this.f120635h = oh.G.F(c15612c2);
    }
}
