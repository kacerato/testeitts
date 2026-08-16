package Ek;

import oh.AbstractC14545v;
import oh.G0;
import oh.InterfaceC14516g;

public class F extends AbstractC14545v {

    public final q f5886b;

    public final C2502m f5887c;

    public static class a {

        public q f5888a;

        public C2502m f5889b;

        public F a() {
            return new F(this.f5888a, this.f5889b);
        }

        public a b(q qVar) {
            this.f5888a = qVar;
            return this;
        }

        public a c(C2502m c2502m) {
            this.f5889b = c2502m;
            return this;
        }
    }

    public F(q qVar, C2502m c2502m) {
        this.f5886b = qVar;
        this.f5887c = c2502m;
    }

    public static a u() {
        return new a();
    }

    public static F y(Object obj) {
        if (obj instanceof F) {
            return (F) obj;
        }
        if (obj != null) {
            return new F(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new G0(new InterfaceC14516g[]{yk.i.w(this.f5886b), yk.i.w(this.f5887c)});
    }

    public q v() {
        return this.f5886b;
    }

    public C2502m x() {
        return this.f5887c;
    }

    public F(oh.E e10) {
        if (e10.size() != 2) {
            throw new IllegalArgumentException("expected sequence size of 2");
        }
        this.f5886b = (q) yk.i.y(q.class, e10.I(0));
        this.f5887c = (C2502m) yk.i.y(C2502m.class, e10.I(1));
    }
}
