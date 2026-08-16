package Sj;

import Xh.t;
import Xi.F0;
import Xi.G0;
import hi.E0;
import java.math.BigInteger;
import java.security.interfaces.RSAPrivateCrtKey;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import oh.C14549x;

public class l {

    public static final C14549x[] f23599a = {t.f29017H0, E0.f90637W4, t.f29033N0, t.f29045Q0};

    public static String a(BigInteger bigInteger) {
        return new org.bouncycastle.util.i(bigInteger.toByteArray(), 32).toString();
    }

    public static String b(BigInteger bigInteger) {
        return new org.bouncycastle.util.i(bigInteger.toByteArray()).toString();
    }

    public static F0 c(RSAPrivateKey rSAPrivateKey) {
        if (rSAPrivateKey instanceof c) {
            return ((c) rSAPrivateKey).b();
        }
        if (!(rSAPrivateKey instanceof RSAPrivateCrtKey)) {
            return new F0(true, rSAPrivateKey.getModulus(), rSAPrivateKey.getPrivateExponent());
        }
        RSAPrivateCrtKey rSAPrivateCrtKey = (RSAPrivateCrtKey) rSAPrivateKey;
        return new G0(rSAPrivateCrtKey.getModulus(), rSAPrivateCrtKey.getPublicExponent(), rSAPrivateCrtKey.getPrivateExponent(), rSAPrivateCrtKey.getPrimeP(), rSAPrivateCrtKey.getPrimeQ(), rSAPrivateCrtKey.getPrimeExponentP(), rSAPrivateCrtKey.getPrimeExponentQ(), rSAPrivateCrtKey.getCrtCoefficient());
    }

    public static F0 d(RSAPublicKey rSAPublicKey) {
        return rSAPublicKey instanceof d ? ((d) rSAPublicKey).a() : new F0(false, rSAPublicKey.getModulus(), rSAPublicKey.getPublicExponent());
    }

    public static boolean e(C14549x c14549x) {
        int i10 = 0;
        while (true) {
            C14549x[] c14549xArr = f23599a;
            if (i10 == c14549xArr.length) {
                return false;
            }
            if (c14549x.A(c14549xArr[i10])) {
                return true;
            }
            i10++;
        }
    }
}
