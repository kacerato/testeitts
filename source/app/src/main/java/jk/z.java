package jk;

import java.math.BigInteger;

public class z extends AbstractC13872b {
    @Override
    public i c(i iVar, BigInteger bigInteger) {
        i iVar2;
        C13870A p10 = B.p(iVar, B.l(bigInteger.bitLength()), true);
        i[] c10 = p10.c();
        i[] d10 = p10.d();
        int g10 = p10.g();
        int[] e10 = B.e(g10, bigInteger);
        i x10 = iVar.i().x();
        int length = e10.length;
        if (length > 1) {
            length--;
            int i10 = e10[length];
            int i11 = i10 >> 16;
            int i12 = i10 & 65535;
            int abs = Math.abs(i11);
            i[] iVarArr = i11 < 0 ? d10 : c10;
            if ((abs << 2) < (1 << g10)) {
                int d11 = org.bouncycastle.util.k.d(abs);
                int i13 = g10 - (32 - d11);
                iVar2 = iVarArr[((1 << (g10 - 1)) - 1) >>> 1].a(iVarArr[(((abs ^ (1 << (31 - d11))) << i13) + 1) >>> 1]);
                i12 -= i13;
            } else {
                iVar2 = iVarArr[abs >>> 1];
            }
            x10 = iVar2.L(i12);
        }
        while (length > 0) {
            length--;
            int i14 = e10[length];
            int i15 = i14 >> 16;
            x10 = x10.N((i15 < 0 ? d10 : c10)[Math.abs(i15) >>> 1]).L(i14 & 65535);
        }
        return x10;
    }
}
