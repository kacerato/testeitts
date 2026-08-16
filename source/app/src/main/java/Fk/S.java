package Fk;

import oh.AbstractC14545v;
import zk.C16317a;

public class S extends AbstractC14545v {

    public final m0 f7042b;

    public final C2528a f7043c;

    public static class a {

        public m0 f7044a;

        public C2528a f7045b;

        public S a() {
            return new S(this.f7044a, this.f7045b);
        }

        public a b(C2528a c2528a) {
            this.f7045b = c2528a;
            return this;
        }

        public a c(m0 m0Var) {
            this.f7044a = m0Var;
            return this;
        }
    }

    public S(m0 m0Var, C2528a c2528a) {
        this.f7042b = m0Var;
        this.f7043c = c2528a;
    }

    public static a u() {
        return new a();
    }

    public static S v(Object obj) {
        if (obj instanceof S) {
            return (S) obj;
        }
        if (obj != null) {
            return new S(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return C16317a.e(this.f7042b, this.f7043c);
    }

    public C2528a x() {
        return this.f7043c;
    }

    public m0 y() {
        return this.f7042b;
    }

    public S(oh.E e10) {
        if (e10.size() != 2) {
            throw new IllegalArgumentException("expected sequence size of 2");
        }
        this.f7042b = m0.N(e10.I(0));
        this.f7043c = C2528a.z(e10.I(1));
    }
}
