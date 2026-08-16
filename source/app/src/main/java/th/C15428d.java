package th;

import oh.AbstractC14545v;
import oh.G0;

public class C15428d extends AbstractC14545v {

    public final oh.E f117596b;

    public C15428d(hi.r rVar) {
        this.f117596b = new G0(rVar);
    }

    public static C15428d v(Object obj) {
        if (obj instanceof C15428d) {
            return (C15428d) obj;
        }
        if (obj != null) {
            return new C15428d(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return this.f117596b;
    }

    public hi.r[] u() {
        int size = this.f117596b.size();
        hi.r[] rVarArr = new hi.r[size];
        for (int i10 = 0; i10 != size; i10++) {
            rVarArr[i10] = hi.r.u(this.f117596b.I(i10));
        }
        return rVarArr;
    }

    public C15428d(oh.E e10) {
        this.f117596b = e10;
    }
}
