package sh;

import hi.C13478B;
import oh.AbstractC14545v;
import oh.G0;
import oh.M;

public class s extends AbstractC14545v {

    public final C13478B[] f109615b;

    public s(C13478B c13478b) {
        this.f109615b = new C13478B[]{c13478b};
    }

    public static s v(Object obj) {
        if (obj instanceof s) {
            return (s) obj;
        }
        if (obj != null) {
            return new s(oh.E.G(obj));
        }
        return null;
    }

    public static s w(M m10, boolean z10) {
        return v(oh.E.H(m10, z10));
    }

    @Override
    public oh.B r() {
        return new G0(this.f109615b);
    }

    public C13478B[] u() {
        return K.a(this.f109615b);
    }

    public s(oh.E e10) {
        this.f109615b = new C13478B[e10.size()];
        for (int i10 = 0; i10 != e10.size(); i10++) {
            this.f109615b[i10] = C13478B.z(e10.I(i10));
        }
    }

    public s(C13478B[] c13478bArr) {
        this.f109615b = K.a(c13478bArr);
    }
}
