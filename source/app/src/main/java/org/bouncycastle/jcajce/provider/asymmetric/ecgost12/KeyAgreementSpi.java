package org.bouncycastle.jcajce.provider.asymmetric.ecgost12;

import Bi.InterfaceC2390w;
import Ci.j;
import Ii.C2656n;
import Xi.A0;
import Xi.C3335c;
import Xi.G;
import Xi.L;
import ck.C4206D;
import fk.InterfaceC13238d;
import fk.InterfaceC13239e;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import org.bouncycastle.jcajce.provider.asymmetric.util.i;

public class KeyAgreementSpi extends org.bouncycastle.jcajce.provider.asymmetric.util.a {

    public String f101278k;

    public G f101279l;

    public j f101280m;

    public byte[] f101281n;

    public static class a extends KeyAgreementSpi {
        public a() {
            super("ECGOST3410-2012-256", new j(new C2656n()), null);
        }
    }

    public static class b extends KeyAgreementSpi {
        public b() {
            super("ECGOST3410-2012-512", new j(new C2656n()), null);
        }
    }

    public KeyAgreementSpi(String str, j jVar, InterfaceC2390w interfaceC2390w) {
        super(str, interfaceC2390w);
        this.f101278k = str;
        this.f101280m = jVar;
    }

    public static C3335c h(PublicKey publicKey) throws InvalidKeyException {
        return publicKey instanceof org.bouncycastle.jcajce.provider.asymmetric.ecgost12.b ? ((org.bouncycastle.jcajce.provider.asymmetric.ecgost12.b) publicKey).c() : i.d(publicKey);
    }

    private static String i(Class cls) {
        String name = cls.getName();
        return name.substring(name.lastIndexOf(46) + 1);
    }

    @Override
    public byte[] b() {
        return this.f101281n;
    }

    @Override
    public void c(Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        if (!(key instanceof PrivateKey)) {
            throw new InvalidKeyException(this.f101278k + " key agreement requires " + i(InterfaceC13238d.class) + " for initialisation");
        }
        if (algorithmParameterSpec != null && !(algorithmParameterSpec instanceof C4206D)) {
            throw new InvalidAlgorithmParameterException("No algorithm parameters supported");
        }
        L l10 = (L) i.c((PrivateKey) key);
        this.f101279l = l10.d();
        byte[] b10 = algorithmParameterSpec instanceof C4206D ? ((C4206D) algorithmParameterSpec).b() : null;
        this.f101324c = b10;
        this.f101280m.d(new A0(l10, b10));
    }

    @Override
    public Key engineDoPhase(Key key, boolean z10) throws InvalidKeyException, IllegalStateException {
        if (this.f101279l == null) {
            throw new IllegalStateException(this.f101278k + " not initialised.");
        }
        if (!z10) {
            throw new IllegalStateException(this.f101278k + " can only be between two parties.");
        }
        if (!(key instanceof PublicKey)) {
            throw new InvalidKeyException(this.f101278k + " key agreement requires " + i(InterfaceC13239e.class) + " for doPhase");
        }
        try {
            this.f101281n = this.f101280m.a(h((PublicKey) key));
            return null;
        } catch (Exception e10) {
            throw new InvalidKeyException("calculation failed: " + e10.getMessage()) {
                @Override
                public Throwable getCause() {
                    return e10;
                }
            };
        }
    }
}
