package ci;

import oh.AbstractC14545v;
import oh.B;
import oh.E;
import oh.G0;
import oh.M;
import uh.C15610a;

public class C4194e extends AbstractC14545v {

    public E f34837b;

    public C4194e(E e10) {
        this.f34837b = e10;
    }

    public static C4194e v(Object obj) {
        if (obj instanceof C4194e) {
            return (C4194e) obj;
        }
        if (obj != null) {
            return new C4194e(E.G(obj));
        }
        return null;
    }

    public static C4194e w(M m10, boolean z10) {
        return v(E.H(m10, z10));
    }

    @Override
    public B r() {
        return this.f34837b;
    }

    public C15610a[] u() {
        int size = this.f34837b.size();
        C15610a[] c15610aArr = new C15610a[size];
        for (int i10 = 0; i10 != size; i10++) {
            c15610aArr[i10] = C15610a.y(this.f34837b.I(i10));
        }
        return c15610aArr;
    }

    public C4194e(C15610a[] c15610aArr) {
        this.f34837b = new G0(c15610aArr);
    }
}
