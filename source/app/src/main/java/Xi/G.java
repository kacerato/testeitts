package Xi;

import B0.C2324i;
import java.math.BigInteger;
import jk.AbstractC13875e;
import jk.C13873c;
import jk.InterfaceC13874d;

public class G implements InterfaceC13874d {

    public final AbstractC13875e f29216g;

    public final byte[] f29217h;

    public final jk.i f29218i;

    public final BigInteger f29219j;

    public final BigInteger f29220k;

    public BigInteger f29221l;

    public G(AbstractC13875e abstractC13875e, jk.i iVar, BigInteger bigInteger) {
        this(abstractC13875e, iVar, bigInteger, InterfaceC13874d.f93854b, null);
    }

    public static jk.i h(AbstractC13875e abstractC13875e, jk.i iVar) {
        if (iVar == null) {
            throw new NullPointerException("Point cannot be null");
        }
        jk.i B10 = C13873c.l(abstractC13875e, iVar).B();
        if (B10.v()) {
            throw new IllegalArgumentException("Point at infinity");
        }
        if (B10.x()) {
            return B10;
        }
        throw new IllegalArgumentException("Point not on curve");
    }

    public AbstractC13875e a() {
        return this.f29216g;
    }

    public jk.i b() {
        return this.f29218i;
    }

    public BigInteger c() {
        return this.f29220k;
    }

    public synchronized BigInteger d() {
        try {
            if (this.f29221l == null) {
                this.f29221l = org.bouncycastle.util.b.o(this.f29219j, this.f29220k);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.f29221l;
    }

    public BigInteger e() {
        return this.f29219j;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof G)) {
            return false;
        }
        G g10 = (G) obj;
        return this.f29216g.n(g10.f29216g) && this.f29218i.e(g10.f29218i) && this.f29219j.equals(g10.f29219j);
    }

    public byte[] f() {
        return org.bouncycastle.util.a.p(this.f29217h);
    }

    public BigInteger g(BigInteger bigInteger) {
        if (bigInteger == null) {
            throw new NullPointerException("Scalar cannot be null");
        }
        if (bigInteger.compareTo(InterfaceC13874d.f93854b) < 0 || bigInteger.compareTo(e()) >= 0) {
            throw new IllegalArgumentException("Scalar is not in the interval [1, n - 1]");
        }
        return bigInteger;
    }

    public int hashCode() {
        return ((((this.f29216g.hashCode() ^ 1028) * 257) ^ this.f29218i.hashCode()) * 257) ^ this.f29219j.hashCode();
    }

    public jk.i i(jk.i iVar) {
        return h(a(), iVar);
    }

    public G(AbstractC13875e abstractC13875e, jk.i iVar, BigInteger bigInteger, BigInteger bigInteger2) {
        this(abstractC13875e, iVar, bigInteger, bigInteger2, null);
    }

    public G(AbstractC13875e abstractC13875e, jk.i iVar, BigInteger bigInteger, BigInteger bigInteger2, byte[] bArr) {
        this.f29221l = null;
        if (abstractC13875e == null) {
            throw new NullPointerException("curve");
        }
        if (bigInteger == null) {
            throw new NullPointerException(C2324i.f1246e);
        }
        this.f29216g = abstractC13875e;
        this.f29218i = h(abstractC13875e, iVar);
        this.f29219j = bigInteger;
        this.f29220k = bigInteger2;
        this.f29217h = org.bouncycastle.util.a.p(bArr);
    }

    public G(ki.l lVar) {
        this(lVar.v(), lVar.z(), lVar.C(), lVar.A(), lVar.D());
    }
}
