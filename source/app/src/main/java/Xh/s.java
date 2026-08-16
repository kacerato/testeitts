package Xh;

import java.math.BigInteger;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C0;
import oh.C14518h;
import oh.C14539s;
import oh.G0;

public class s extends AbstractC14545v {

    public C14539s f28998b;

    public AbstractC14551y f28999c;

    public s(oh.E e10) {
        this.f28999c = (AbstractC14551y) e10.I(0);
        this.f28998b = C14539s.F(e10.I(1));
    }

    public static s v(Object obj) {
        if (obj instanceof s) {
            return (s) obj;
        }
        if (obj != null) {
            return new s(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f28999c);
        c14518h.a(this.f28998b);
        return new G0(c14518h);
    }

    public byte[] u() {
        return this.f28999c.H();
    }

    public BigInteger x() {
        return this.f28998b.I();
    }

    public s(byte[] bArr, int i10) {
        this.f28999c = new C0(bArr);
        this.f28998b = new C14539s(i10);
    }
}
