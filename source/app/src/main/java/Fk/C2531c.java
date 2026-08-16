package Fk;

import java.util.Iterator;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C0;
import oh.InterfaceC14516g;
import zk.C16317a;

public class C2531c extends AbstractC14545v {

    public final AbstractC14551y f7076b;

    public final AbstractC14551y f7077c;

    public static class a {

        public AbstractC14551y f7078a;

        public AbstractC14551y f7079b;

        public C2531c a() {
            return new C2531c(this.f7078a, this.f7079b);
        }

        public a b(AbstractC14551y abstractC14551y) {
            this.f7079b = abstractC14551y;
            return this;
        }

        public a c(byte[] bArr) {
            this.f7079b = new C0(org.bouncycastle.util.a.p(bArr));
            return this;
        }

        public a d(AbstractC14551y abstractC14551y) {
            this.f7078a = abstractC14551y;
            return this;
        }

        public a e(byte[] bArr) {
            this.f7078a = new C0(org.bouncycastle.util.a.p(bArr));
            return this;
        }
    }

    public C2531c(AbstractC14551y abstractC14551y, AbstractC14551y abstractC14551y2) {
        this.f7076b = abstractC14551y;
        this.f7077c = abstractC14551y2;
    }

    public static a u() {
        return new a();
    }

    public static C2531c v(Object obj) {
        if (obj instanceof C2531c) {
            return (C2531c) obj;
        }
        if (obj != null) {
            return new C2531c(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return C16317a.e(this.f7076b, this.f7077c);
    }

    public AbstractC14551y x() {
        return this.f7077c;
    }

    public AbstractC14551y y() {
        return this.f7076b;
    }

    public C2531c(oh.E e10) {
        if (e10.size() != 2) {
            throw new IllegalArgumentException("expected sequence size of 2");
        }
        Iterator<InterfaceC14516g> it = e10.iterator();
        this.f7076b = AbstractC14551y.F(it.next());
        this.f7077c = AbstractC14551y.F(it.next());
    }
}
