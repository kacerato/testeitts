package Ek;

import oh.AbstractC14545v;
import oh.G0;
import oh.InterfaceC14516g;

public class L extends AbstractC14545v {

    public final F f5930b;

    public final n f5931c;

    public static class a {

        public F f5932a;

        public n f5933b;

        public L a() {
            return new L(this.f5932a, this.f5933b);
        }

        public a b(n nVar) {
            this.f5933b = nVar;
            return this;
        }

        public a c(F f10) {
            this.f5932a = f10;
            return this;
        }
    }

    public L(F f10, n nVar) {
        this.f5930b = f10;
        this.f5931c = nVar;
    }

    public static a u() {
        return new a();
    }

    public static L w(Object obj) {
        if (obj instanceof L) {
            return (L) obj;
        }
        if (obj != null) {
            return new L(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new G0(new InterfaceC14516g[]{this.f5930b, this.f5931c});
    }

    public n v() {
        return this.f5931c;
    }

    public F x() {
        return this.f5930b;
    }

    public L(oh.E e10) {
        if (e10.size() != 2) {
            throw new IllegalArgumentException("expected sequence size of 2");
        }
        this.f5930b = F.y(e10.I(0));
        this.f5931c = n.C(e10.I(1));
    }
}
