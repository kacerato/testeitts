package Fk;

import oh.AbstractC14545v;
import oh.G0;
import oh.InterfaceC14516g;

public class r0 extends AbstractC14545v {

    public final F f7175b;

    public final I f7176c;

    public static class a {

        public F f7177a;

        public I f7178b;

        public r0 a() {
            return new r0(this.f7177a, this.f7178b);
        }

        public a b(F f10) {
            this.f7177a = f10;
            return this;
        }

        public a c(I i10) {
            this.f7178b = i10;
            return this;
        }
    }

    public r0(F f10, I i10) {
        this.f7175b = f10;
        this.f7176c = i10;
    }

    public static a u() {
        return new a();
    }

    public static r0 v(Object obj) {
        if (obj instanceof r0) {
            return (r0) obj;
        }
        if (obj != null) {
            return new r0(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new G0(new InterfaceC14516g[]{this.f7175b, this.f7176c});
    }

    public F x() {
        return this.f7175b;
    }

    public I y() {
        return this.f7176c;
    }

    public r0(oh.E e10) {
        if (e10.size() != 2) {
            throw new IllegalArgumentException("expected sequence size of 2");
        }
        this.f7175b = F.w(e10.I(0));
        this.f7176c = I.y(e10.I(1));
    }
}
