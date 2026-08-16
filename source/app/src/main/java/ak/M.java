package Ak;

import oh.AbstractC14545v;
import oh.G0;
import oh.InterfaceC14516g;

public class M extends AbstractC14545v {

    public final Ck.a f878b;

    public final Ck.a f879c;

    public static class a {

        public Ck.a f880a;

        public Ck.a f881b;

        public M a() {
            return new M(this.f880a, this.f881b);
        }

        public a b(Ck.a aVar) {
            this.f880a = aVar;
            return this;
        }

        public a c(Ck.a aVar) {
            this.f881b = aVar;
            return this;
        }
    }

    public M(Ck.a aVar, Ck.a aVar2) {
        this.f878b = aVar;
        this.f879c = aVar2;
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
        return new G0(new InterfaceC14516g[]{this.f878b, yk.i.w(this.f879c)});
    }

    public Ck.a x() {
        return this.f878b;
    }

    public Ck.a y() {
        return this.f879c;
    }

    public M(oh.E e10) {
        if (e10.size() != 2) {
            throw new IllegalArgumentException("expected sequence size of 2");
        }
        this.f878b = Ck.a.D(e10.I(0));
        this.f879c = (Ck.a) yk.i.y(Ck.a.class, e10.I(1));
    }
}
