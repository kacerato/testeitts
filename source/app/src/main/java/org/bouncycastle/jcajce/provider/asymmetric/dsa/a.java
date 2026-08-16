package org.bouncycastle.jcajce.provider.asymmetric.dsa;

import Bi.r;
import Ii.L;
import Oi.C2938n;
import Xi.C3374y;
import Xi.C3375z;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.DSAParameterSpec;
import org.bouncycastle.jcajce.provider.asymmetric.util.n;

public class a extends org.bouncycastle.jcajce.provider.asymmetric.util.b {

    public SecureRandom f101135b;

    public int f101136c = 2048;

    public C3374y f101137d;

    @Override
    public AlgorithmParameters engineGenerateParameters() {
        C2938n c2938n = this.f101136c <= 1024 ? new C2938n() : new C2938n(L.x());
        if (this.f101135b == null) {
            this.f101135b = r.h();
        }
        int a10 = n.a(this.f101136c);
        int i10 = this.f101136c;
        if (i10 == 1024) {
            C3374y c3374y = new C3374y(1024, 160, a10, this.f101135b);
            this.f101137d = c3374y;
            c2938n.l(c3374y);
        } else if (i10 > 1024) {
            C3374y c3374y2 = new C3374y(i10, 256, a10, this.f101135b);
            this.f101137d = c3374y2;
            c2938n.l(c3374y2);
        } else {
            c2938n.k(i10, a10, this.f101135b);
        }
        C3375z d10 = c2938n.d();
        try {
            AlgorithmParameters a11 = a("DSA");
            a11.init(new DSAParameterSpec(d10.b(), d10.c(), d10.a()));
            return a11;
        } catch (Exception e10) {
            throw new RuntimeException(e10.getMessage());
        }
    }

    @Override
    public void engineInit(int i10, SecureRandom secureRandom) {
        if (i10 < 512 || i10 > 3072) {
            throw new InvalidParameterException("strength must be from 512 - 3072");
        }
        if (i10 <= 1024 && i10 % 64 != 0) {
            throw new InvalidParameterException("strength must be a multiple of 64 below 1024 bits.");
        }
        if (i10 > 1024 && i10 % 1024 != 0) {
            throw new InvalidParameterException("strength must be a multiple of 1024 above 1024 bits.");
        }
        this.f101136c = i10;
        this.f101135b = secureRandom;
    }

    @Override
    public void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for DSA parameter generation.");
    }
}
