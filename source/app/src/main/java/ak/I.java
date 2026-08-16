package Ak;

import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C0;
import oh.G0;
import oh.InterfaceC14516g;

public class I extends AbstractC14545v {

    public final AbstractC14551y f872b;

    public final C2314y f873c;

    public final Ck.a f874d;

    public static class a {

        public AbstractC14551y f875a;

        public C2314y f876b;

        public Ck.a f877c;

        public I a() {
            return new I(this.f875a, this.f876b, this.f877c);
        }

        public a b(Ck.a aVar) {
            this.f877c = aVar;
            return this;
        }

        public a c(AbstractC14551y abstractC14551y) {
            this.f875a = abstractC14551y;
            return this;
        }

        public a d(byte[] bArr) {
            this.f875a = new C0(org.bouncycastle.util.a.p(bArr));
            return this;
        }

        public a e(C2314y c2314y) {
            this.f876b = c2314y;
            return this;
        }
    }

    public I(AbstractC14551y abstractC14551y, C2314y c2314y, Ck.a aVar) {
        this.f872b = abstractC14551y;
        this.f873c = c2314y;
        this.f874d = aVar;
    }

    public static a u() {
        return new a();
    }

    public static I w(Object obj) {
        if (obj instanceof I) {
            return (I) obj;
        }
        if (obj != null) {
            return new I(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new G0(new InterfaceC14516g[]{this.f872b, this.f873c, yk.i.w(this.f874d)});
    }

    public Ck.a v() {
        return this.f874d;
    }

    public AbstractC14551y x() {
        return this.f872b;
    }

    public C2314y y() {
        return this.f873c;
    }

    public I(oh.E e10) {
        if (e10.size() != 3) {
            throw new IllegalArgumentException("expected sequence size of 3");
        }
        this.f872b = AbstractC14551y.F(e10.I(0));
        this.f873c = C2314y.N(e10.I(1));
        this.f874d = (Ck.a) yk.i.y(Ck.a.class, e10.I(2));
    }
}
