package yj;

import java.math.BigInteger;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.C14518h;
import oh.C14539s;
import oh.E;
import oh.G0;

public class f extends AbstractC14545v {

    public final byte[] f130408b;

    public final BigInteger f130409c;

    public final BigInteger f130410d;

    public final BigInteger f130411e;

    public final BigInteger f130412f;

    public f(E e10) {
        if (e10.size() != 4 && e10.size() != 5) {
            throw new IllegalArgumentException("invalid sequence: size = " + e10.size());
        }
        this.f130408b = org.bouncycastle.util.a.p(AbstractC14551y.F(e10.I(0)).H());
        this.f130409c = C14539s.F(e10.I(1)).I();
        this.f130410d = C14539s.F(e10.I(2)).I();
        this.f130411e = C14539s.F(e10.I(3)).I();
        this.f130412f = e10.size() == 5 ? C14539s.F(e10.I(4)).I() : null;
    }

    public static f w(Object obj) {
        if (obj instanceof f) {
            return (f) obj;
        }
        if (obj != null) {
            return new f(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(5);
        c14518h.a(new C0(this.f130408b));
        c14518h.a(new C14539s(this.f130409c));
        c14518h.a(new C14539s(this.f130410d));
        c14518h.a(new C14539s(this.f130411e));
        if (this.f130412f != null) {
            c14518h.a(new C14539s(this.f130412f));
        }
        return new G0(c14518h);
    }

    public BigInteger u() {
        return this.f130410d;
    }

    public BigInteger v() {
        return this.f130409c;
    }

    public BigInteger x() {
        return this.f130412f;
    }

    public BigInteger y() {
        return this.f130411e;
    }

    public byte[] z() {
        return org.bouncycastle.util.a.p(this.f130408b);
    }

    public f(byte[] bArr, int i10, int i11, int i12) {
        this(bArr, BigInteger.valueOf(i10), BigInteger.valueOf(i11), BigInteger.valueOf(i12), (BigInteger) null);
    }

    public f(byte[] bArr, int i10, int i11, int i12, int i13) {
        this(bArr, BigInteger.valueOf(i10), BigInteger.valueOf(i11), BigInteger.valueOf(i12), BigInteger.valueOf(i13));
    }

    public f(byte[] bArr, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) {
        this.f130408b = org.bouncycastle.util.a.p(bArr);
        this.f130409c = bigInteger;
        this.f130410d = bigInteger2;
        this.f130411e = bigInteger3;
        this.f130412f = bigInteger4;
    }
}
