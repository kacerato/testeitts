package Fk;

import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C0;

public class E extends AbstractC14545v {

    public final byte[] f7013b;

    public E(AbstractC14551y abstractC14551y) {
        this(abstractC14551y.H());
    }

    public static E v(Object obj) {
        if (obj instanceof E) {
            return (E) obj;
        }
        if (obj != null) {
            return new E(AbstractC14551y.F(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new C0(this.f7013b);
    }

    public final void u() {
        if (this.f7013b.length != 2) {
            throw new IllegalArgumentException("laId must be 2 octets");
        }
    }

    public byte[] x() {
        return org.bouncycastle.util.a.p(this.f7013b);
    }

    public E(byte[] bArr) {
        this.f7013b = bArr;
        u();
    }
}
