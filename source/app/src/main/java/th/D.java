package th;

import oh.A0;
import oh.AbstractC14541t;
import oh.AbstractC14545v;

public class D extends AbstractC14545v {

    public final AbstractC14541t f117431b;

    public D() {
        this.f117431b = A0.f98776c;
    }

    public static D u(Object obj) {
        if (obj == null || (obj instanceof D)) {
            return (D) obj;
        }
        if (obj instanceof AbstractC14541t) {
            return new D((AbstractC14541t) obj);
        }
        throw new IllegalArgumentException("Invalid object: " + obj.getClass().getName());
    }

    @Override
    public oh.B r() {
        return this.f117431b;
    }

    public D(AbstractC14541t abstractC14541t) {
        this.f117431b = abstractC14541t;
    }
}
