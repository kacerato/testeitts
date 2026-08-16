package Dk;

import oh.E;
import oh.InterfaceC14516g;

public class a extends f {

    public static class C0098a {

        public e f5263a;

        public InterfaceC14516g f5264b;

        public a a() {
            return new a(this.f5263a, this.f5264b);
        }

        public C0098a b(InterfaceC14516g interfaceC14516g) {
            this.f5264b = interfaceC14516g;
            return this;
        }

        public C0098a c(b bVar) {
            this.f5263a = f.f5275d;
            this.f5264b = bVar;
            return this;
        }

        public C0098a d(d dVar) {
            this.f5263a = f.f5276e;
            this.f5264b = dVar;
            return this;
        }

        public C0098a e(e eVar) {
            this.f5263a = eVar;
            return this;
        }
    }

    public a(e eVar, InterfaceC14516g interfaceC14516g) {
        super(eVar, interfaceC14516g);
    }

    public static C0098a A() {
        return new C0098a();
    }

    public static a D(Object obj) {
        if (obj instanceof a) {
            return (a) obj;
        }
        if (obj != null) {
            return new a(E.G(obj));
        }
        return null;
    }

    public b B() {
        return b.v(x());
    }

    public d C() {
        return d.z(x());
    }

    public a(E e10) {
        super(e10);
    }
}
