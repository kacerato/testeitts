package Gk;

import Ek.C2494e;
import Ek.K;
import Fk.p0;
import Fk.w0;
import oh.AbstractC14545v;
import oh.B;
import oh.E;
import yk.i;
import zk.C16317a;

public class e extends AbstractC14545v {

    public final w0 f7875b;

    public final p0 f7876c;

    public final C2494e f7877d;

    public final K f7878e;

    public final Gk.a f7879f;

    public static class a {

        public w0 f7880a;

        public p0 f7881b;

        public C2494e f7882c;

        public K f7883d;

        public Gk.a f7884e;

        public e a() {
            return new e(this.f7880a, this.f7881b, this.f7882c, this.f7883d, this.f7884e);
        }

        public a b(Gk.a aVar) {
            this.f7884e = aVar;
            return this;
        }

        public a c(p0 p0Var) {
            this.f7881b = p0Var;
            return this;
        }

        public a d(K k10) {
            this.f7883d = k10;
            return this;
        }

        public a e(C2494e c2494e) {
            this.f7882c = c2494e;
            return this;
        }

        public a f(w0 w0Var) {
            this.f7880a = w0Var;
            return this;
        }
    }

    public e(w0 w0Var, p0 p0Var, C2494e c2494e, K k10, Gk.a aVar) {
        this.f7875b = w0Var;
        this.f7876c = p0Var;
        this.f7877d = c2494e;
        this.f7878e = k10;
        this.f7879f = aVar;
    }

    public static a u() {
        return new a();
    }

    public static e y(Object obj) {
        if (obj instanceof e) {
            return (e) obj;
        }
        if (obj != null) {
            return new e(E.G(obj));
        }
        return null;
    }

    public C2494e A() {
        return this.f7877d;
    }

    public w0 B() {
        return this.f7875b;
    }

    @Override
    public B r() {
        return C16317a.e(this.f7875b, this.f7876c, this.f7877d, this.f7878e, i.w(this.f7879f));
    }

    public Gk.a v() {
        return this.f7879f;
    }

    public p0 x() {
        return this.f7876c;
    }

    public K z() {
        return this.f7878e;
    }

    public e(E e10) {
        if (e10.size() != 5) {
            throw new IllegalArgumentException("expected sequence size of 5");
        }
        this.f7875b = w0.w(e10.I(0));
        this.f7876c = p0.x(e10.I(1));
        this.f7877d = C2494e.N(e10.I(2));
        this.f7878e = K.R(e10.I(3));
        this.f7879f = (Gk.a) i.w(e10.I(4)).x(Gk.a.class);
    }
}
