package Ak;

import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C0;
import oh.G0;
import oh.InterfaceC14516g;

public class C2298h extends AbstractC14545v {

    public final AbstractC14551y f948b;

    public final C2299i f949c;

    public final Bk.b f950d;

    public static class a {

        public AbstractC14551y f951a;

        public C2299i f952b;

        public Bk.b f953c;

        public C2298h a() {
            return new C2298h(this.f951a, this.f952b, this.f953c);
        }

        public a b(Bk.b bVar) {
            this.f953c = bVar;
            return this;
        }

        public a c(AbstractC14551y abstractC14551y) {
            this.f951a = abstractC14551y;
            return this;
        }

        public a d(byte[] bArr) {
            this.f951a = new C0(org.bouncycastle.util.a.p(bArr));
            return this;
        }

        public a e(C2299i c2299i) {
            this.f952b = c2299i;
            return this;
        }
    }

    public C2298h(AbstractC14551y abstractC14551y, C2299i c2299i, Bk.b bVar) {
        this.f948b = abstractC14551y;
        this.f949c = c2299i;
        this.f950d = bVar;
    }

    public static a u() {
        return new a();
    }

    public static C2298h w(Object obj) {
        if (obj instanceof C2298h) {
            return (C2298h) obj;
        }
        if (obj != null) {
            return new C2298h(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new G0(new InterfaceC14516g[]{this.f948b, this.f949c, yk.i.w(this.f950d)});
    }

    public Bk.b v() {
        return this.f950d;
    }

    public AbstractC14551y x() {
        return this.f948b;
    }

    public C2299i y() {
        return this.f949c;
    }

    public C2298h(oh.E e10) {
        if (e10.size() != 3) {
            throw new IllegalArgumentException("expected sequence size of 3");
        }
        this.f948b = AbstractC14551y.F(e10.I(0));
        this.f949c = C2299i.N(e10.I(1));
        this.f950d = (Bk.b) yk.i.y(Bk.b.class, e10.I(2));
    }
}
