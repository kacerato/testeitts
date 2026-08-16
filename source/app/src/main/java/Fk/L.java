package Fk;

import java.math.BigInteger;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C0;
import oh.G0;
import oh.InterfaceC14516g;

public class L extends AbstractC14545v {

    public final AbstractC14551y f7023b;

    public final AbstractC14551y f7024c;

    public static class a {

        public AbstractC14551y f7025a;

        public AbstractC14551y f7026b;

        public L a() {
            return new L(this.f7025a, this.f7026b);
        }

        public a b(BigInteger bigInteger) {
            return d(org.bouncycastle.util.b.b(32, bigInteger));
        }

        public a c(AbstractC14551y abstractC14551y) {
            this.f7025a = abstractC14551y;
            return this;
        }

        public a d(byte[] bArr) {
            this.f7025a = new C0(bArr);
            return this;
        }

        public a e(BigInteger bigInteger) {
            return g(org.bouncycastle.util.b.b(32, bigInteger));
        }

        public a f(AbstractC14551y abstractC14551y) {
            this.f7026b = abstractC14551y;
            return this;
        }

        public a g(byte[] bArr) {
            this.f7026b = new C0(bArr);
            return this;
        }
    }

    public L(AbstractC14551y abstractC14551y, AbstractC14551y abstractC14551y2) {
        if (abstractC14551y == null || abstractC14551y.H().length != 32) {
            throw new IllegalArgumentException("x must be 32 bytes long");
        }
        if (abstractC14551y2 == null || abstractC14551y2.H().length != 32) {
            throw new IllegalArgumentException("y must be 32 bytes long");
        }
        this.f7023b = abstractC14551y;
        this.f7024c = abstractC14551y2;
    }

    public static a u() {
        return new a();
    }

    public static L v(Object obj) {
        if (obj instanceof L) {
            return (L) obj;
        }
        if (obj != null) {
            return new L(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new G0(new InterfaceC14516g[]{this.f7023b, this.f7024c});
    }

    public AbstractC14551y x() {
        return this.f7023b;
    }

    public AbstractC14551y y() {
        return this.f7024c;
    }

    public L(oh.E e10) {
        if (e10.size() != 2) {
            throw new IllegalArgumentException("expected sequence size of 2");
        }
        AbstractC14551y F10 = AbstractC14551y.F(e10.I(0));
        this.f7023b = F10;
        AbstractC14551y F11 = AbstractC14551y.F(e10.I(1));
        this.f7024c = F11;
        if (F10.H().length != 32) {
            throw new IllegalArgumentException("x must be 32 bytes long");
        }
        if (F11.H().length != 32) {
            throw new IllegalArgumentException("y must be 32 bytes long");
        }
    }
}
