package wh;

import java.math.BigInteger;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.C14539s;
import oh.E;
import oh.G0;

public class p extends AbstractC14545v {

    public static final C14539s f127534d = new C14539s(0);

    public static final C14539s f127535e = new C14539s(1);

    public C14539s f127536b;

    public E f127537c;

    public p(BigInteger bigInteger) {
        this(new C14539s(bigInteger));
    }

    public static p v(Object obj) {
        if (obj instanceof p) {
            return (p) obj;
        }
        if (obj != null) {
            return new p(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f127536b);
        E e10 = this.f127537c;
        if (e10 != null) {
            c14518h.a(e10);
        }
        return new G0(c14518h);
    }

    public C14539s u() {
        return this.f127536b;
    }

    public v[] x() {
        E e10 = this.f127537c;
        if (e10 == null) {
            return null;
        }
        int size = e10.size();
        v[] vVarArr = new v[size];
        for (int i10 = 0; i10 != size; i10++) {
            vVarArr[i10] = v.u(this.f127537c.I(i10));
        }
        return vVarArr;
    }

    public p(C14539s c14539s) {
        this.f127536b = c14539s;
    }

    public p(E e10) {
        this.f127536b = C14539s.F(e10.I(0));
        if (e10.size() > 1) {
            this.f127537c = E.G(e10.I(1));
        }
    }

    public p(v vVar) {
        this(vVar != null ? new v[]{vVar} : null);
    }

    public p(v[] vVarArr) {
        this.f127536b = f127535e;
        if (vVarArr != null) {
            this.f127537c = new G0(vVarArr);
        } else {
            this.f127537c = null;
        }
    }
}
