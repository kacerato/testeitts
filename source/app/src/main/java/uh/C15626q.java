package uh;

import hi.C13486b;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C0;
import oh.C14517g0;
import oh.C14518h;
import oh.C14539s;

public class C15626q extends AbstractC14545v {

    public C14539s f120730b;

    public C13486b f120731c;

    public C15624o f120732d;

    public AbstractC14551y f120733e;

    public C15626q(C13486b c13486b, C15624o c15624o, byte[] bArr) {
        this.f120730b = new C14539s(0L);
        this.f120731c = c13486b;
        this.f120732d = c15624o;
        this.f120733e = new C0(org.bouncycastle.util.a.p(bArr));
    }

    public static C15626q y(Object obj) {
        if (obj instanceof C15626q) {
            return (C15626q) obj;
        }
        if (obj != null) {
            return new C15626q(oh.E.G(obj));
        }
        return null;
    }

    public static C15626q z(oh.M m10, boolean z10) {
        return y(oh.E.H(m10, z10));
    }

    public C14539s A() {
        return this.f120730b;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(4);
        c14518h.a(this.f120730b);
        c14518h.a(this.f120731c);
        c14518h.a(this.f120732d);
        c14518h.a(this.f120733e);
        return new C14517g0(c14518h);
    }

    public byte[] u() {
        return org.bouncycastle.util.a.p(this.f120733e.H());
    }

    public C13486b v() {
        return this.f120731c;
    }

    public C15624o x() {
        return this.f120732d;
    }

    public C15626q(oh.E e10) {
        this.f120730b = (C14539s) e10.I(0);
        this.f120731c = C13486b.v(e10.I(1));
        this.f120732d = C15624o.w(e10.I(2));
        this.f120733e = AbstractC14551y.F(e10.I(3));
    }
}
