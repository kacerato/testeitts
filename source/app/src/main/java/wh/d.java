package wh;

import oh.AbstractC14545v;
import oh.B;
import oh.E;
import oh.G0;

public class d extends AbstractC14545v {

    public E f127487b;

    public d(E e10) {
        this.f127487b = e10;
    }

    public static d u(Object obj) {
        if (obj instanceof d) {
            return (d) obj;
        }
        if (obj != null) {
            return new d(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        return this.f127487b;
    }

    public e[] v() {
        int size = this.f127487b.size();
        e[] eVarArr = new e[size];
        for (int i10 = 0; i10 != size; i10++) {
            eVarArr[i10] = e.w(this.f127487b.I(i10));
        }
        return eVarArr;
    }

    public d(e eVar) {
        this.f127487b = new G0(eVar);
    }

    public d(e[] eVarArr) {
        this.f127487b = new G0(eVarArr);
    }
}
