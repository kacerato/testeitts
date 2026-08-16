package Fk;

import oh.AbstractC14551y;
import oh.C0;

public class l0 extends C0 {
    public l0(AbstractC14551y abstractC14551y) {
        this(abstractC14551y.H());
    }

    public static l0 M(Object obj) {
        if (obj instanceof l0) {
            return (l0) obj;
        }
        if (obj != null) {
            return new l0(AbstractC14551y.F(obj));
        }
        return null;
    }

    public l0(byte[] bArr) {
        super(bArr);
        if (bArr.length != 1) {
            throw new IllegalArgumentException("length is not 1");
        }
    }
}
