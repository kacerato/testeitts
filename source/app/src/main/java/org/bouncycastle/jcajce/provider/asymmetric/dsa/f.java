package org.bouncycastle.jcajce.provider.asymmetric.dsa;

import Xi.A;
import Xi.C3335c;
import Xi.C3375z;
import hi.h0;
import java.math.BigInteger;
import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.interfaces.DSAParams;
import java.security.interfaces.DSAPrivateKey;
import java.security.interfaces.DSAPublicKey;
import ki.r;
import oh.C14549x;
import org.bouncycastle.util.i;

public class f {

    public static final C14549x[] f101152a = {r.f95349s6, Bj.b.f1912j, r.f95350t6};

    public static String a(BigInteger bigInteger, DSAParams dSAParams) {
        return new i(org.bouncycastle.util.a.D(bigInteger.toByteArray(), dSAParams.getP().toByteArray(), dSAParams.getQ().toByteArray(), dSAParams.getG().toByteArray())).toString();
    }

    public static C3335c b(PrivateKey privateKey) throws InvalidKeyException {
        if (!(privateKey instanceof DSAPrivateKey)) {
            throw new InvalidKeyException("can't identify DSA private key.");
        }
        DSAPrivateKey dSAPrivateKey = (DSAPrivateKey) privateKey;
        return new A(dSAPrivateKey.getX(), new C3375z(dSAPrivateKey.getParams().getP(), dSAPrivateKey.getParams().getQ(), dSAPrivateKey.getParams().getG()));
    }

    public static C3335c c(PublicKey publicKey) throws InvalidKeyException {
        if (publicKey instanceof d) {
            return ((d) publicKey).a();
        }
        if (publicKey instanceof DSAPublicKey) {
            return new d((DSAPublicKey) publicKey).a();
        }
        try {
            return new d(h0.w(publicKey.getEncoded())).a();
        } catch (Exception unused) {
            throw new InvalidKeyException("can't identify DSA public key: " + publicKey.getClass().getName());
        }
    }

    public static boolean d(C14549x c14549x) {
        int i10 = 0;
        while (true) {
            C14549x[] c14549xArr = f101152a;
            if (i10 == c14549xArr.length) {
                return false;
            }
            if (c14549x.A(c14549xArr[i10])) {
                return true;
            }
            i10++;
        }
    }

    public static C3375z e(DSAParams dSAParams) {
        if (dSAParams != null) {
            return new C3375z(dSAParams.getP(), dSAParams.getQ(), dSAParams.getG());
        }
        return null;
    }
}
