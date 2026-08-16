package Dh;

import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;

public class b extends AbstractC14545v {

    public AbstractC14551y f5177b;

    public b(AbstractC14551y abstractC14551y) {
        this.f5177b = abstractC14551y;
    }

    public static b u(Object obj) {
        if (obj instanceof b) {
            return (b) obj;
        }
        if (obj != null) {
            return new b(AbstractC14551y.F(obj));
        }
        return null;
    }

    @Override
    public B r() {
        return this.f5177b;
    }

    public AbstractC14551y v() {
        return this.f5177b;
    }

    public b(byte[] bArr) {
        this(new C0(bArr));
    }
}
