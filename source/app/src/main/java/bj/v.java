package bj;

import java.math.BigInteger;

public class v implements InterfaceC3894b {

    public static final v f33398a = new v();

    @Override
    public BigInteger[] a(BigInteger bigInteger, byte[] bArr) {
        int k10 = org.bouncycastle.util.b.k(bigInteger);
        if (bArr.length == k10 * 2) {
            return new BigInteger[]{d(bigInteger, bArr, 0, k10), d(bigInteger, bArr, k10, k10)};
        }
        throw new IllegalArgumentException("Encoding has incorrect length");
    }

    @Override
    public byte[] b(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        int k10 = org.bouncycastle.util.b.k(bigInteger);
        byte[] bArr = new byte[k10 * 2];
        e(bigInteger, bigInteger2, bArr, 0, k10);
        e(bigInteger, bigInteger3, bArr, k10, k10);
        return bArr;
    }

    public BigInteger c(BigInteger bigInteger, BigInteger bigInteger2) {
        if (bigInteger2.signum() < 0 || bigInteger2.compareTo(bigInteger) >= 0) {
            throw new IllegalArgumentException("Value out of range");
        }
        return bigInteger2;
    }

    public BigInteger d(BigInteger bigInteger, byte[] bArr, int i10, int i11) {
        return c(bigInteger, new BigInteger(1, org.bouncycastle.util.a.X(bArr, i10, i11 + i10)));
    }

    public final void e(BigInteger bigInteger, BigInteger bigInteger2, byte[] bArr, int i10, int i11) {
        byte[] byteArray = c(bigInteger, bigInteger2).toByteArray();
        int max = Math.max(0, byteArray.length - i11);
        int length = byteArray.length - max;
        int i12 = (i11 - length) + i10;
        org.bouncycastle.util.a.f0(bArr, i10, i12, (byte) 0);
        System.arraycopy(byteArray, max, bArr, i12, length);
    }
}
