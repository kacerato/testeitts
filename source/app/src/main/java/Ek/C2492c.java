package Ek;

import Fk.j0;
import Fk.w0;
import oh.AbstractC14545v;
import zk.C16317a;

public class C2492c extends AbstractC14545v {

    public final w0 f5942b;

    public final C2494e f5943c;

    public final s f5944d;

    public final K f5945e;

    public final j0 f5946f;

    public static class a {

        public w0 f5947a;

        public C2494e f5948b;

        public s f5949c;

        public K f5950d;

        public j0 f5951e;

        public C2491b a() {
            return new C2491b(this.f5947a, this.f5948b, this.f5949c, this.f5950d, this.f5951e);
        }

        public C2492c b() {
            return new C2492c(this.f5947a, this.f5948b, this.f5949c, this.f5950d, this.f5951e);
        }

        public C2492c c() {
            return new Ck.a(this.f5947a, this.f5949c, this.f5950d, this.f5951e);
        }

        public C2501l d() {
            return new C2501l(this.f5947a, this.f5949c, this.f5950d, this.f5951e);
        }

        public r e() {
            return new r(this.f5947a, this.f5949c, this.f5950d, this.f5951e);
        }

        public a f(s sVar) {
            this.f5949c = sVar;
            return this;
        }

        public a g(j0 j0Var) {
            this.f5951e = j0Var;
            return this;
        }

        public a h(K k10) {
            this.f5950d = k10;
            return this;
        }

        public a i(C2494e c2494e) {
            this.f5948b = c2494e;
            return this;
        }

        public a j(w0 w0Var) {
            this.f5947a = w0Var;
            return this;
        }
    }

    public C2492c(w0 w0Var, C2494e c2494e, s sVar, K k10, j0 j0Var) {
        this.f5942b = w0Var;
        this.f5943c = c2494e;
        this.f5944d = sVar;
        this.f5945e = k10;
        this.f5946f = j0Var;
    }

    public static a u() {
        return new a();
    }

    public static C2492c v(Object obj) {
        if (obj instanceof C2492c) {
            return (C2492c) obj;
        }
        if (obj != null) {
            return new C2492c(oh.E.G(obj));
        }
        return null;
    }

    public C2494e A() {
        return this.f5943c;
    }

    public w0 B() {
        return this.f5942b;
    }

    @Override
    public oh.B r() {
        return C16317a.e(this.f5942b, this.f5943c, this.f5944d, this.f5945e, yk.i.w(this.f5946f));
    }

    public s x() {
        return this.f5944d;
    }

    public j0 y() {
        return this.f5946f;
    }

    public K z() {
        return this.f5945e;
    }

    public C2492c(oh.E e10) {
        if (e10.size() != 5) {
            throw new IllegalArgumentException("expected sequence size of 5");
        }
        this.f5942b = w0.w(e10.I(0));
        this.f5943c = C2494e.N(e10.I(1));
        this.f5944d = s.v(e10.I(2));
        this.f5945e = K.R(e10.I(3));
        this.f5946f = (j0) yk.i.y(j0.class, e10.I(4));
    }
}
