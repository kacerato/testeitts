package ci;

import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.C14518h;
import oh.E;
import oh.G0;

public class C4198i extends AbstractC14545v {

    public final E f34848b;

    public C4198i(E e10) {
        for (int i10 = 0; i10 != e10.size(); i10++) {
            if (!(e10.I(i10) instanceof AbstractC14551y)) {
                throw new IllegalArgumentException("unknown object in constructor: " + e10.I(i10).getClass().getName());
            }
        }
        this.f34848b = e10;
    }

    public static C4198i v(Object obj) {
        if (obj instanceof C4198i) {
            return (C4198i) obj;
        }
        if (obj != null) {
            return new C4198i(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        return this.f34848b;
    }

    public boolean u(byte[] bArr) {
        Enumeration J10 = this.f34848b.J();
        while (J10.hasMoreElements()) {
            if (org.bouncycastle.util.a.I(bArr, AbstractC14551y.F(J10.nextElement()).H())) {
                return true;
            }
        }
        return false;
    }

    public int x() {
        return this.f34848b.size();
    }

    public byte[][] y() {
        int size = this.f34848b.size();
        byte[][] bArr = new byte[size];
        for (int i10 = 0; i10 != size; i10++) {
            bArr[i10] = org.bouncycastle.util.a.p(AbstractC14551y.F(this.f34848b.I(i10)).H());
        }
        return bArr;
    }

    public C4198i(byte[] bArr) {
        this(new byte[][]{bArr});
    }

    public C4198i(byte[][] bArr) {
        C14518h c14518h = new C14518h(bArr.length);
        for (int i10 = 0; i10 != bArr.length; i10++) {
            c14518h.a(new C0(org.bouncycastle.util.a.p(bArr[i10])));
        }
        this.f34848b = new G0(c14518h);
    }
}
