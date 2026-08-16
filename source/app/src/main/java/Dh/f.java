package Dh;

import hi.W;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.E;
import oh.G0;

public class f extends AbstractC14545v {

    public E f5186b;

    public E f5187c;

    public f(e eVar) {
        this.f5186b = new G0(eVar);
    }

    public static f v(Object obj) {
        if (obj instanceof f) {
            return (f) obj;
        }
        if (obj != null) {
            return new f(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f5186b);
        E e10 = this.f5187c;
        if (e10 != null) {
            c14518h.a(e10);
        }
        return new G0(c14518h);
    }

    public e[] u() {
        e[] eVarArr = new e[this.f5186b.size()];
        for (int i10 = 0; i10 != this.f5186b.size(); i10++) {
            eVarArr[i10] = e.w(this.f5186b.I(i10));
        }
        return eVarArr;
    }

    public W[] x() {
        E e10 = this.f5187c;
        if (e10 == null) {
            return null;
        }
        W[] wArr = new W[e10.size()];
        for (int i10 = 0; i10 != this.f5187c.size(); i10++) {
            wArr[i10] = W.u(this.f5187c.I(i10));
        }
        return wArr;
    }

    public f(E e10) {
        if (e10.size() < 1 || e10.size() > 2) {
            throw new IllegalArgumentException("Bad sequence size: " + e10.size());
        }
        this.f5186b = E.G(e10.I(0));
        if (e10.size() > 1) {
            this.f5187c = E.G(e10.I(1));
        }
    }
}
