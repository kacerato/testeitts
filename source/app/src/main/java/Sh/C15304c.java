package sh;

import oh.AbstractC14545v;
import oh.G0;
import oh.M;

public class C15304c extends AbstractC14545v {

    public final C15302a[] f109505b;

    public C15304c(oh.E e10) {
        this.f109505b = K.c(e10);
    }

    public static C15304c v(Object obj) {
        if (obj instanceof C15304c) {
            return (C15304c) obj;
        }
        if (obj != null) {
            return new C15304c(oh.E.G(obj));
        }
        return null;
    }

    public static C15304c w(M m10, boolean z10) {
        return v(oh.E.H(m10, z10));
    }

    @Override
    public oh.B r() {
        return new G0(this.f109505b);
    }

    public C15302a[] u() {
        return K.b(this.f109505b);
    }

    public C15304c(C15302a c15302a) {
        this.f109505b = new C15302a[]{c15302a};
    }

    public C15304c(C15302a[] c15302aArr) {
        this.f109505b = K.b(c15302aArr);
    }
}
