package Ak;

import oh.AbstractC14545v;
import oh.G0;
import oh.InterfaceC14516g;

public class C2296f extends AbstractC14545v {

    public final P f944b;

    public final Bk.c f945c;

    public static class a {

        public P f946a;

        public Bk.c f947b;

        public C2296f a() {
            return new C2296f(this.f946a, this.f947b);
        }

        public a b(Bk.c cVar) {
            this.f947b = cVar;
            return this;
        }

        public a c(P p10) {
            this.f946a = p10;
            return this;
        }
    }

    public C2296f(P p10, Bk.c cVar) {
        this.f944b = p10;
        this.f945c = cVar;
    }

    public static a u() {
        return new a();
    }

    public static C2296f w(Object obj) {
        if (obj instanceof C2296f) {
            return (C2296f) obj;
        }
        if (obj != null) {
            return new C2296f(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new G0(new InterfaceC14516g[]{this.f944b, this.f945c});
    }

    public Bk.c v() {
        return this.f945c;
    }

    public P x() {
        return this.f944b;
    }

    public C2296f(oh.E e10) {
        if (e10.size() != 2) {
            throw new IllegalArgumentException("expected sequence size of 2");
        }
        this.f944b = P.y(e10.I(0));
        this.f945c = Bk.c.w(e10.I(1));
    }
}
