package org.bouncycastle.jcajce.provider.asymmetric.ec;

import Xi.C3335c;
import hk.C13524d;
import java.math.BigInteger;
import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.ECGenParameterSpec;
import java.security.spec.ECParameterSpec;
import jk.AbstractC13875e;
import ki.n;
import oh.A0;
import oh.AbstractC14541t;
import oh.C14549x;

public class d {
    public static C3335c a(PrivateKey privateKey) throws InvalidKeyException {
        return privateKey instanceof b ? ((b) privateKey).h() : org.bouncycastle.jcajce.provider.asymmetric.util.i.c(privateKey);
    }

    public static C3335c b(PublicKey publicKey) throws InvalidKeyException {
        return publicKey instanceof c ? ((c) publicKey).c() : org.bouncycastle.jcajce.provider.asymmetric.util.i.d(publicKey);
    }

    public static ki.l c(ECGenParameterSpec eCGenParameterSpec, Tj.c cVar) {
        return e(eCGenParameterSpec.getName(), cVar);
    }

    public static ki.j d(ECParameterSpec eCParameterSpec, boolean z10) {
        if (!(eCParameterSpec instanceof C13524d)) {
            if (eCParameterSpec == null) {
                return new ki.j((AbstractC14541t) A0.f98776c);
            }
            AbstractC13875e b10 = org.bouncycastle.jcajce.provider.asymmetric.util.h.b(eCParameterSpec.getCurve());
            return new ki.j(new ki.l(b10, new n(org.bouncycastle.jcajce.provider.asymmetric.util.h.f(b10, eCParameterSpec.getGenerator()), z10), eCParameterSpec.getOrder(), BigInteger.valueOf(eCParameterSpec.getCofactor()), eCParameterSpec.getCurve().getSeed()));
        }
        C13524d c13524d = (C13524d) eCParameterSpec;
        C14549x l10 = org.bouncycastle.jcajce.provider.asymmetric.util.i.l(c13524d.c());
        if (l10 == null) {
            l10 = new C14549x(c13524d.c());
        }
        return new ki.j(l10);
    }

    public static ki.l e(String str, Tj.c cVar) {
        if (str == null || str.length() < 1) {
            return null;
        }
        int indexOf = str.indexOf(32);
        if (indexOf > 0) {
            str = str.substring(indexOf + 1);
        }
        C14549x f10 = f(str);
        if (f10 == null) {
            return org.bouncycastle.jcajce.provider.asymmetric.util.i.i(str);
        }
        ki.l j10 = org.bouncycastle.jcajce.provider.asymmetric.util.i.j(f10);
        return (j10 != null || cVar == null) ? j10 : (ki.l) cVar.d().get(f10);
    }

    public static C14549x f(String str) {
        char charAt = str.charAt(0);
        if (charAt < '0' || charAt > '2') {
            return null;
        }
        try {
            return new C14549x(str);
        } catch (Exception unused) {
            return null;
        }
    }
}
