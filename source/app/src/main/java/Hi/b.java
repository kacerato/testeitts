package Hi;

import java.math.BigInteger;
import jk.AbstractC13875e;

public class b {
    public static int a(BigInteger bigInteger) {
        return c(bigInteger.bitLength());
    }

    public static int b(AbstractC13875e abstractC13875e) {
        int w10 = (abstractC13875e.w() + 1) / 2;
        if (w10 > 256) {
            return 256;
        }
        return w10;
    }

    public static int c(int i10) {
        if (i10 < 2048) {
            return i10 >= 1024 ? 80 : 20;
        }
        if (i10 < 3072) {
            return 112;
        }
        if (i10 >= 7680) {
            return i10 >= 15360 ? 256 : 192;
        }
        return 128;
    }
}
