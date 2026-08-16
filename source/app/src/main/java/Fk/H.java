package Fk;

import java.io.IOException;
import oh.AbstractC14551y;
import oh.C0;
import oh.InterfaceC14516g;

public class H extends C0 {
    public H(InterfaceC14516g interfaceC14516g) throws IOException {
        super(interfaceC14516g);
    }

    public static H M(Object obj) {
        if (obj instanceof H) {
            return (H) obj;
        }
        if (obj != null) {
            return new H(AbstractC14551y.F(obj).H());
        }
        return null;
    }

    public H(byte[] bArr) {
        super(bArr);
    }
}
