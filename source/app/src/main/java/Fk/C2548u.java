package Fk;

import oh.AbstractC14551y;

public class C2548u extends C2552y {
    public C2548u(byte[] bArr) {
        super(bArr);
        if (bArr.length != 10) {
            throw new IllegalArgumentException("hash id not 10 bytes");
        }
    }

    public static C2548u v(Object obj) {
        if (obj instanceof C2548u) {
            return (C2548u) obj;
        }
        if (obj != null) {
            return new C2548u(AbstractC14551y.F(obj).H());
        }
        return null;
    }
}
