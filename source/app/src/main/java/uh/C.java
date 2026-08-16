package uh;

import hi.C13486b;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C14518h;
import oh.C14539s;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;

public class C extends AbstractC14545v {

    public final C14539s f120559b;

    public final P f120560c;

    public final C13486b f120561d;

    public final AbstractC14551y f120562e;

    public final C13486b f120563f;

    public final C14539s f120564g;

    public final AbstractC14551y f120565h;

    public final C13486b f120566i;

    public final AbstractC14551y f120567j;

    public C(oh.E e10) {
        if (e10.size() != 3) {
            throw new IllegalArgumentException("sequence must consist of 3 elements");
        }
        this.f120559b = C14539s.F(e10.I(0));
        this.f120560c = P.v(e10.I(1));
        this.f120561d = C13486b.v(e10.I(2));
        this.f120562e = AbstractC14551y.F(e10.I(3));
        this.f120563f = C13486b.v(e10.I(4));
        this.f120564g = C14539s.F(e10.I(5));
        int i10 = 6;
        if (e10.I(6) instanceof oh.M) {
            this.f120565h = AbstractC14551y.G(oh.M.R(e10.I(6)), true);
            i10 = 7;
        } else {
            this.f120565h = null;
        }
        this.f120566i = C13486b.v(e10.I(i10));
        this.f120567j = AbstractC14551y.F(e10.I(i10 + 1));
    }

    public static C v(Object obj) {
        if (obj instanceof C) {
            return (C) obj;
        }
        if (obj != null) {
            return new C(oh.E.G(obj));
        }
        return null;
    }

    public P A() {
        return this.f120560c;
    }

    public byte[] B() {
        AbstractC14551y abstractC14551y = this.f120565h;
        if (abstractC14551y == null) {
            return null;
        }
        return abstractC14551y.H();
    }

    public C13486b C() {
        return this.f120566i;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h();
        c14518h.a(this.f120559b);
        c14518h.a(this.f120560c);
        c14518h.a(this.f120561d);
        c14518h.a(this.f120562e);
        c14518h.a(this.f120563f);
        c14518h.a(this.f120564g);
        AbstractC14551y abstractC14551y = this.f120565h;
        if (abstractC14551y != null) {
            c14518h.a(new K0(true, 0, (InterfaceC14516g) abstractC14551y));
        }
        c14518h.a(this.f120566i);
        c14518h.a(this.f120567j);
        return new G0(c14518h);
    }

    public AbstractC14551y u() {
        return this.f120567j;
    }

    public C13486b x() {
        return this.f120563f;
    }

    public C13486b y() {
        return this.f120561d;
    }

    public AbstractC14551y z() {
        return this.f120562e;
    }

    public C(P p10, C13486b c13486b, AbstractC14551y abstractC14551y, C13486b c13486b2, C14539s c14539s, AbstractC14551y abstractC14551y2, C13486b c13486b3, AbstractC14551y abstractC14551y3) {
        if (c13486b == null) {
            throw new NullPointerException("kem cannot be null");
        }
        if (c13486b3 == null) {
            throw new NullPointerException("wrap cannot be null");
        }
        this.f120559b = new C14539s(0L);
        this.f120560c = p10;
        this.f120561d = c13486b;
        this.f120562e = abstractC14551y;
        this.f120563f = c13486b2;
        this.f120564g = c14539s;
        this.f120565h = abstractC14551y2;
        this.f120566i = c13486b3;
        this.f120567j = abstractC14551y3;
    }
}
