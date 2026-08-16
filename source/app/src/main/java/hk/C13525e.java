package hk;

import java.math.BigInteger;
import java.security.spec.AlgorithmParameterSpec;
import jk.AbstractC13875e;

public class C13525e implements AlgorithmParameterSpec {

    public AbstractC13875e f91065b;

    public byte[] f91066c;

    public jk.i f91067d;

    public BigInteger f91068e;

    public BigInteger f91069f;

    public C13525e(AbstractC13875e abstractC13875e, jk.i iVar, BigInteger bigInteger) {
        this.f91065b = abstractC13875e;
        this.f91067d = iVar.B();
        this.f91068e = bigInteger;
        this.f91069f = BigInteger.valueOf(1L);
        this.f91066c = null;
    }

    public AbstractC13875e a() {
        return this.f91065b;
    }

    public jk.i b() {
        return this.f91067d;
    }

    public BigInteger c() {
        return this.f91069f;
    }

    public BigInteger d() {
        return this.f91068e;
    }

    public byte[] e() {
        return this.f91066c;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C13525e)) {
            return false;
        }
        C13525e c13525e = (C13525e) obj;
        return a().n(c13525e.a()) && b().e(c13525e.b());
    }

    public int hashCode() {
        return a().hashCode() ^ b().hashCode();
    }

    public C13525e(AbstractC13875e abstractC13875e, jk.i iVar, BigInteger bigInteger, BigInteger bigInteger2) {
        this.f91065b = abstractC13875e;
        this.f91067d = iVar.B();
        this.f91068e = bigInteger;
        this.f91069f = bigInteger2;
        this.f91066c = null;
    }

    public C13525e(AbstractC13875e abstractC13875e, jk.i iVar, BigInteger bigInteger, BigInteger bigInteger2, byte[] bArr) {
        this.f91065b = abstractC13875e;
        this.f91067d = iVar.B();
        this.f91068e = bigInteger;
        this.f91069f = bigInteger2;
        this.f91066c = bArr;
    }
}
