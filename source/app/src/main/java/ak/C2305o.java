package Ak;

import Fk.C2552y;
import oh.AbstractC14551y;

public class C2305o extends C2552y {
    public C2305o(AbstractC14551y abstractC14551y) {
        super(abstractC14551y.H());
    }

    public static C2305o v(Object obj) {
        if (obj instanceof C2305o) {
            return (C2305o) obj;
        }
        if (obj != null) {
            return new C2305o(AbstractC14551y.F(obj));
        }
        return null;
    }

    public C2305o(byte[] bArr) {
        super(bArr);
        if (bArr.length != 8) {
            throw new IllegalArgumentException("expected 8 bytes");
        }
    }
}
