package Gk;

import Fk.S;
import oh.AbstractC14545v;
import oh.B;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;

public class c extends AbstractC14545v {

    public final b f7859b;

    public final S f7860c;

    public final b f7861d;

    public static class a {

        public b f7862a;

        public S f7863b;

        public b f7864c;

        public c a() {
            return new c(this.f7862a, this.f7863b, this.f7864c);
        }

        public a b(b bVar) {
            this.f7864c = bVar;
            return this;
        }

        public a c(S s10) {
            this.f7863b = s10;
            return this;
        }

        public a d(b bVar) {
            this.f7862a = bVar;
            return this;
        }
    }

    public c(b bVar, S s10, b bVar2) {
        this.f7859b = bVar;
        this.f7860c = s10;
        this.f7861d = bVar2;
    }

    public static a u() {
        return new a();
    }

    public static c y(Object obj) {
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
        return new G0(new InterfaceC14516g[]{this.f7859b, this.f7860c, this.f7861d});
    }

    public b v() {
        return this.f7861d;
    }

    public S x() {
        return this.f7860c;
    }

    public b z() {
        return this.f7859b;
    }

    public c(E e10) {
        if (e10.size() != 3) {
            throw new IllegalArgumentException("expected sequence size of 3");
        }
        this.f7859b = b.z(e10.I(0));
        this.f7860c = S.v(e10.I(1));
        this.f7861d = b.z(e10.I(2));
    }
}
