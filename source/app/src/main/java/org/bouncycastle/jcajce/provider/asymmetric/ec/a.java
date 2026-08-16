package org.bouncycastle.jcajce.provider.asymmetric.ec;

import hk.C13524d;
import hk.C13525e;
import java.io.IOException;
import java.math.BigInteger;
import java.security.AlgorithmParametersSpi;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.ECGenParameterSpec;
import java.security.spec.ECParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import jk.AbstractC13875e;
import ki.n;
import oh.A0;
import oh.AbstractC14541t;
import oh.C14549x;
import org.bouncycastle.jce.provider.C14720a;

public class a extends AlgorithmParametersSpi {

    public ECParameterSpec f101167a;

    public String f101168b;

    public boolean a(String str) {
        return str == null || str.equals("ASN.1");
    }

    @Override
    public byte[] engineGetEncoded() throws IOException {
        return engineGetEncoded("ASN.1");
    }

    @Override
    public <T extends AlgorithmParameterSpec> T engineGetParameterSpec(Class<T> cls) throws InvalidParameterSpecException {
        if (ECParameterSpec.class.isAssignableFrom(cls) || cls == AlgorithmParameterSpec.class) {
            return this.f101167a;
        }
        if (ECGenParameterSpec.class.isAssignableFrom(cls)) {
            String str = this.f101168b;
            if (str != null) {
                C14549x l10 = org.bouncycastle.jcajce.provider.asymmetric.util.i.l(str);
                return l10 != null ? new ECGenParameterSpec(l10.J()) : new ECGenParameterSpec(this.f101168b);
            }
            C14549x k10 = org.bouncycastle.jcajce.provider.asymmetric.util.i.k(org.bouncycastle.jcajce.provider.asymmetric.util.h.g(this.f101167a));
            if (k10 != null) {
                return new ECGenParameterSpec(k10.J());
            }
        }
        throw new InvalidParameterSpecException("EC AlgorithmParameters cannot convert to " + cls.getName());
    }

    @Override
    public void engineInit(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidParameterSpecException {
        if (!(algorithmParameterSpec instanceof ECGenParameterSpec)) {
            if (algorithmParameterSpec instanceof ECParameterSpec) {
                this.f101168b = algorithmParameterSpec instanceof C13524d ? ((C13524d) algorithmParameterSpec).c() : null;
                this.f101167a = (ECParameterSpec) algorithmParameterSpec;
                return;
            } else {
                throw new InvalidParameterSpecException("AlgorithmParameterSpec class not recognized: " + algorithmParameterSpec.getClass().getName());
            }
        }
        ECGenParameterSpec eCGenParameterSpec = (ECGenParameterSpec) algorithmParameterSpec;
        ki.l c10 = d.c(eCGenParameterSpec, C14720a.f101702f);
        if (c10 != null) {
            this.f101168b = eCGenParameterSpec.getName();
            ECParameterSpec k10 = org.bouncycastle.jcajce.provider.asymmetric.util.h.k(c10);
            this.f101167a = new C13524d(this.f101168b, k10.getCurve(), k10.getGenerator(), k10.getOrder(), BigInteger.valueOf(k10.getCofactor()));
        } else {
            throw new InvalidParameterSpecException("EC curve name not recognized: " + eCGenParameterSpec.getName());
        }
    }

    @Override
    public String engineToString() {
        return "EC Parameters";
    }

    @Override
    public byte[] engineGetEncoded(String str) throws IOException {
        ki.j jVar;
        if (!a(str)) {
            throw new IOException("Unknown parameters format in AlgorithmParameters object: " + str);
        }
        ECParameterSpec eCParameterSpec = this.f101167a;
        if (eCParameterSpec == null) {
            jVar = new ki.j((AbstractC14541t) A0.f98776c);
        } else {
            String str2 = this.f101168b;
            if (str2 != null) {
                jVar = new ki.j(org.bouncycastle.jcajce.provider.asymmetric.util.i.l(str2));
            } else {
                C13525e g10 = org.bouncycastle.jcajce.provider.asymmetric.util.h.g(eCParameterSpec);
                jVar = new ki.j(new ki.l(g10.a(), new n(g10.b(), false), g10.d(), g10.c(), g10.e()));
            }
        }
        return jVar.getEncoded();
    }

    @Override
    public void engineInit(byte[] bArr) throws IOException {
        engineInit(bArr, "ASN.1");
    }

    @Override
    public void engineInit(byte[] bArr, String str) throws IOException {
        if (!a(str)) {
            throw new IOException("Unknown encoded parameters format in AlgorithmParameters object: " + str);
        }
        ki.j u10 = ki.j.u(bArr);
        AbstractC13875e l10 = org.bouncycastle.jcajce.provider.asymmetric.util.h.l(C14720a.f101702f, u10);
        if (u10.z()) {
            C14549x K10 = C14549x.K(u10.x());
            String f10 = ki.e.f(K10);
            this.f101168b = f10;
            if (f10 == null) {
                this.f101168b = K10.J();
            }
        }
        this.f101167a = org.bouncycastle.jcajce.provider.asymmetric.util.h.j(u10, l10);
    }
}
