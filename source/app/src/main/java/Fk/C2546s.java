package Fk;

import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C0;
import zk.C16317a;

public class C2546s extends AbstractC14545v {

    public final AbstractC14551y f7179b;

    public final AbstractC14551y f7180c;

    public static class a {

        public AbstractC14551y f7181a;

        public AbstractC14551y f7182b;

        public C2546s a() {
            return new C2546s(this.f7181a, this.f7182b);
        }

        public a b(AbstractC14551y abstractC14551y) {
            this.f7181a = abstractC14551y;
            return this;
        }

        public a c(byte[] bArr) {
            return b(new C0(org.bouncycastle.util.a.p(bArr)));
        }

        public a d(AbstractC14551y abstractC14551y) {
            this.f7182b = abstractC14551y;
            return this;
        }

        public a e(byte[] bArr) {
            return d(new C0(org.bouncycastle.util.a.p(bArr)));
        }
    }

    public C2546s(AbstractC14551y abstractC14551y, AbstractC14551y abstractC14551y2) {
        this.f7179b = abstractC14551y;
        this.f7180c = abstractC14551y2;
        u();
    }

    private void u() {
        AbstractC14551y abstractC14551y = this.f7179b;
        if (abstractC14551y == null || abstractC14551y.H().length != 4) {
            throw new IllegalArgumentException("jValue is null or not four bytes long");
        }
        AbstractC14551y abstractC14551y2 = this.f7180c;
        if (abstractC14551y2 == null || abstractC14551y2.H().length != 9) {
            throw new IllegalArgumentException("value is null or not nine bytes long");
        }
    }

    public static a v() {
        return new a();
    }

    public static C2546s w(Object obj) {
        if (obj instanceof C2546s) {
            return (C2546s) obj;
        }
        if (obj != null) {
            return new C2546s(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return C16317a.e(this.f7179b, this.f7180c);
    }

    public AbstractC14551y x() {
        return this.f7179b;
    }

    public AbstractC14551y y() {
        return this.f7180c;
    }

    public C2546s(oh.E e10) {
        if (e10.size() != 2) {
            throw new IllegalArgumentException("expected sequence size of 2");
        }
        this.f7179b = AbstractC14551y.F(e10.I(0));
        this.f7180c = AbstractC14551y.F(e10.I(1));
        u();
    }
}
