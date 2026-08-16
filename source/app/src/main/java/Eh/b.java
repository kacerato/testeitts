package Eh;

import oh.AbstractC14545v;
import oh.B;
import oh.E;
import oh.G0;
import oh.M;

public class b extends AbstractC14545v {

    public final a[] f5819b;

    public b(a aVar) {
        this.f5819b = new a[]{aVar};
    }

    public static b v(Object obj) {
        if (obj instanceof b) {
            return (b) obj;
        }
        if (obj != null) {
            return new b(E.G(obj));
        }
        return null;
    }

    public static b w(M m10, boolean z10) {
        return v(E.H(m10, z10));
    }

    @Override
    public B r() {
        return new G0(this.f5819b);
    }

    public int size() {
        return this.f5819b.length;
    }

    public a[] u() {
        return c.a(this.f5819b);
    }

    public b(E e10) {
        this.f5819b = new a[e10.size()];
        for (int i10 = 0; i10 != e10.size(); i10++) {
            this.f5819b[i10] = a.v(e10.I(i10));
        }
    }

    public b(a[] aVarArr) {
        this.f5819b = c.a(aVarArr);
    }
}
