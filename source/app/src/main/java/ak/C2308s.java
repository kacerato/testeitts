package Ak;

import Fk.p0;
import Fk.w0;
import oh.AbstractC14545v;
import oh.C14512e;
import oh.C14539s;
import oh.G0;
import oh.InterfaceC14516g;

public class C2308s extends AbstractC14545v {

    public final Bk.e f988b;

    public final p0 f989c;

    public final C14512e f990d;

    public final w0 f991e;

    public final O f992f;

    public static class a {

        public Bk.e f993a;

        public p0 f994b;

        public C14512e f995c;

        public w0 f996d;

        public O f997e;

        public C2308s a() {
            return new C2308s(this.f993a, this.f994b, this.f995c, this.f996d, this.f997e);
        }

        public C2311v b() {
            C14512e c14512e = this.f995c;
            if (c14512e == null || !C14512e.f98877g.A(c14512e)) {
                return new C2311v(this.f993a, this.f994b, this.f996d, this.f997e);
            }
            throw new IllegalArgumentException("isFullCtl must be false for DeltaCtl");
        }

        public D c() {
            return new D(this.f993a, this.f994b, this.f995c, this.f996d, this.f997e);
        }

        public Y d() {
            return new Y(this.f993a, this.f994b, this.f995c, this.f996d, this.f997e);
        }

        public a e(O o10) {
            this.f997e = o10;
            return this;
        }

        public a f(w0 w0Var) {
            this.f996d = w0Var;
            return this;
        }

        public a g(C14539s c14539s) {
            this.f996d = new w0(c14539s.I());
            return this;
        }

        public a h(C14512e c14512e) {
            this.f995c = c14512e;
            return this;
        }

        public a i(p0 p0Var) {
            this.f994b = p0Var;
            return this;
        }

        public a j(Bk.e eVar) {
            this.f993a = eVar;
            return this;
        }
    }

    public C2308s(Bk.e eVar, p0 p0Var, C14512e c14512e, w0 w0Var, O o10) {
        this.f988b = eVar;
        this.f989c = p0Var;
        this.f990d = c14512e;
        this.f991e = w0Var;
        this.f992f = o10;
    }

    public static a u() {
        return new a();
    }

    public static C2308s y(Object obj) {
        if (obj instanceof C2308s) {
            return (C2308s) obj;
        }
        if (obj != null) {
            return new C2308s(oh.E.G(obj));
        }
        return null;
    }

    public p0 A() {
        return this.f989c;
    }

    public Bk.e B() {
        return this.f988b;
    }

    @Override
    public oh.B r() {
        return new G0(new InterfaceC14516g[]{this.f988b, this.f989c, this.f990d, this.f991e, this.f992f});
    }

    public O v() {
        return this.f992f;
    }

    public w0 x() {
        return this.f991e;
    }

    public C14512e z() {
        return this.f990d;
    }

    public C2308s(oh.E e10) {
        if (e10.size() != 5) {
            throw new IllegalArgumentException("expected sequence size of 5");
        }
        this.f988b = Bk.e.u(e10.I(0));
        this.f989c = p0.x(e10.I(1));
        this.f990d = C14512e.G(e10.I(2));
        this.f991e = w0.w(e10.I(3));
        this.f992f = O.w(e10.I(4));
    }
}
