package ti;

import Vh.p;
import hi.C13479C;
import java.util.Date;
import oh.E;

public class C15458k {

    public Vh.l f117689a;

    public C15458k(Vh.l lVar) {
        this.f117689a = lVar;
    }

    public Date a() {
        return C15456i.a(this.f117689a.x());
    }

    public C15459l b() {
        return new C15459l(this.f117689a.y());
    }

    public C13479C c() {
        return this.f117689a.z();
    }

    public C15461n[] d() {
        E A10 = this.f117689a.A();
        int size = A10.size();
        C15461n[] c15461nArr = new C15461n[size];
        for (int i10 = 0; i10 != size; i10++) {
            c15461nArr[i10] = new C15461n(p.w(A10.I(i10)));
        }
        return c15461nArr;
    }

    public int e() {
        return this.f117689a.B().O() + 1;
    }
}
