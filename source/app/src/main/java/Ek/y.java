package Ek;

import Fk.C2551x;
import Fk.C2552y;
import oh.AbstractC14551y;

public class y extends C2551x {
    public y(byte[] bArr) {
        super(bArr);
    }

    public static y w(Object obj) {
        if (obj instanceof y) {
            return (y) obj;
        }
        if (obj != null) {
            return obj instanceof C2552y ? new y(((C2552y) obj).u()) : new y(AbstractC14551y.F(obj).H());
        }
        return null;
    }
}
