package Bk;

import Ek.C;
import Ek.C2493d;
import Fk.A0;
import Fk.c0;
import Fk.l0;
import Fk.r;
import oh.AbstractC14545v;
import oh.B;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;
import yk.i;

public class b extends AbstractC14545v {

    public final C2493d f1916b;

    public final A0 f1917c;

    public final r f1918d;

    public final l0 f1919e;

    public final c0 f1920f;

    public final C f1921g;

    public b(C2493d c2493d, A0 a02, r rVar, l0 l0Var, c0 c0Var, C c10) {
        this.f1916b = c2493d;
        this.f1917c = a02;
        this.f1918d = rVar;
        this.f1919e = l0Var;
        this.f1920f = c0Var;
        this.f1921g = c10;
    }

    public static b z(Object obj) {
        if (obj instanceof b) {
            return (b) obj;
        }
        if (obj != null) {
            return new b(E.G(obj));
        }
        return null;
    }

    public r A() {
        return this.f1918d;
    }

    public A0 B() {
        return this.f1917c;
    }

    @Override
    public B r() {
        return new G0(new InterfaceC14516g[]{i.w(this.f1916b), i.w(this.f1917c), i.w(this.f1918d), i.w(this.f1919e), i.w(this.f1920f), i.w(this.f1921g)});
    }

    public c0 u() {
        return this.f1920f;
    }

    public l0 v() {
        return this.f1919e;
    }

    public C x() {
        return this.f1921g;
    }

    public C2493d y() {
        return this.f1916b;
    }

    public b(E e10) {
        if (e10.size() != 6) {
            throw new IllegalArgumentException("expected sequence size of 6");
        }
        this.f1916b = (C2493d) i.y(C2493d.class, e10.I(0));
        this.f1917c = (A0) i.y(A0.class, e10.I(1));
        this.f1918d = (r) i.y(r.class, e10.I(2));
        this.f1919e = (l0) i.y(l0.class, e10.I(3));
        this.f1920f = (c0) i.y(c0.class, e10.I(4));
        this.f1921g = (C) i.y(C.class, e10.I(5));
    }
}
