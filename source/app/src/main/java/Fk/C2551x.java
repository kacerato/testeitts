package Fk;

import oh.AbstractC14551y;

public class C2551x extends C2552y {
    public C2551x(byte[] bArr) {
        super(bArr);
        if (bArr.length != 8) {
            throw new IllegalArgumentException("hash id not 8 bytes");
        }
    }

    public static C2551x v(Object obj) {
        if (obj instanceof C2551x) {
            return (C2551x) obj;
        }
        if (obj != null) {
            return new C2551x(AbstractC14551y.F(obj).H());
        }
        return null;
    }
}
