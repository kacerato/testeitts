package Fk;

import java.math.BigInteger;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C0;
import oh.G0;
import oh.InterfaceC14516g;

public class M extends AbstractC14545v {

    public final AbstractC14551y f7027b;

    public final AbstractC14551y f7028c;

    public static class a {

        public AbstractC14551y f7029a;

        public AbstractC14551y f7030b;

        public M a() {
            return new M(this.f7029a, this.f7030b);
        }

        public a b(BigInteger bigInteger) {
            this.f7029a = new C0(org.bouncycastle.util.b.b(48, bigInteger));
            return this;
        }

        public a c(AbstractC14551y abstractC14551y) {
            this.f7029a = abstractC14551y;
            return this;
        }

        public a d(byte[] bArr) {
            this.f7029a = new C0(bArr);
            return this;
        }

        public a e(BigInteger bigInteger) {
            this.f7030b = new C0(org.bouncycastle.util.b.b(48, bigInteger));
            return this;
        }

        public a f(AbstractC14551y abstractC14551y) {
            this.f7030b = abstractC14551y;
            return this;
        }

        public a g(byte[] bArr) {
            this.f7030b = new C0(bArr);
            return this;
        }
    }

    public M(AbstractC14551y abstractC14551y, AbstractC14551y abstractC14551y2) {
        if (abstractC14551y.H().length != 48) {
            throw new IllegalArgumentException("x must be 48 bytes long");
        }
        if (abstractC14551y2.H().length != 48) {
            throw new IllegalArgumentException("y must be 48 bytes long");
        }
        this.f7027b = abstractC14551y;
        this.f7028c = abstractC14551y2;
    }

    public static a u() {
        return new a();
    }

    public static M v(Object obj) {
        if (obj instanceof M) {
            return (M) obj;
        }
        if (obj != null) {
            return new M(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new G0(new InterfaceC14516g[]{this.f7027b, this.f7028c});
    }

    public AbstractC14551y x() {
        return this.f7027b;
    }

    public AbstractC14551y y() {
        return this.f7028c;
    }

    public M(oh.E e10) {
        if (e10.size() != 2) {
            throw new IllegalArgumentException("expected sequence size of 2");
        }
        AbstractC14551y F10 = AbstractC14551y.F(e10.I(0));
        this.f7027b = F10;
        AbstractC14551y F11 = AbstractC14551y.F(e10.I(1));
        this.f7028c = F11;
        if (F10.H().length != 48) {
            throw new IllegalArgumentException("x must be 48 bytes long");
        }
        if (F11.H().length != 48) {
            throw new IllegalArgumentException("y must be 48 bytes long");
        }
    }
}
