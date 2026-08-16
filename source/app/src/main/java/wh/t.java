package wh;

import hi.C13481E;
import hi.h0;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;
import oh.V;

public class t extends AbstractC14545v {

    public C13481E f127550b;

    public q f127551c;

    public h0 f127552d;

    public t(C13481E c13481e, h0 h0Var) {
        this.f127550b = c13481e;
        this.f127552d = h0Var;
    }

    public static t u(Object obj) {
        if (obj instanceof t) {
            return (t) obj;
        }
        if (obj != null) {
            return new t(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        C13481E c13481e = this.f127550b;
        if (c13481e != null) {
            c14518h.a(new K0(false, 0, (InterfaceC14516g) c13481e));
        } else {
            c14518h.a(this.f127551c);
        }
        c14518h.a(this.f127552d);
        return new G0(c14518h);
    }

    public h0 v() {
        return this.f127552d;
    }

    public q x() {
        return this.f127551c;
    }

    public C13481E y() {
        return this.f127550b;
    }

    public t(E e10) {
        InterfaceC14516g I10 = e10.I(0);
        if (I10 instanceof M) {
            this.f127550b = C13481E.v(V.n((M) I10, 0));
        } else {
            this.f127551c = q.v(I10);
        }
        this.f127552d = h0.w(e10.I(1));
    }

    public t(q qVar, h0 h0Var) {
        this.f127551c = qVar;
        this.f127552d = h0Var;
    }
}
