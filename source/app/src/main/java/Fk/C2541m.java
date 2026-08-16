package Fk;

import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C0;
import zk.C16317a;

public class C2541m extends AbstractC14545v {

    public final C2539k f7139b;

    public final AbstractC14551y f7140c;

    public static class a {

        public C2539k f7141a;

        public AbstractC14551y f7142b;

        public C2541m a() {
            return new C2541m(this.f7141a, this.f7142b);
        }

        public a b(C2539k c2539k) {
            this.f7141a = c2539k;
            return this;
        }

        public a c(AbstractC14551y abstractC14551y) {
            this.f7142b = abstractC14551y;
            return this;
        }

        public a d(byte[] bArr) {
            this.f7142b = new C0(org.bouncycastle.util.a.p(bArr));
            return this;
        }
    }

    public C2541m(C2539k c2539k, AbstractC14551y abstractC14551y) {
        this.f7139b = c2539k;
        this.f7140c = abstractC14551y;
    }

    public static a u() {
        return new a();
    }

    public static C2541m v(Object obj) {
        if (obj instanceof C2541m) {
            return (C2541m) obj;
        }
        if (obj != null) {
            return new C2541m(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return C16317a.e(this.f7139b, this.f7140c);
    }

    public C2539k x() {
        return this.f7139b;
    }

    public AbstractC14551y y() {
        return this.f7140c;
    }

    public C2541m(oh.E e10) {
        if (e10.size() != 2) {
            throw new IllegalArgumentException("expected sequence size of 2");
        }
        this.f7139b = C2539k.E(e10.I(0));
        this.f7140c = AbstractC14551y.F(e10.I(1));
    }
}
