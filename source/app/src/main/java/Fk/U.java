package Fk;

import oh.AbstractC14545v;
import oh.G0;
import oh.InterfaceC14516g;

public class U extends AbstractC14545v implements W {

    public final r0 f7053b;

    public final r0 f7054c;

    public static class a {

        public r0 f7055a;

        public r0 f7056b;

        public U a() {
            return new U(this.f7055a, this.f7056b);
        }

        public a b(r0 r0Var) {
            this.f7055a = r0Var;
            return this;
        }

        public a c(r0 r0Var) {
            this.f7056b = r0Var;
            return this;
        }
    }

    public U(r0 r0Var, r0 r0Var2) {
        this.f7053b = r0Var;
        this.f7054c = r0Var2;
    }

    public static a u() {
        return new a();
    }

    public static U v(Object obj) {
        if (obj instanceof U) {
            return (U) obj;
        }
        if (obj != null) {
            return new U(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new G0(new InterfaceC14516g[]{this.f7053b, this.f7054c});
    }

    public r0 x() {
        return this.f7053b;
    }

    public r0 y() {
        return this.f7054c;
    }

    public U(oh.E e10) {
        if (e10.size() != 2) {
            throw new IllegalArgumentException("expected sequence size of 2");
        }
        this.f7053b = r0.v(e10.I(0));
        this.f7054c = r0.v(e10.I(1));
    }
}
