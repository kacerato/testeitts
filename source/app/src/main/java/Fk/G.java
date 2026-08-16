package Fk;

import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C0;

public class G extends AbstractC14545v {

    public final byte[] f7014b;

    public G(AbstractC14551y abstractC14551y) {
        this(abstractC14551y.H());
    }

    public static G u(Object obj) {
        if (obj instanceof G) {
            return (G) obj;
        }
        if (obj != null) {
            return new G(AbstractC14551y.F(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new C0(this.f7014b);
    }

    public byte[] v() {
        return this.f7014b;
    }

    public G(byte[] bArr) {
        if (bArr.length != 16) {
            throw new IllegalArgumentException("linkage seed not 16 bytes");
        }
        this.f7014b = org.bouncycastle.util.a.p(bArr);
    }
}
