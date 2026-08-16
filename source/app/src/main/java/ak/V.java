package Ak;

import Ek.C2502m;
import Fk.p0;
import oh.AbstractC14545v;
import oh.G0;
import oh.InterfaceC14516g;

public class V extends AbstractC14545v {

    public final p0 f908b;

    public final C2502m f909c;

    public static class a {

        public p0 f910a;

        public C2502m f911b;

        public V a() {
            return new V(this.f910a, this.f911b);
        }

        public W b() {
            return new W(this.f910a, this.f911b);
        }

        public X c() {
            return new X(this.f910a, this.f911b);
        }

        public a d(C2502m c2502m) {
            this.f911b = c2502m;
            return this;
        }

        public a e(p0 p0Var) {
            this.f910a = p0Var;
            return this;
        }
    }

    public V(p0 p0Var, C2502m c2502m) {
        this.f908b = p0Var;
        this.f909c = c2502m;
    }

    public static a u() {
        return new a();
    }

    public static V y(Object obj) {
        if (obj instanceof V) {
            return (V) obj;
        }
        if (obj != null) {
            return new V(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new G0(new InterfaceC14516g[]{this.f908b, this.f909c});
    }

    public C2502m v() {
        return this.f909c;
    }

    public p0 x() {
        return this.f908b;
    }

    public V(oh.E e10) {
        if (e10.size() != 2) {
            throw new IllegalArgumentException("expected sequence size of 2");
        }
        this.f908b = p0.x(e10.I(0));
        this.f909c = C2502m.w(e10.I(1));
    }
}
