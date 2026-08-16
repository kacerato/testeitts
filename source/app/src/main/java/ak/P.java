package Ak;

import Fk.C2551x;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C0;
import oh.G0;
import oh.InterfaceC14516g;

public class P extends AbstractC14545v {

    public final C2551x f886b;

    public final AbstractC14551y f887c;

    public final Bk.a f888d;

    public final Bk.b f889e;

    public static class a {

        public C2551x f890a;

        public AbstractC14551y f891b;

        public Bk.a f892c;

        public Bk.b f893d;

        public P a() {
            return new P(this.f890a, this.f891b, this.f892c, this.f893d);
        }

        public a b(Bk.a aVar) {
            this.f892c = aVar;
            return this;
        }

        public a c(C2551x c2551x) {
            this.f890a = c2551x;
            return this;
        }

        public a d(AbstractC14551y abstractC14551y) {
            this.f891b = abstractC14551y;
            return this;
        }

        public a e(byte[] bArr) {
            this.f891b = new C0(bArr);
            return this;
        }

        public a f(Bk.b bVar) {
            this.f893d = bVar;
            return this;
        }
    }

    public P(C2551x c2551x, AbstractC14551y abstractC14551y, Bk.a aVar, Bk.b bVar) {
        this.f886b = c2551x;
        this.f887c = abstractC14551y;
        this.f888d = aVar;
        this.f889e = bVar;
    }

    public static a u() {
        return new a();
    }

    public static P y(Object obj) {
        if (obj instanceof P) {
            return (P) obj;
        }
        if (obj != null) {
            return new P(oh.E.G(obj));
        }
        return null;
    }

    public Bk.b A() {
        return this.f889e;
    }

    @Override
    public oh.B r() {
        return new G0(new InterfaceC14516g[]{this.f886b, this.f887c, this.f888d, this.f889e});
    }

    public Bk.a v() {
        return this.f888d;
    }

    public C2551x x() {
        return this.f886b;
    }

    public AbstractC14551y z() {
        return this.f887c;
    }

    public P(oh.E e10) {
        if (e10.size() != 4) {
            throw new IllegalArgumentException("expected sequence size of 4");
        }
        this.f886b = C2551x.v(e10.I(0));
        this.f887c = AbstractC14551y.F(e10.I(1));
        this.f888d = Bk.a.v(e10.I(2));
        this.f889e = Bk.b.z(e10.I(3));
    }
}
