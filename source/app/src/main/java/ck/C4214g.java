package ck;

import Xi.G;
import di.C12925d;
import java.security.spec.ECParameterSpec;

public class C4214g extends ECParameterSpec {

    public final byte[] f34907b;

    public final G f34908c;

    public C4214g(G g10) {
        this(g10, org.bouncycastle.jcajce.provider.asymmetric.util.h.i(g10), C12925d.v());
    }

    public byte[] a() {
        return org.bouncycastle.util.a.p(this.f34907b);
    }

    public boolean equals(Object obj) {
        if (obj instanceof C4214g) {
            return this.f34908c.equals(((C4214g) obj).f34908c);
        }
        return false;
    }

    public int hashCode() {
        return this.f34908c.hashCode();
    }

    public C4214g(G g10, ECParameterSpec eCParameterSpec, byte[] bArr) {
        super(eCParameterSpec.getCurve(), eCParameterSpec.getGenerator(), eCParameterSpec.getOrder(), eCParameterSpec.getCofactor());
        this.f34908c = g10;
        this.f34907b = org.bouncycastle.util.a.p(bArr);
    }
}
