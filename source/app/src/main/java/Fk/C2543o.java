package Fk;

import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C0;
import oh.G0;
import oh.InterfaceC14516g;

public class C2543o extends AbstractC14545v {

    public final C2539k f7151b;

    public final AbstractC14551y f7152c;

    public final AbstractC14551y f7153d;

    public static class a {

        public C2539k f7154a;

        public AbstractC14551y f7155b;

        public AbstractC14551y f7156c;

        public C2543o a() {
            return new C2543o(this.f7154a, this.f7155b, this.f7156c);
        }

        public a b(AbstractC14551y abstractC14551y) {
            this.f7155b = abstractC14551y;
            return this;
        }

        public a c(byte[] bArr) {
            this.f7155b = new C0(org.bouncycastle.util.a.p(bArr));
            return this;
        }

        public a d(AbstractC14551y abstractC14551y) {
            this.f7156c = abstractC14551y;
            return this;
        }

        public a e(byte[] bArr) {
            this.f7156c = new C0(org.bouncycastle.util.a.p(bArr));
            return this;
        }

        public a f(C2539k c2539k) {
            this.f7154a = c2539k;
            return this;
        }
    }

    public C2543o(C2539k c2539k, AbstractC14551y abstractC14551y, AbstractC14551y abstractC14551y2) {
        this.f7151b = c2539k;
        this.f7152c = abstractC14551y;
        this.f7153d = abstractC14551y2;
    }

    public static a u() {
        return new a();
    }

    public static C2543o w(Object obj) {
        if (obj instanceof C2543o) {
            return (C2543o) obj;
        }
        if (obj != null) {
            return new C2543o(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new G0(new InterfaceC14516g[]{this.f7151b, this.f7152c, this.f7153d});
    }

    public AbstractC14551y v() {
        return this.f7152c;
    }

    public AbstractC14551y x() {
        return this.f7153d;
    }

    public C2539k y() {
        return this.f7151b;
    }

    public C2543o(oh.E e10) {
        if (e10.size() != 3) {
            throw new IllegalArgumentException("expected sequence size of 3");
        }
        this.f7151b = C2539k.E(e10.I(0));
        this.f7152c = AbstractC14551y.F(e10.I(1));
        this.f7153d = AbstractC14551y.F(e10.I(2));
    }
}
