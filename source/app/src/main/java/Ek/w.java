package Ek;

import Fk.C2551x;
import Fk.C2552y;
import oh.AbstractC14545v;
import zk.C16317a;

public class w extends AbstractC14545v {

    public final C2551x f6033b;

    public final C2499j f6034c;

    public static class a {

        public C2551x f6035a;

        public C2499j f6036b;

        public w a() {
            return new w(this.f6035a, this.f6036b);
        }

        public a b(C2499j c2499j) {
            this.f6036b = c2499j;
            return this;
        }

        public a c(C2551x c2551x) {
            this.f6035a = c2551x;
            return this;
        }
    }

    public w(C2551x c2551x, C2499j c2499j) {
        this.f6033b = c2551x;
        this.f6034c = c2499j;
    }

    public static a u() {
        return new a();
    }

    public static w w(Object obj) {
        if (obj instanceof w) {
            return (w) obj;
        }
        if (obj != null) {
            return new w(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return C16317a.e(this.f6033b, this.f6034c);
    }

    public C2499j v() {
        return this.f6034c;
    }

    public C2552y x() {
        return this.f6033b;
    }

    public w(oh.E e10) {
        if (e10.size() != 2) {
            throw new IllegalArgumentException("expected sequence size of 2");
        }
        this.f6033b = C2551x.v(e10.I(0));
        this.f6034c = C2499j.z(e10.I(1));
    }
}
