package hi;

import oh.AbstractC14545v;
import oh.AbstractC14551y;

public class g0 extends AbstractC14545v {

    public byte[] f90794b;

    public g0(AbstractC14551y abstractC14551y) {
        this(abstractC14551y.H());
    }

    public static g0 u(C13479C c13479c) {
        return v(C13479C.A(c13479c, C13478B.f90530f));
    }

    public static g0 v(Object obj) {
        if (obj instanceof g0) {
            return (g0) obj;
        }
        if (obj != null) {
            return new g0(AbstractC14551y.F(obj));
        }
        return null;
    }

    public static g0 w(oh.M m10, boolean z10) {
        return v(AbstractC14551y.G(m10, z10));
    }

    @Override
    public oh.B r() {
        return new oh.C0(x());
    }

    public byte[] x() {
        return org.bouncycastle.util.a.p(this.f90794b);
    }

    public g0(byte[] bArr) {
        this.f90794b = org.bouncycastle.util.a.p(bArr);
    }
}
