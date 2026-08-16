package Fk;

import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C0;
import zk.C16317a;

public class C2542n extends AbstractC14545v {

    public final C2540l f7144b;

    public final AbstractC14551y f7145c;

    public static class a {

        public C2540l f7146a;

        public AbstractC14551y f7147b;

        public C2542n a() {
            return new C2542n(this.f7146a, this.f7147b);
        }

        public a b(C2540l c2540l) {
            this.f7146a = c2540l;
            return this;
        }

        public a c(AbstractC14551y abstractC14551y) {
            this.f7147b = abstractC14551y;
            return this;
        }

        public a d(byte[] bArr) {
            return c(new C0(org.bouncycastle.util.a.p(bArr)));
        }
    }

    public C2542n(C2540l c2540l, AbstractC14551y abstractC14551y) {
        this.f7144b = c2540l;
        this.f7145c = abstractC14551y;
    }

    public static a u() {
        return new a();
    }

    public static C2542n v(Object obj) {
        if (obj instanceof C2542n) {
            return (C2542n) obj;
        }
        if (obj != null) {
            return new C2542n(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return C16317a.e(this.f7144b, this.f7145c);
    }

    public C2540l x() {
        return this.f7144b;
    }

    public AbstractC14551y y() {
        return this.f7145c;
    }

    public C2542n(oh.E e10) {
        if (e10.size() != 2) {
            throw new IllegalArgumentException("expected sequence size of 2");
        }
        this.f7144b = C2540l.C(e10.I(0));
        this.f7145c = AbstractC14551y.F(e10.I(1));
    }
}
