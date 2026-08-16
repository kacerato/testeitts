package th;

import oh.AbstractC14545v;
import oh.C14539s;

public class N extends AbstractC14545v {

    public final oh.E f117527b;

    public N(oh.E e10) {
        this.f117527b = e10;
    }

    public static N u(Object obj) {
        if (obj instanceof N) {
            return (N) obj;
        }
        if (obj != null) {
            return new N(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return this.f117527b;
    }

    public C14539s[] v() {
        int size = this.f117527b.size();
        C14539s[] c14539sArr = new C14539s[size];
        for (int i10 = 0; i10 != size; i10++) {
            c14539sArr[i10] = C14539s.F(this.f117527b.I(i10));
        }
        return c14539sArr;
    }
}
