package Ji;

import java.math.BigInteger;
import java.security.SecureRandom;
import jk.InterfaceC13874d;

public class l {
    public static BigInteger a(BigInteger bigInteger, SecureRandom secureRandom) {
        int bitLength = bigInteger.bitLength();
        while (true) {
            BigInteger f10 = org.bouncycastle.util.b.f(bitLength, secureRandom);
            if (!f10.equals(InterfaceC13874d.f93853a) && f10.compareTo(bigInteger) < 0) {
                return f10;
            }
        }
    }
}
