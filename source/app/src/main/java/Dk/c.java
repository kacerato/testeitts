package Dk;

import Fk.C2551x;
import oh.AbstractC14545v;
import oh.B;
import oh.C14539s;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;
import yk.i;

public class c extends AbstractC14545v {

    public final C2551x f5269b;

    public final C14539s f5270c;

    public static class a {

        public C2551x f5271a;

        public C14539s f5272b;

        public c a() {
            return new c(this.f5271a, this.f5272b);
        }

        public d b() {
            return new d(this.f5271a, this.f5272b);
        }

        public a c(C2551x c2551x) {
            this.f5271a = c2551x;
            return this;
        }

        public a d(C14539s c14539s) {
            this.f5272b = c14539s;
            return this;
        }
    }

    public c(C2551x c2551x, C14539s c14539s) {
        this.f5269b = c2551x;
        this.f5270c = c14539s;
    }

    public static a u() {
        return new a();
    }

    public static c v(Object obj) {
        if (obj instanceof c) {
            return (c) obj;
        }
        if (obj != null) {
            return new c(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        return new G0(new InterfaceC14516g[]{this.f5269b, i.w(this.f5270c)});
    }

    public C2551x x() {
        return this.f5269b;
    }

    public C14539s y() {
        return this.f5270c;
    }

    public c(E e10) {
        if (e10.size() != 2) {
            throw new IllegalArgumentException("expected sequence size of 2");
        }
        this.f5269b = C2551x.v(e10.I(0));
        this.f5270c = e10.size() == 2 ? (C14539s) i.y(C14539s.class, e10.I(1)) : null;
    }
}
