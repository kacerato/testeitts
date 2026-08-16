package jk;

import java.math.BigInteger;

public class n extends AbstractC13872b {

    public final AbstractC13875e f93926a;

    public final nk.d f93927b;

    public n(AbstractC13875e abstractC13875e, nk.d dVar) {
        if (abstractC13875e == null || abstractC13875e.A() == null) {
            throw new IllegalArgumentException("Need curve with known group order");
        }
        this.f93926a = abstractC13875e;
        this.f93927b = dVar;
    }

    @Override
    public i c(i iVar, BigInteger bigInteger) {
        if (!this.f93926a.n(iVar.i())) {
            throw new IllegalStateException();
        }
        BigInteger[] a10 = this.f93927b.a(bigInteger.mod(iVar.i().A()));
        BigInteger bigInteger2 = a10[0];
        BigInteger bigInteger3 = a10[1];
        return this.f93927b.b() ? C13873c.f(this.f93927b, iVar, bigInteger2, bigInteger3) : C13873c.e(iVar, bigInteger2, nk.c.c(this.f93927b, iVar), bigInteger3);
    }
}
