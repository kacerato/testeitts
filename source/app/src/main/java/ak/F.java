package Ak;

import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C0;
import oh.G0;
import oh.InterfaceC14516g;

public class F extends AbstractC14545v {

    public final AbstractC14551y f858b;

    public final C2294d f859c;

    public final Ck.a f860d;

    public static class a {

        public AbstractC14551y f861a;

        public C2294d f862b;

        public Ck.a f863c;

        public F a() {
            return new F(this.f861a, this.f862b, this.f863c);
        }

        public a b(Ck.a aVar) {
            this.f863c = aVar;
            return this;
        }

        public a c(AbstractC14551y abstractC14551y) {
            this.f861a = abstractC14551y;
            return this;
        }

        public a d(byte[] bArr) {
            this.f861a = new C0(org.bouncycastle.util.a.p(bArr));
            return this;
        }

        public a e(C2294d c2294d) {
            this.f862b = c2294d;
            return this;
        }
    }

    public F(AbstractC14551y abstractC14551y, C2294d c2294d, Ck.a aVar) {
        this.f858b = abstractC14551y;
        this.f859c = c2294d;
        this.f860d = aVar;
    }

    public static a u() {
        return new a();
    }

    public static F w(Object obj) {
        if (obj instanceof F) {
            return (F) obj;
        }
        if (obj != null) {
            return new F(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new G0(new InterfaceC14516g[]{this.f858b, this.f859c, yk.i.w(this.f860d)});
    }

    public Ck.a v() {
        return this.f860d;
    }

    public AbstractC14551y x() {
        return this.f858b;
    }

    public C2294d y() {
        return this.f859c;
    }

    public F(oh.E e10) {
        if (e10.size() != 3) {
            throw new IllegalArgumentException("expected sequence size of 3");
        }
        this.f858b = AbstractC14551y.F(e10.I(0));
        this.f859c = C2294d.N(e10.I(1));
        this.f860d = (Ck.a) yk.i.y(Ck.a.class, e10.I(2));
    }
}
