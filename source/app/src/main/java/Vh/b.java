package Vh;

import hi.C13486b;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C14518h;
import oh.C14539s;
import oh.E;
import oh.G0;
import oh.M;

public class b extends AbstractC14545v {

    public C13486b f27017b;

    public AbstractC14551y f27018c;

    public AbstractC14551y f27019d;

    public C14539s f27020e;

    public b(C13486b c13486b, AbstractC14551y abstractC14551y, AbstractC14551y abstractC14551y2, C14539s c14539s) {
        this.f27017b = c13486b;
        this.f27018c = abstractC14551y;
        this.f27019d = abstractC14551y2;
        this.f27020e = c14539s;
    }

    public static b v(Object obj) {
        if (obj instanceof b) {
            return (b) obj;
        }
        if (obj != null) {
            return new b(E.G(obj));
        }
        return null;
    }

    public static b w(M m10, boolean z10) {
        return v(E.H(m10, z10));
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(4);
        c14518h.a(this.f27017b);
        c14518h.a(this.f27018c);
        c14518h.a(this.f27019d);
        c14518h.a(this.f27020e);
        return new G0(c14518h);
    }

    public C13486b u() {
        return this.f27017b;
    }

    public AbstractC14551y x() {
        return this.f27019d;
    }

    public AbstractC14551y y() {
        return this.f27018c;
    }

    public C14539s z() {
        return this.f27020e;
    }

    public b(E e10) {
        this.f27017b = C13486b.v(e10.I(0));
        this.f27018c = (AbstractC14551y) e10.I(1);
        this.f27019d = (AbstractC14551y) e10.I(2);
        this.f27020e = (C14539s) e10.I(3);
    }
}
