package Dh;

import hi.W;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.E;
import oh.G0;

public class h extends AbstractC14545v {

    public E f5190b;

    public E f5191c;

    public h(d dVar) {
        this.f5190b = new G0(dVar);
    }

    public static h v(Object obj) {
        if (obj == null || (obj instanceof h)) {
            return (h) obj;
        }
        if (obj instanceof E) {
            return new h((E) obj);
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f5190b);
        E e10 = this.f5191c;
        if (e10 != null) {
            c14518h.a(e10);
        }
        return new G0(c14518h);
    }

    public d[] u() {
        d[] dVarArr = new d[this.f5190b.size()];
        for (int i10 = 0; i10 != this.f5190b.size(); i10++) {
            dVarArr[i10] = d.w(this.f5190b.I(i10));
        }
        return dVarArr;
    }

    public W[] x() {
        E e10 = this.f5191c;
        if (e10 == null) {
            return null;
        }
        W[] wArr = new W[e10.size()];
        for (int i10 = 0; i10 != this.f5191c.size(); i10++) {
            wArr[i10] = W.u(this.f5191c.I(i10));
        }
        return wArr;
    }

    public h(E e10) {
        if (e10.size() < 1 || e10.size() > 2) {
            throw new IllegalArgumentException("Bad sequence size: " + e10.size());
        }
        this.f5190b = E.G(e10.I(0));
        if (e10.size() > 1) {
            this.f5191c = E.G(e10.I(1));
        }
    }

    public h(d[] dVarArr) {
        this.f5190b = new G0(dVarArr);
    }

    public h(d[] dVarArr, W[] wArr) {
        this.f5190b = new G0(dVarArr);
        if (wArr != null) {
            this.f5191c = new G0(wArr);
        }
    }
}
