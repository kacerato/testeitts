package bj;

import java.io.IOException;
import java.math.BigInteger;
import oh.C14518h;
import oh.C14539s;
import oh.E;
import oh.G0;
import oh.InterfaceC14520i;

public class z implements InterfaceC3894b {

    public static final z f33418a = new z();

    @Override
    public BigInteger[] a(BigInteger bigInteger, byte[] bArr) throws IOException {
        E e10 = (E) oh.B.B(bArr);
        if (e10.size() == 2) {
            BigInteger d10 = d(bigInteger, e10, 0);
            BigInteger d11 = d(bigInteger, e10, 1);
            if (org.bouncycastle.util.a.g(b(bigInteger, d10, d11), bArr)) {
                return new BigInteger[]{d10, d11};
            }
        }
        throw new IllegalArgumentException("Malformed signature");
    }

    @Override
    public byte[] b(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) throws IOException {
        C14518h c14518h = new C14518h();
        e(bigInteger, c14518h, bigInteger2);
        e(bigInteger, c14518h, bigInteger3);
        return new G0(c14518h).s(InterfaceC14520i.f98892a);
    }

    public BigInteger c(BigInteger bigInteger, BigInteger bigInteger2) {
        if (bigInteger2.signum() < 0 || (bigInteger != null && bigInteger2.compareTo(bigInteger) >= 0)) {
            throw new IllegalArgumentException("Value out of range");
        }
        return bigInteger2;
    }

    public BigInteger d(BigInteger bigInteger, E e10, int i10) {
        return c(bigInteger, ((C14539s) e10.I(i10)).I());
    }

    public void e(BigInteger bigInteger, C14518h c14518h, BigInteger bigInteger2) {
        c14518h.a(new C14539s(c(bigInteger, bigInteger2)));
    }
}
