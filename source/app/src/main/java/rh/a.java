package Rh;

import hi.h0;
import oh.AbstractC14536q;
import oh.AbstractC14545v;
import oh.B;
import oh.C14554z0;
import oh.E;

public class a extends AbstractC14545v {

    public E f22796b;

    public h0 f22797c;

    public AbstractC14536q f22798d;

    public a(E e10) {
        this.f22796b = e10;
        this.f22797c = h0.w(e10.I(0));
        this.f22798d = AbstractC14536q.F(e10.I(1));
    }

    public static a w(Object obj) {
        if (obj instanceof a) {
            return (a) obj;
        }
        if (obj != null) {
            return new a(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        return this.f22796b;
    }

    public C14554z0 u() {
        AbstractC14536q abstractC14536q = this.f22798d;
        return (abstractC14536q == null || (abstractC14536q instanceof C14554z0)) ? (C14554z0) abstractC14536q : new C14554z0(this.f22798d.getString(), false);
    }

    public AbstractC14536q v() {
        return this.f22798d;
    }

    public h0 x() {
        return this.f22797c;
    }
}
