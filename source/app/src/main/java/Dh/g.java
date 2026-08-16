package Dh;

import hi.W;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.E;
import oh.G0;

public class g extends AbstractC14545v {

    public E f5188b;

    public E f5189c;

    public g(c cVar) {
        this.f5188b = new G0(cVar);
    }

    public static g v(Object obj) {
        if (obj instanceof g) {
            return (g) obj;
        }
        if (obj != null) {
            return new g(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f5188b);
        E e10 = this.f5189c;
        if (e10 != null) {
            c14518h.a(e10);
        }
        return new G0(c14518h);
    }

    public c[] u() {
        c[] cVarArr = new c[this.f5188b.size()];
        for (int i10 = 0; i10 != this.f5188b.size(); i10++) {
            cVarArr[i10] = c.v(this.f5188b.I(i10));
        }
        return cVarArr;
    }

    public W[] x() {
        E e10 = this.f5189c;
        if (e10 == null) {
            return null;
        }
        W[] wArr = new W[e10.size()];
        for (int i10 = 0; i10 != this.f5189c.size(); i10++) {
            wArr[i10] = W.u(this.f5189c.I(i10));
        }
        return wArr;
    }

    public g(E e10) {
        if (e10.size() < 1 || e10.size() > 2) {
            throw new IllegalArgumentException("Bad sequence size: " + e10.size());
        }
        this.f5188b = E.G(e10.I(0));
        if (e10.size() > 1) {
            this.f5189c = E.G(e10.I(1));
        }
    }
}
