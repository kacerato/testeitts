package uh;

import oh.AbstractC14536q;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C14517g0;
import oh.C14518h;
import oh.C14539s;
import oh.C14554z0;

public class c0 extends AbstractC14545v {

    public C14539s f120644b;

    public AbstractC14536q f120645c;

    public G f120646d;

    public AbstractC14551y f120647e;

    public C15631w f120648f;

    public c0(AbstractC14536q abstractC14536q, G g10, AbstractC14551y abstractC14551y, C15631w c15631w) {
        this.f120644b = new C14539s(1L);
        this.f120645c = abstractC14536q;
        this.f120646d = g10;
        this.f120647e = abstractC14551y;
        this.f120648f = c15631w;
    }

    public static c0 y(Object obj) {
        return (obj == null || (obj instanceof c0)) ? (c0) obj : new c0(oh.E.G(obj));
    }

    public C15631w A() {
        return this.f120648f;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(5);
        c14518h.a(this.f120644b);
        AbstractC14536q abstractC14536q = this.f120645c;
        if (abstractC14536q != null) {
            c14518h.a(abstractC14536q);
        }
        G g10 = this.f120646d;
        if (g10 != null) {
            c14518h.a(g10);
        }
        AbstractC14551y abstractC14551y = this.f120647e;
        if (abstractC14551y != null) {
            c14518h.a(abstractC14551y);
        }
        c14518h.a(this.f120648f);
        return new C14517g0(c14518h);
    }

    public AbstractC14551y u() {
        return this.f120647e;
    }

    public C14554z0 v() {
        AbstractC14536q abstractC14536q = this.f120645c;
        return (abstractC14536q == null || (abstractC14536q instanceof C14554z0)) ? (C14554z0) abstractC14536q : new C14554z0(this.f120645c.getString(), false);
    }

    public AbstractC14536q x() {
        return this.f120645c;
    }

    public G z() {
        return this.f120646d;
    }

    public c0(oh.E e10) {
        this.f120644b = C14539s.F(e10.I(0));
        int i10 = 1;
        if (e10.I(1) instanceof AbstractC14536q) {
            this.f120645c = AbstractC14536q.F(e10.I(1));
            i10 = 2;
        }
        if ((e10.I(i10) instanceof G) || (e10.I(i10) instanceof oh.E)) {
            this.f120646d = G.w(e10.I(i10));
            i10++;
        }
        if (e10.I(i10) instanceof AbstractC14551y) {
            this.f120647e = AbstractC14551y.F(e10.I(i10));
            i10++;
        }
        this.f120648f = C15631w.v(e10.I(i10));
    }
}
