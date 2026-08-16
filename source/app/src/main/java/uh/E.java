package uh;

import hi.C13486b;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C14518h;
import oh.C14539s;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;

public class E extends AbstractC14545v {

    public C14539s f120570b;

    public H f120571c;

    public AbstractC14551y f120572d;

    public C13486b f120573e;

    public oh.E f120574f;

    public E(oh.E e10) {
        this.f120570b = (C14539s) e10.I(0);
        this.f120571c = H.w((oh.M) e10.I(1), true);
        int i10 = 2;
        if (e10.I(2) instanceof oh.M) {
            this.f120572d = AbstractC14551y.G((oh.M) e10.I(2), true);
            i10 = 3;
        }
        this.f120573e = C13486b.v(e10.I(i10));
        this.f120574f = (oh.E) e10.I(i10 + 1);
    }

    public static E u(Object obj) {
        if (obj instanceof E) {
            return (E) obj;
        }
        if (obj != null) {
            return new E(oh.E.G(obj));
        }
        return null;
    }

    public static E v(oh.M m10, boolean z10) {
        return u(oh.E.H(m10, z10));
    }

    public AbstractC14551y A() {
        return this.f120572d;
    }

    public C14539s B() {
        return this.f120570b;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(5);
        c14518h.a(this.f120570b);
        c14518h.a(new K0(true, 0, (InterfaceC14516g) this.f120571c));
        AbstractC14551y abstractC14551y = this.f120572d;
        if (abstractC14551y != null) {
            c14518h.a(new K0(true, 1, (InterfaceC14516g) abstractC14551y));
        }
        c14518h.a(this.f120573e);
        c14518h.a(this.f120574f);
        return new G0(c14518h);
    }

    public C13486b x() {
        return this.f120573e;
    }

    public H y() {
        return this.f120571c;
    }

    public oh.E z() {
        return this.f120574f;
    }

    public E(H h10, AbstractC14551y abstractC14551y, C13486b c13486b, oh.E e10) {
        this.f120570b = new C14539s(3L);
        this.f120571c = h10;
        this.f120572d = abstractC14551y;
        this.f120573e = c13486b;
        this.f120574f = e10;
    }
}
