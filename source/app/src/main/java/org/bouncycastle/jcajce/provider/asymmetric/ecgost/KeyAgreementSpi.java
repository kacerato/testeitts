package org.bouncycastle.jcajce.provider.asymmetric.ecgost;

import Bi.InterfaceC2390w;
import Ci.j;
import Ii.C2654l;
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
import ki.q;
import org.bouncycastle.jcajce.provider.asymmetric.util.i;

public class KeyAgreementSpi extends org.bouncycastle.jcajce.provider.asymmetric.util.a {

    public static final q f101250o = new q();

    public String f101251k;

    public G f101252l;

    public j f101253m;

    public byte[] f101254n;

    public static class a extends KeyAgreementSpi {
        public a() {
            super("ECGOST3410", new j(new C2654l()), null);
        }
    }

    public KeyAgreementSpi(String str, j jVar, InterfaceC2390w interfaceC2390w) {
        super(str, interfaceC2390w);
        this.f101251k = str;
        this.f101253m = jVar;
    }

    public static C3335c h(PublicKey publicKey) throws InvalidKeyException {
        return publicKey instanceof org.bouncycastle.jcajce.provider.asymmetric.ec.c ? ((b) publicKey).c() : i.d(publicKey);
    }

    private static String i(Class cls) {
        String name = cls.getName();
        return name.substring(name.lastIndexOf(46) + 1);
    }

    @Override
    public byte[] b() {
        return this.f101254n;
    }

    @Override
    public void c(Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        if (!(key instanceof PrivateKey)) {
            throw new InvalidKeyException(this.f101251k + " key agreement requires " + i(InterfaceC13238d.class) + " for initialisation");
        }
        if (algorithmParameterSpec != null && !(algorithmParameterSpec instanceof C4206D)) {
            throw new InvalidAlgorithmParameterException("No algorithm parameters supported");
        }
        L l10 = (L) i.c((PrivateKey) key);
        this.f101252l = l10.d();
        byte[] b10 = algorithmParameterSpec instanceof C4206D ? ((C4206D) algorithmParameterSpec).b() : null;
        this.f101324c = b10;
        this.f101253m.d(new A0(l10, b10));
    }

    @Override
    public Key engineDoPhase(Key key, boolean z10) throws InvalidKeyException, IllegalStateException {
        if (this.f101252l == null) {
            throw new IllegalStateException(this.f101251k + " not initialised.");
        }
        if (!z10) {
            throw new IllegalStateException(this.f101251k + " can only be between two parties.");
        }
        if (!(key instanceof PublicKey)) {
            throw new InvalidKeyException(this.f101251k + " key agreement requires " + i(InterfaceC13239e.class) + " for doPhase");
        }
        try {
            this.f101254n = this.f101253m.a(h((PublicKey) key));
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
