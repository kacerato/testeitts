package ck;

import Xi.C3363q;
import Xi.C3371v;
import java.math.BigInteger;
import javax.crypto.spec.DHParameterSpec;

public class C4210c extends DHParameterSpec {

    public final BigInteger f34897b;

    public final BigInteger f34898c;

    public final int f34899d;

    public C3371v f34900e;

    public C4210c(C3363q c3363q) {
        this(c3363q.f(), c3363q.g(), c3363q.b(), c3363q.c(), c3363q.e(), c3363q.d());
        this.f34900e = c3363q.h();
    }

    public C3363q a() {
        return new C3363q(getP(), getG(), this.f34897b, this.f34899d, getL(), this.f34898c, this.f34900e);
    }

    public BigInteger b() {
        return this.f34898c;
    }

    public int c() {
        return this.f34899d;
    }

    public BigInteger d() {
        return this.f34897b;
    }

    public C4210c(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this(bigInteger, bigInteger2, bigInteger3, null, 0);
    }

    public C4210c(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, int i10) {
        this(bigInteger, bigInteger2, bigInteger3, null, i10);
    }

    public C4210c(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, int i10) {
        this(bigInteger, bigInteger2, bigInteger3, bigInteger4, 0, i10);
    }

    public C4210c(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, int i10, int i11) {
        super(bigInteger, bigInteger3, i11);
        this.f34897b = bigInteger2;
        this.f34898c = bigInteger4;
        this.f34899d = i10;
    }
}
