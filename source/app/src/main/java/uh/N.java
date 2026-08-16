package uh;

import hi.C13486b;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C14518h;
import oh.C14539s;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;

public class N extends AbstractC14545v {

    public C14539s f120594b;

    public C13486b f120595c;

    public C13486b f120596d;

    public AbstractC14551y f120597e;

    public N(C13486b c13486b, C13486b c13486b2, AbstractC14551y abstractC14551y) {
        this.f120594b = new C14539s(0L);
        this.f120595c = c13486b;
        this.f120596d = c13486b2;
        this.f120597e = abstractC14551y;
    }

    public static N v(Object obj) {
        if (obj instanceof N) {
            return (N) obj;
        }
        if (obj != null) {
            return new N(oh.E.G(obj));
        }
        return null;
    }

    public static N w(oh.M m10, boolean z10) {
        return v(oh.E.H(m10, z10));
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(4);
        c14518h.a(this.f120594b);
        C13486b c13486b = this.f120595c;
        if (c13486b != null) {
            c14518h.a(new K0(false, 0, (InterfaceC14516g) c13486b));
        }
        c14518h.a(this.f120596d);
        c14518h.a(this.f120597e);
        return new G0(c14518h);
    }

    public AbstractC14551y u() {
        return this.f120597e;
    }

    public C13486b x() {
        return this.f120595c;
    }

    public C13486b y() {
        return this.f120596d;
    }

    public C14539s z() {
        return this.f120594b;
    }

    public N(C13486b c13486b, AbstractC14551y abstractC14551y) {
        this.f120594b = new C14539s(0L);
        this.f120596d = c13486b;
        this.f120597e = abstractC14551y;
    }

    public N(oh.E e10) {
        InterfaceC14516g I10;
        this.f120594b = (C14539s) e10.I(0);
        if (e10.I(1) instanceof oh.M) {
            this.f120595c = C13486b.w((oh.M) e10.I(1), false);
            this.f120596d = C13486b.v(e10.I(2));
            I10 = e10.I(3);
        } else {
            this.f120596d = C13486b.v(e10.I(1));
            I10 = e10.I(2);
        }
        this.f120597e = (AbstractC14551y) I10;
    }
}
