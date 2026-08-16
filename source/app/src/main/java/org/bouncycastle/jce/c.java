package org.bouncycastle.jce;

import java.math.BigInteger;
import java.security.spec.ECFieldF2m;
import java.security.spec.ECFieldFp;
import java.security.spec.ECPoint;
import java.security.spec.EllipticCurve;
import jk.AbstractC13875e;

public class c {
    public static ECPoint a(EllipticCurve ellipticCurve, byte[] bArr) {
        AbstractC13875e c1828e;
        if (ellipticCurve.getField() instanceof ECFieldFp) {
            c1828e = new AbstractC13875e.f(((ECFieldFp) ellipticCurve.getField()).getP(), ellipticCurve.getA(), ellipticCurve.getB(), null, null);
        } else {
            int[] midTermsOfReductionPolynomial = ((ECFieldF2m) ellipticCurve.getField()).getMidTermsOfReductionPolynomial();
            c1828e = midTermsOfReductionPolynomial.length == 3 ? new AbstractC13875e.C1828e(((ECFieldF2m) ellipticCurve.getField()).getM(), midTermsOfReductionPolynomial[2], midTermsOfReductionPolynomial[1], midTermsOfReductionPolynomial[0], ellipticCurve.getA(), ellipticCurve.getB(), (BigInteger) null, (BigInteger) null) : new AbstractC13875e.C1828e(((ECFieldF2m) ellipticCurve.getField()).getM(), midTermsOfReductionPolynomial[0], ellipticCurve.getA(), ellipticCurve.getB(), (BigInteger) null, (BigInteger) null);
        }
        return org.bouncycastle.jcajce.provider.asymmetric.util.h.d(c1828e.l(bArr));
    }
}
