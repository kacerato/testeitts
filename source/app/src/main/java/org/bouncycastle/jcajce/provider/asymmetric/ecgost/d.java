package org.bouncycastle.jcajce.provider.asymmetric.ecgost;

import Bi.C2371c;
import Oi.C2940p;
import Xi.G;
import Xi.H;
import Xi.I;
import Xi.K;
import Xi.L;
import Xi.M;
import ck.l;
import hk.C13522b;
import hk.C13524d;
import hk.C13525e;
import java.math.BigInteger;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.ECGenParameterSpec;
import java.security.spec.ECParameterSpec;
import jk.AbstractC13875e;
import oh.C14549x;
import org.bouncycastle.jcajce.provider.asymmetric.util.h;
import org.bouncycastle.jce.provider.C14720a;

public class d extends KeyPairGenerator {

    public Object f101269a;

    public C2940p f101270b;

    public String f101271c;

    public I f101272d;

    public int f101273e;

    public SecureRandom f101274f;

    public boolean f101275g;

    public d() {
        super("ECGOST3410");
        this.f101269a = null;
        this.f101270b = new C2940p();
        this.f101271c = "ECGOST3410";
        this.f101273e = 239;
        this.f101274f = null;
        this.f101275g = false;
    }

    public final void a(l lVar, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        C14549x e10 = lVar.e();
        ki.l k10 = yh.b.k(e10);
        if (k10 == null) {
            throw new InvalidAlgorithmParameterException("unknown curve: " + ((Object) e10));
        }
        this.f101269a = new C13524d(yh.b.l(e10), k10.v(), k10.z(), k10.C(), k10.A(), k10.D());
        I i10 = new I(new H(new K(e10, k10), e10, lVar.b(), lVar.c()), secureRandom);
        this.f101272d = i10;
        this.f101270b.b(i10);
        this.f101275g = true;
    }

    @Override
    public KeyPair generateKeyPair() {
        if (!this.f101275g) {
            throw new IllegalStateException("EC Key Pair Generator not initialised");
        }
        C2371c a10 = this.f101270b.a();
        M m10 = (M) a10.b();
        L l10 = (L) a10.a();
        Object obj = this.f101269a;
        if (obj instanceof C13525e) {
            C13525e c13525e = (C13525e) obj;
            b bVar = new b(this.f101271c, m10, c13525e);
            return new KeyPair(bVar, new a(this.f101271c, l10, bVar, c13525e));
        }
        if (obj == null) {
            return new KeyPair(new b(this.f101271c, m10), new a(this.f101271c, l10));
        }
        ECParameterSpec eCParameterSpec = (ECParameterSpec) obj;
        b bVar2 = new b(this.f101271c, m10, eCParameterSpec);
        return new KeyPair(bVar2, new a(this.f101271c, l10, bVar2, eCParameterSpec));
    }

    @Override
    public void initialize(int i10, SecureRandom secureRandom) {
        this.f101273e = i10;
        this.f101274f = secureRandom;
        Object obj = this.f101269a;
        if (obj == null) {
            throw new InvalidParameterException("unknown key size.");
        }
        try {
            initialize((ECGenParameterSpec) obj, secureRandom);
        } catch (InvalidAlgorithmParameterException unused) {
            throw new InvalidParameterException("key size not configurable.");
        }
    }

    @Override
    public void initialize(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        I i10;
        if (algorithmParameterSpec instanceof l) {
            a((l) algorithmParameterSpec, secureRandom);
            return;
        }
        if (!(algorithmParameterSpec instanceof C13525e)) {
            if (algorithmParameterSpec instanceof ECParameterSpec) {
                ECParameterSpec eCParameterSpec = (ECParameterSpec) algorithmParameterSpec;
                this.f101269a = algorithmParameterSpec;
                AbstractC13875e b10 = h.b(eCParameterSpec.getCurve());
                I i11 = new I(new G(b10, h.f(b10, eCParameterSpec.getGenerator()), eCParameterSpec.getOrder(), BigInteger.valueOf(eCParameterSpec.getCofactor())), secureRandom);
                this.f101272d = i11;
                this.f101270b.b(i11);
                this.f101275g = true;
            }
            boolean z10 = algorithmParameterSpec instanceof ECGenParameterSpec;
            if (z10 || (algorithmParameterSpec instanceof C13522b)) {
                a(new l(z10 ? ((ECGenParameterSpec) algorithmParameterSpec).getName() : ((C13522b) algorithmParameterSpec).a()), secureRandom);
                return;
            }
            if (algorithmParameterSpec == null) {
                Tj.c cVar = C14720a.f101702f;
                if (cVar.b() != null) {
                    C13525e b11 = cVar.b();
                    this.f101269a = algorithmParameterSpec;
                    i10 = new I(new G(b11.a(), b11.b(), b11.d(), b11.c()), secureRandom);
                }
            }
            if (algorithmParameterSpec == null && C14720a.f101702f.b() == null) {
                throw new InvalidAlgorithmParameterException("null parameter passed but no implicitCA set");
            }
            throw new InvalidAlgorithmParameterException("parameter object not a ECParameterSpec: " + algorithmParameterSpec.getClass().getName());
        }
        C13525e c13525e = (C13525e) algorithmParameterSpec;
        this.f101269a = algorithmParameterSpec;
        i10 = new I(new G(c13525e.a(), c13525e.b(), c13525e.d(), c13525e.c()), secureRandom);
        this.f101272d = i10;
        this.f101270b.b(i10);
        this.f101275g = true;
    }
}
