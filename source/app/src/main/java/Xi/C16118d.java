package xi;

import fi.C13228d;
import hi.C13478B;
import java.math.BigInteger;
import li.C14146h;
import oh.AbstractC14551y;
import org.bouncycastle.util.r;
import uh.C15634z;

public class C16118d implements r {

    public byte[] f129830b;

    public C13228d f129831c;

    public BigInteger f129832d;

    public C16118d(C13228d c13228d, BigInteger bigInteger) {
        this(c13228d, bigInteger, null);
    }

    @Override
    public boolean Z2(Object obj) {
        if (obj instanceof C14146h) {
            C14146h c14146h = (C14146h) obj;
            if (c() != null) {
                C15634z c15634z = new C15634z(c14146h.x());
                return c15634z.v().equals(this.f129831c) && c15634z.x().L(this.f129832d);
            }
            if (this.f129830b != null) {
                C13478B b10 = c14146h.b(C13478B.f90530f);
                if (b10 == null) {
                    return org.bouncycastle.util.a.g(this.f129830b, C16115a.a(c14146h.m()));
                }
                return org.bouncycastle.util.a.g(this.f129830b, AbstractC14551y.F(b10.A()).H());
            }
        } else if (obj instanceof byte[]) {
            return org.bouncycastle.util.a.g(this.f129830b, (byte[]) obj);
        }
        return false;
    }

    public final boolean a(Object obj, Object obj2) {
        return obj != null ? obj.equals(obj2) : obj2 == null;
    }

    public C13228d b() {
        return this.f129831c;
    }

    public BigInteger c() {
        return this.f129832d;
    }

    @Override
    public Object clone() {
        return new C16118d(this.f129831c, this.f129832d, this.f129830b);
    }

    public byte[] d() {
        return org.bouncycastle.util.a.p(this.f129830b);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C16118d)) {
            return false;
        }
        C16118d c16118d = (C16118d) obj;
        return org.bouncycastle.util.a.g(this.f129830b, c16118d.f129830b) && a(this.f129832d, c16118d.f129832d) && a(this.f129831c, c16118d.f129831c);
    }

    public int hashCode() {
        int t02 = org.bouncycastle.util.a.t0(this.f129830b);
        BigInteger bigInteger = this.f129832d;
        if (bigInteger != null) {
            t02 ^= bigInteger.hashCode();
        }
        C13228d c13228d = this.f129831c;
        return c13228d != null ? t02 ^ c13228d.hashCode() : t02;
    }

    public C16118d(C13228d c13228d, BigInteger bigInteger, byte[] bArr) {
        this.f129831c = c13228d;
        this.f129832d = bigInteger;
        this.f129830b = bArr;
    }

    public C16118d(byte[] bArr) {
        this(null, null, bArr);
    }
}
