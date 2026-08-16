package sh;

import oh.AbstractC14545v;
import oh.G0;
import oh.M;

public class C15303b extends AbstractC14545v {

    public final C15302a[] f109504b;

    public C15303b(oh.E e10) {
        this.f109504b = K.c(e10);
    }

    public static C15303b v(Object obj) {
        if (obj instanceof C15303b) {
            return (C15303b) obj;
        }
        if (obj != null) {
            return new C15303b(oh.E.G(obj));
        }
        return null;
    }

    public static C15303b w(M m10, boolean z10) {
        return v(oh.E.H(m10, z10));
    }

    @Override
    public oh.B r() {
        return new G0(this.f109504b);
    }

    public C15302a[] u() {
        return K.b(this.f109504b);
    }

    public C15303b(C15302a c15302a) {
        this.f109504b = new C15302a[]{c15302a};
    }

    public C15303b(C15302a[] c15302aArr) {
        this.f109504b = K.b(c15302aArr);
    }
}
