package Ak;

import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C0;
import oh.G0;
import oh.InterfaceC14516g;

public class G extends AbstractC14545v {

    public final AbstractC14551y f864b;

    public final Bk.a f865c;

    public final Bk.d f866d;

    public final Bk.b f867e;

    public static class a {

        public AbstractC14551y f868a;

        public Bk.a f869b;

        public Bk.d f870c;

        public Bk.b f871d;

        public G a() {
            return new G(this.f868a, this.f869b, this.f870c, this.f871d);
        }

        public a b(Bk.a aVar) {
            this.f869b = aVar;
            return this;
        }

        public a c(AbstractC14551y abstractC14551y) {
            this.f868a = abstractC14551y;
            return this;
        }

        public a d(byte[] bArr) {
            this.f868a = new C0(org.bouncycastle.util.a.p(bArr));
            return this;
        }

        public a e(Bk.d dVar) {
            this.f870c = dVar;
            return this;
        }

        public a f(Bk.b bVar) {
            this.f871d = bVar;
            return this;
        }
    }

    public G(AbstractC14551y abstractC14551y, Bk.a aVar, Bk.d dVar, Bk.b bVar) {
        this.f864b = abstractC14551y;
        this.f865c = aVar;
        this.f866d = dVar;
        this.f867e = bVar;
    }

    public static a u() {
        return new a();
    }

    public static G w(Object obj) {
        if (obj instanceof G) {
            return (G) obj;
        }
        if (obj != null) {
            return new G(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new G0(new InterfaceC14516g[]{this.f864b, this.f865c, this.f866d, this.f867e});
    }

    public Bk.a v() {
        return this.f865c;
    }

    public AbstractC14551y x() {
        return this.f864b;
    }

    public Bk.d y() {
        return this.f866d;
    }

    public Bk.b z() {
        return this.f867e;
    }

    public G(oh.E e10) {
        if (e10.size() != 4) {
            throw new IllegalArgumentException("expected sequence size of 4");
        }
        this.f864b = AbstractC14551y.F(e10.I(0));
        this.f865c = Bk.a.v(e10.I(1));
        this.f866d = Bk.d.v(e10.I(2));
        this.f867e = Bk.b.z(e10.I(3));
    }
}
