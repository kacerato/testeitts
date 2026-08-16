package Fk;

import oh.AbstractC14551y;

public class C2550w extends C2552y {
    public C2550w(byte[] bArr) {
        super(bArr);
        if (bArr.length != 3) {
            throw new IllegalArgumentException("hash id not 3 bytes");
        }
    }

    public static C2550w v(Object obj) {
        if (obj instanceof C2550w) {
            return (C2550w) obj;
        }
        if (obj != null) {
            return new C2550w(AbstractC14551y.F(obj).H());
        }
        return null;
    }
}
