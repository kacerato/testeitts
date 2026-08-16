package Ak;

import oh.AbstractC14545v;
import oh.G0;
import oh.InterfaceC14516g;

public class C2302l extends AbstractC14545v {

    public final Bk.d f969b;

    public final Bk.b f970c;

    public static class a {

        public Bk.d f971a;

        public Bk.b f972b;

        public C2302l a() {
            return new C2302l(this.f971a, this.f972b);
        }

        public a b(Bk.d dVar) {
            this.f971a = dVar;
            return this;
        }

        public a c(Bk.b bVar) {
            this.f972b = bVar;
            return this;
        }
    }

    public C2302l(Bk.d dVar, Bk.b bVar) {
        this.f969b = dVar;
        this.f970c = bVar;
    }

    public static a u() {
        return new a();
    }

    public static C2302l v(Object obj) {
        if (obj instanceof C2302l) {
            return (C2302l) obj;
        }
        if (obj != null) {
            return new C2302l(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new G0(new InterfaceC14516g[]{this.f969b, this.f970c});
    }

    public Bk.d x() {
        return this.f969b;
    }

    public Bk.b y() {
        return this.f970c;
    }

    public C2302l(oh.E e10) {
        if (e10.size() != 2) {
            throw new IllegalArgumentException("expected sequence size of 2");
        }
        this.f969b = Bk.d.v(e10.I(0));
        this.f970c = Bk.b.z(e10.I(1));
    }
}
