package uh;

import oh.AbstractC14545v;
import oh.C14518h;
import oh.X0;

public class C15612c extends AbstractC14545v {

    public oh.G f120643b;

    public C15612c(C14518h c14518h) {
        this.f120643b = new X0(c14518h);
    }

    public static C15612c v(Object obj) {
        if (obj instanceof C15612c) {
            return (C15612c) obj;
        }
        if (obj != null) {
            return new C15612c(oh.G.F(obj));
        }
        return null;
    }

    public static C15612c w(oh.M m10, boolean z10) {
        return v(oh.G.G(m10, z10));
    }

    @Override
    public oh.B r() {
        return this.f120643b;
    }

    public C15610a[] u() {
        int size = this.f120643b.size();
        C15610a[] c15610aArr = new C15610a[size];
        for (int i10 = 0; i10 != size; i10++) {
            c15610aArr[i10] = C15610a.y(this.f120643b.H(i10));
        }
        return c15610aArr;
    }

    public C15612c(oh.G g10) {
        this.f120643b = g10;
    }
}
