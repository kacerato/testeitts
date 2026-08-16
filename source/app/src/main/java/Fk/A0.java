package Fk;

import oh.AbstractC14545v;
import oh.G0;
import oh.InterfaceC14516g;

public class A0 extends AbstractC14545v {

    public final p0 f7004b;

    public final C2537i f7005c;

    public static class a {

        public p0 f7006a;

        public C2537i f7007b;

        public A0 a() {
            return new A0(this.f7006a, this.f7007b);
        }

        public a b(C2537i c2537i) {
            this.f7007b = c2537i;
            return this;
        }

        public a c(p0 p0Var) {
            this.f7006a = p0Var;
            return this;
        }
    }

    public A0(p0 p0Var, C2537i c2537i) {
        this.f7004b = p0Var;
        this.f7005c = c2537i;
    }

    public static a u() {
        return new a();
    }

    public static A0 w(Object obj) {
        if (obj instanceof A0) {
            return (A0) obj;
        }
        if (obj != null) {
            return new A0(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new G0(new InterfaceC14516g[]{this.f7004b, this.f7005c});
    }

    public String toString() {
        return "ValidityPeriod[" + ((Object) this.f7004b) + " " + ((Object) this.f7005c) + "]";
    }

    public C2537i v() {
        return this.f7005c;
    }

    public p0 x() {
        return this.f7004b;
    }

    public A0(oh.E e10) {
        if (e10.size() != 2) {
            throw new IllegalArgumentException("expected sequence size of 2");
        }
        this.f7004b = p0.x(e10.I(0));
        this.f7005c = C2537i.w(e10.I(1));
    }
}
