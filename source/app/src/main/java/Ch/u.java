package Ch;

import oh.AbstractC14545v;
import oh.B;
import oh.E;
import oh.G0;

public class u extends AbstractC14545v {

    public E f4369b;

    public u(E e10) {
        this.f4369b = e10;
    }

    public static u v(Object obj) {
        if (obj instanceof u) {
            return (u) obj;
        }
        if (obj instanceof E) {
            return new u(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        return this.f4369b;
    }

    public int size() {
        return this.f4369b.size();
    }

    public t u(int i10) {
        return t.u(this.f4369b.I(i10));
    }

    public u(t[] tVarArr) {
        this.f4369b = new G0(tVarArr);
    }
}
