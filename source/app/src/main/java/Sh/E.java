package sh;

import hi.C13486b;
import java.math.BigInteger;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C0;
import oh.C14518h;
import oh.C14539s;
import oh.G0;

public class E extends AbstractC14545v {

    public final C14539s f109481b;

    public final C13486b f109482c;

    public final oh.E f109483d;

    public E(BigInteger bigInteger, C13486b c13486b, byte[][] bArr) {
        this.f109481b = new C14539s(bigInteger);
        this.f109482c = c13486b;
        C14518h c14518h = new C14518h(bArr.length);
        for (int i10 = 0; i10 != bArr.length; i10++) {
            c14518h.a(new C0(org.bouncycastle.util.a.p(bArr[i10])));
        }
        this.f109483d = new G0(c14518h);
    }

    public static E w(Object obj) {
        if (obj instanceof E) {
            return (E) obj;
        }
        if (obj != null) {
            return new E(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(3);
        c14518h.a(this.f109481b);
        c14518h.a(this.f109482c);
        c14518h.a(this.f109483d);
        return new G0(c14518h);
    }

    public byte[][] u() {
        int size = this.f109483d.size();
        byte[][] bArr = new byte[size];
        for (int i10 = 0; i10 != size; i10++) {
            bArr[i10] = org.bouncycastle.util.a.p(AbstractC14551y.F(this.f109483d.I(i10)).H());
        }
        return bArr;
    }

    public C13486b v() {
        return this.f109482c;
    }

    public BigInteger x() {
        return this.f109481b.I();
    }

    public E(oh.E e10) {
        if (e10.size() != 3) {
            throw new IllegalArgumentException("incorrect sequence size");
        }
        this.f109481b = C14539s.F(e10.I(0));
        this.f109482c = C13486b.v(e10.I(1));
        this.f109483d = oh.E.G(e10.I(2));
    }
}
