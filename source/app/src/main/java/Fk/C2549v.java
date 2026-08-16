package Fk;

import oh.AbstractC14551y;

public class C2549v extends C2552y {
    public C2549v(byte[] bArr) {
        super(bArr);
        if (bArr.length != 32) {
            throw new IllegalArgumentException("hash id not 32 bytes");
        }
    }

    public static C2549v v(Object obj) {
        if (obj instanceof C2549v) {
            return (C2549v) obj;
        }
        if (obj != null) {
            return new C2549v(AbstractC14551y.F(obj).H());
        }
        return null;
    }
}
