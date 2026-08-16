package Ek;

import Fk.C2551x;
import Fk.C2552y;
import oh.AbstractC14545v;
import zk.C16317a;

public class I extends AbstractC14545v {

    public final C2551x f5899b;

    public final J f5900c;

    public static class a {

        public C2551x f5901a;

        public J f5902b;

        public I a() {
            return new I(this.f5901a, this.f5902b);
        }

        public a b(J j10) {
            this.f5902b = j10;
            return this;
        }

        public a c(C2551x c2551x) {
            this.f5901a = c2551x;
            return this;
        }
    }

    public I(C2551x c2551x, J j10) {
        this.f5899b = c2551x;
        this.f5900c = j10;
    }

    public static a u() {
        return new a();
    }

    public static I w(Object obj) {
        if (obj instanceof I) {
            return (I) obj;
        }
        if (obj != null) {
            return new I(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return C16317a.e(this.f5899b, this.f5900c);
    }

    public J v() {
        return this.f5900c;
    }

    public C2552y x() {
        return this.f5899b;
    }

    public I(oh.E e10) {
        if (e10.size() != 2) {
            throw new IllegalArgumentException("expected sequence size of 2");
        }
        this.f5899b = C2551x.v(e10.I(0));
        this.f5900c = J.w(e10.I(1));
    }
}
