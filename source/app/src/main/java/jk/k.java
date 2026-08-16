package jk;

import java.math.BigInteger;
import sk.AbstractC15329o;

public class k extends AbstractC13872b {
    @Override
    public i c(i iVar, BigInteger bigInteger) {
        AbstractC13875e i10 = iVar.i();
        if (bigInteger.bitLength() > m.a(i10)) {
            throw new IllegalStateException("fixed-point comb doesn't support scalars larger than the curve order");
        }
        l c10 = m.c(iVar);
        g a10 = c10.a();
        int c11 = c10.c();
        int i11 = ((r1 + c11) - 1) / c11;
        i x10 = i10.x();
        int i12 = c11 * i11;
        int[] U10 = AbstractC15329o.U(i12, bigInteger);
        int i13 = i12 - 1;
        for (int i14 = 0; i14 < i11; i14++) {
            int i15 = 0;
            for (int i16 = i13 - i14; i16 >= 0; i16 -= i11) {
                int i17 = U10[i16 >>> 5] >>> (i16 & 31);
                i15 = ((i15 ^ (i17 >>> 1)) << 1) ^ i17;
            }
            x10 = x10.N(a10.a(i15));
        }
        return x10.a(c10.b());
    }
}
