package Ek;

import oh.AbstractC14545v;
import zk.C16317a;

public class C2498i extends AbstractC14545v {

    public final D f5964b;

    public final J f5965c;

    public static class a {

        public D f5966a;

        public J f5967b;

        public C2498i a() {
            return new C2498i(this.f5966a, this.f5967b);
        }

        public a b(J j10) {
            this.f5967b = j10;
            return this;
        }

        public a c(D d10) {
            this.f5966a = d10;
            return this;
        }
    }

    public C2498i(D d10, J j10) {
        this.f5964b = d10;
        this.f5965c = j10;
    }

    public static a u() {
        return new a();
    }

    public static C2498i w(Object obj) {
        if (obj instanceof C2498i) {
            return (C2498i) obj;
        }
        if (obj != null) {
            return new C2498i(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return C16317a.e(this.f5964b, this.f5965c);
    }

    public J v() {
        return this.f5965c;
    }

    public D x() {
        return this.f5964b;
    }

    public C2498i(oh.E e10) {
        if (e10.size() != 2) {
            throw new IllegalArgumentException("expected sequence size of 2");
        }
        this.f5964b = D.v(e10.I(0));
        this.f5965c = J.w(e10.I(1));
    }
}
