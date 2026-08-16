package th;

import hi.C13481E;
import hi.C13486b;
import oh.AbstractC14551y;
import oh.C0;
import oh.C14518h;
import oh.C14530n;
import oh.C14539s;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;

public class H {

    public final C14539s f117491a;

    public final C13481E f117492b;

    public final C13481E f117493c;

    public C14530n f117494d;

    public C13486b f117495e;

    public AbstractC14551y f117496f;

    public AbstractC14551y f117497g;

    public AbstractC14551y f117498h;

    public AbstractC14551y f117499i;

    public AbstractC14551y f117500j;

    public F f117501k;

    public oh.E f117502l;

    public H(int i10, C13481E c13481e, C13481E c13481e2) {
        this(new C14539s(i10), c13481e, c13481e2);
    }

    public static oh.E d(C15443t c15443t) {
        return new G0(c15443t);
    }

    public static oh.E e(C15443t[] c15443tArr) {
        if (c15443tArr != null) {
            return new G0(c15443tArr);
        }
        return null;
    }

    public final void a(C14518h c14518h, int i10, InterfaceC14516g interfaceC14516g) {
        if (interfaceC14516g != null) {
            c14518h.a(new K0(true, i10, interfaceC14516g));
        }
    }

    public G b() {
        C14518h c14518h = new C14518h(12);
        c14518h.a(this.f117491a);
        c14518h.a(this.f117492b);
        c14518h.a(this.f117493c);
        a(c14518h, 0, this.f117494d);
        a(c14518h, 1, this.f117495e);
        a(c14518h, 2, this.f117496f);
        a(c14518h, 3, this.f117497g);
        a(c14518h, 4, this.f117498h);
        a(c14518h, 5, this.f117499i);
        a(c14518h, 6, this.f117500j);
        a(c14518h, 7, this.f117501k);
        a(c14518h, 8, this.f117502l);
        this.f117494d = null;
        this.f117495e = null;
        this.f117496f = null;
        this.f117497g = null;
        this.f117498h = null;
        this.f117499i = null;
        this.f117500j = null;
        this.f117501k = null;
        this.f117502l = null;
        return G.y(new G0(c14518h));
    }

    public final C0 c(byte[] bArr) {
        return new C0(org.bouncycastle.util.a.p(bArr));
    }

    public H f(F f10) {
        this.f117501k = f10;
        return this;
    }

    public H g(oh.E e10) {
        this.f117502l = e10;
        return this;
    }

    public H h(C15443t c15443t) {
        return g(d(c15443t));
    }

    public H i(C15443t[] c15443tArr) {
        return g(e(c15443tArr));
    }

    public H j(C14530n c14530n) {
        this.f117494d = c14530n;
        return this;
    }

    public H k(C13486b c13486b) {
        this.f117495e = c13486b;
        return this;
    }

    public H l(AbstractC14551y abstractC14551y) {
        this.f117497g = abstractC14551y;
        return this;
    }

    public H m(byte[] bArr) {
        return l(bArr == null ? null : c(bArr));
    }

    public H n(AbstractC14551y abstractC14551y) {
        this.f117500j = abstractC14551y;
        return this;
    }

    public H o(byte[] bArr) {
        return n(bArr == null ? null : c(bArr));
    }

    public H p(AbstractC14551y abstractC14551y) {
        this.f117496f = abstractC14551y;
        return this;
    }

    public H q(byte[] bArr) {
        return p(bArr == null ? null : c(bArr));
    }

    public H r(AbstractC14551y abstractC14551y) {
        this.f117499i = abstractC14551y;
        return this;
    }

    public H s(byte[] bArr) {
        return r(bArr == null ? null : c(bArr));
    }

    public H t(AbstractC14551y abstractC14551y) {
        this.f117498h = abstractC14551y;
        return this;
    }

    public H u(byte[] bArr) {
        return t(bArr == null ? null : c(bArr));
    }

    public H(C14539s c14539s, C13481E c13481e, C13481E c13481e2) {
        this.f117491a = c14539s;
        this.f117492b = c13481e;
        this.f117493c = c13481e2;
    }
}
