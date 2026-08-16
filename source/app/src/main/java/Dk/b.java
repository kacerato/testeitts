package Dk;

import Fk.C2551x;
import Fk.p0;
import oh.AbstractC14545v;
import oh.B;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;
import yk.i;

public class b extends AbstractC14545v {

    public final C2551x f5265b;

    public final p0 f5266c;

    public static class a {

        public C2551x f5267a;

        public p0 f5268b;

        public b a() {
            return new b(this.f5267a, this.f5268b);
        }

        public a b(C2551x c2551x) {
            this.f5267a = c2551x;
            return this;
        }

        public a c(p0 p0Var) {
            this.f5268b = p0Var;
            return this;
        }
    }

    public b(C2551x c2551x, p0 p0Var) {
        this.f5265b = c2551x;
        this.f5266c = p0Var;
    }

    public static a u() {
        return new a();
    }

    public static b v(Object obj) {
        if (obj instanceof b) {
            return (b) obj;
        }
        if (obj != null) {
            return new b(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        return new G0(new InterfaceC14516g[]{this.f5265b, i.w(this.f5266c)});
    }

    public C2551x x() {
        return this.f5265b;
    }

    public p0 y() {
        return this.f5266c;
    }

    public b(E e10) {
        if (e10.size() != 2) {
            throw new IllegalArgumentException("expected sequence size of 2");
        }
        this.f5265b = C2551x.v(e10.I(0));
        this.f5266c = e10.size() > 1 ? (p0) i.y(p0.class, e10.I(1)) : null;
    }
}
