package hi;

import oh.AbstractC14508c;
import oh.AbstractC14545v;
import oh.C14538r0;

public class C13490d extends AbstractC14545v {

    public final AbstractC14508c f90782b;

    public C13490d(AbstractC14508c abstractC14508c) {
        this.f90782b = abstractC14508c;
    }

    public static C13490d u(C13479C c13479c) {
        return v(C13479C.A(c13479c, C13478B.f90527M));
    }

    public static C13490d v(Object obj) {
        if (obj instanceof C13490d) {
            return (C13490d) obj;
        }
        if (obj != null) {
            return new C13490d(AbstractC14508c.H(obj));
        }
        return null;
    }

    public static C13490d w(oh.M m10, boolean z10) {
        return v(AbstractC14508c.I(m10, z10));
    }

    @Override
    public oh.B r() {
        return this.f90782b;
    }

    public AbstractC14508c x() {
        return this.f90782b;
    }

    public C13490d(byte[] bArr) {
        this.f90782b = new C14538r0(bArr);
    }
}
