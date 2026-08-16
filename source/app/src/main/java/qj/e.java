package Qj;

import Xi.C3336c0;
import java.math.BigInteger;
import org.bouncycastle.util.i;
import org.bouncycastle.util.w;

public class e {
    public static String a(BigInteger bigInteger, C3336c0 c3336c0) {
        return new i(org.bouncycastle.util.a.C(bigInteger.toByteArray(), c3336c0.b().toByteArray(), c3336c0.a().toByteArray())).toString();
    }

    public static String b(String str, BigInteger bigInteger, C3336c0 c3336c0) {
        StringBuffer stringBuffer = new StringBuffer();
        String f10 = w.f();
        BigInteger modPow = c3336c0.a().modPow(bigInteger, c3336c0.b());
        stringBuffer.append(str);
        stringBuffer.append(" Private Key [");
        stringBuffer.append(a(modPow, c3336c0));
        stringBuffer.append("]");
        stringBuffer.append(f10);
        stringBuffer.append("                  Y: ");
        stringBuffer.append(modPow.toString(16));
        stringBuffer.append(f10);
        return stringBuffer.toString();
    }

    public static String c(String str, BigInteger bigInteger, C3336c0 c3336c0) {
        StringBuffer stringBuffer = new StringBuffer();
        String f10 = w.f();
        stringBuffer.append(str);
        stringBuffer.append(" Public Key [");
        stringBuffer.append(a(bigInteger, c3336c0));
        stringBuffer.append("]");
        stringBuffer.append(f10);
        stringBuffer.append("                 Y: ");
        stringBuffer.append(bigInteger.toString(16));
        stringBuffer.append(f10);
        return stringBuffer.toString();
    }
}
