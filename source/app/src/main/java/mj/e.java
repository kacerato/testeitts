package Mj;

import Xi.C3363q;
import java.math.BigInteger;
import org.bouncycastle.util.w;

public class e {
    public static String a(BigInteger bigInteger, C3363q c3363q) {
        return new org.bouncycastle.util.i(org.bouncycastle.util.a.C(bigInteger.toByteArray(), c3363q.f().toByteArray(), c3363q.b().toByteArray())).toString();
    }

    public static String b(String str, BigInteger bigInteger, C3363q c3363q) {
        StringBuffer stringBuffer = new StringBuffer();
        String f10 = w.f();
        BigInteger modPow = c3363q.b().modPow(bigInteger, c3363q.f());
        stringBuffer.append(str);
        stringBuffer.append(" Private Key [");
        stringBuffer.append(a(modPow, c3363q));
        stringBuffer.append("]");
        stringBuffer.append(f10);
        stringBuffer.append("              Y: ");
        stringBuffer.append(modPow.toString(16));
        stringBuffer.append(f10);
        return stringBuffer.toString();
    }

    public static String c(String str, BigInteger bigInteger, C3363q c3363q) {
        StringBuffer stringBuffer = new StringBuffer();
        String f10 = w.f();
        stringBuffer.append(str);
        stringBuffer.append(" Public Key [");
        stringBuffer.append(a(bigInteger, c3363q));
        stringBuffer.append("]");
        stringBuffer.append(f10);
        stringBuffer.append("             Y: ");
        stringBuffer.append(bigInteger.toString(16));
        stringBuffer.append(f10);
        return stringBuffer.toString();
    }
}
