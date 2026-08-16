package Ak;

import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C0;
import oh.G0;
import oh.InterfaceC14516g;

public class E extends AbstractC14545v {

    public final Bk.d f850b;

    public final AbstractC14551y f851c;

    public final P f852d;

    public final Bk.c f853e;

    public static class a {

        public Bk.d f854a;

        public AbstractC14551y f855b;

        public P f856c;

        public Bk.c f857d;

        public E a() {
            return new E(this.f854a, this.f855b, this.f856c, this.f857d);
        }

        public a b(Bk.c cVar) {
            this.f857d = cVar;
            return this;
        }

        public a c(AbstractC14551y abstractC14551y) {
            this.f855b = abstractC14551y;
            return this;
        }

        public a d(byte[] bArr) {
            this.f855b = new C0(org.bouncycastle.util.a.p(bArr));
            return this;
        }

        public a e(Bk.d dVar) {
            this.f854a = dVar;
            return this;
        }

        public a f(P p10) {
            this.f856c = p10;
            return this;
        }
    }

    public E(Bk.d dVar, AbstractC14551y abstractC14551y, P p10, Bk.c cVar) {
        this.f850b = dVar;
        this.f851c = abstractC14551y;
        this.f852d = p10;
        this.f853e = cVar;
    }

    public static a u() {
        return new a();
    }

    public static E y(Object obj) {
        if (obj instanceof E) {
            return (E) obj;
        }
        if (obj != null) {
            return new E(oh.E.G(obj));
        }
        return null;
    }

    public P A() {
        return this.f852d;
    }

    @Override
    public oh.B r() {
        return new G0(new InterfaceC14516g[]{this.f850b, this.f851c, this.f852d, this.f853e});
    }

    public Bk.c v() {
        return this.f853e;
    }

    public AbstractC14551y x() {
        return this.f851c;
    }

    public Bk.d z() {
        return this.f850b;
    }

    public E(oh.E e10) {
        if (e10.size() != 4) {
            throw new IllegalArgumentException("expected sequence size of 4");
        }
        this.f850b = Bk.d.v(e10.I(0));
        this.f851c = AbstractC14551y.F(e10.I(1));
        this.f852d = P.y(e10.I(2));
        this.f853e = Bk.c.w(e10.I(3));
    }
}
