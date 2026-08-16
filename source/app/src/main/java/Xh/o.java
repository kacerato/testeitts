package Xh;

import java.math.BigInteger;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C0;
import oh.C14518h;
import oh.C14539s;
import oh.G0;

public class o extends AbstractC14545v {

    public C14539s f28987b;

    public AbstractC14551y f28988c;

    public o(oh.E e10) {
        this.f28988c = (AbstractC14551y) e10.I(0);
        this.f28987b = (C14539s) e10.I(1);
    }

    public static o u(Object obj) {
        if (obj instanceof o) {
            return (o) obj;
        }
        if (obj != null) {
            return new o(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f28988c);
        c14518h.a(this.f28987b);
        return new G0(c14518h);
    }

    public BigInteger v() {
        return this.f28987b.I();
    }

    public byte[] x() {
        return this.f28988c.H();
    }

    public o(byte[] bArr, int i10) {
        if (bArr.length != 8) {
            throw new IllegalArgumentException("salt length must be 8");
        }
        this.f28988c = new C0(bArr);
        this.f28987b = new C14539s(i10);
    }
}
