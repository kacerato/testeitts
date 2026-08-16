package uh;

import hi.C13486b;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C14518h;
import oh.C14539s;
import oh.G0;

public class B extends AbstractC14545v {

    public C14539s f120555b;

    public C15609A f120556c;

    public C13486b f120557d;

    public AbstractC14551y f120558e;

    public B(oh.E e10) {
        this.f120555b = (C14539s) e10.I(0);
        this.f120556c = C15609A.v(e10.I(1));
        this.f120557d = C13486b.v(e10.I(2));
        this.f120558e = (AbstractC14551y) e10.I(3);
    }

    public static B v(Object obj) {
        if (obj instanceof B) {
            return (B) obj;
        }
        if (obj != null) {
            return new B(oh.E.G(obj));
        }
        return null;
    }

    public static B w(oh.M m10, boolean z10) {
        return v(oh.E.H(m10, z10));
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(4);
        c14518h.a(this.f120555b);
        c14518h.a(this.f120556c);
        c14518h.a(this.f120557d);
        c14518h.a(this.f120558e);
        return new G0(c14518h);
    }

    public AbstractC14551y u() {
        return this.f120558e;
    }

    public C15609A x() {
        return this.f120556c;
    }

    public C13486b y() {
        return this.f120557d;
    }

    public C14539s z() {
        return this.f120555b;
    }

    public B(C15609A c15609a, C13486b c13486b, AbstractC14551y abstractC14551y) {
        this.f120555b = new C14539s(4L);
        this.f120556c = c15609a;
        this.f120557d = c13486b;
        this.f120558e = abstractC14551y;
    }
}
