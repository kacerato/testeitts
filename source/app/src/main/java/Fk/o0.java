package Fk;

import oh.AbstractC14545v;
import oh.G0;
import oh.InterfaceC14516g;

public class o0 extends AbstractC14545v {

    public final F f7157b;

    public final I f7158c;

    public final C2544p f7159d;

    public static class a {

        public F f7160a;

        public I f7161b;

        public C2544p f7162c;

        public o0 a() {
            return new o0(this.f7160a, this.f7161b, this.f7162c);
        }

        public a b(C2544p c2544p) {
            this.f7162c = c2544p;
            return this;
        }

        public a c(F f10) {
            this.f7160a = f10;
            return this;
        }

        public a d(I i10) {
            this.f7161b = i10;
            return this;
        }
    }

    public o0(F f10, I i10, C2544p c2544p) {
        this.f7157b = f10;
        this.f7158c = i10;
        this.f7159d = c2544p;
    }

    public static a u() {
        return new a();
    }

    public static o0 w(Object obj) {
        if (obj instanceof o0) {
            return (o0) obj;
        }
        if (obj != null) {
            return new o0(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new G0(new InterfaceC14516g[]{this.f7157b, this.f7158c, this.f7159d});
    }

    public C2544p v() {
        return this.f7159d;
    }

    public F x() {
        return this.f7157b;
    }

    public I y() {
        return this.f7158c;
    }

    public o0(oh.E e10) {
        if (e10.size() != 3) {
            throw new IllegalArgumentException("expected sequence size of 3");
        }
        this.f7157b = F.w(e10.I(0));
        this.f7158c = I.y(e10.I(1));
        this.f7159d = C2544p.y(e10.I(2));
    }
}
