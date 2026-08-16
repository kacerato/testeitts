package org.bouncycastle.jcajce.provider.asymmetric.ecgost12;

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

public class f extends KeyPairGenerator {

    public Object f101304a;

    public C2940p f101305b;

    public String f101306c;

    public I f101307d;

    public int f101308e;

    public SecureRandom f101309f;

    public boolean f101310g;

    public f() {
        super("ECGOST3410-2012");
        this.f101304a = null;
        this.f101305b = new C2940p();
        this.f101306c = "ECGOST3410-2012";
        this.f101308e = 239;
        this.f101309f = null;
        this.f101310g = false;
    }

    public final void a(l lVar, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        ki.l k10 = yh.b.k(lVar.e());
        if (k10 == null) {
            throw new InvalidAlgorithmParameterException("unknown curve: " + ((Object) lVar.e()));
        }
        this.f101304a = new C13524d(yh.b.l(lVar.e()), k10.v(), k10.z(), k10.C(), k10.A(), k10.D());
        I i10 = new I(new H(new K(lVar.e(), k10), lVar.e(), lVar.b(), lVar.c()), secureRandom);
        this.f101307d = i10;
        this.f101305b.b(i10);
        this.f101310g = true;
    }

    @Override
    public KeyPair generateKeyPair() {
        if (!this.f101310g) {
            throw new IllegalStateException("EC Key Pair Generator not initialised");
        }
        C2371c a10 = this.f101305b.a();
        M m10 = (M) a10.b();
        L l10 = (L) a10.a();
        Object obj = this.f101304a;
        if (obj instanceof C13525e) {
            C13525e c13525e = (C13525e) obj;
            b bVar = new b(this.f101306c, m10, c13525e);
            return new KeyPair(bVar, new a(this.f101306c, l10, bVar, c13525e));
        }
        if (obj == null) {
            return new KeyPair(new b(this.f101306c, m10), new a(this.f101306c, l10));
        }
        ECParameterSpec eCParameterSpec = (ECParameterSpec) obj;
        b bVar2 = new b(this.f101306c, m10, eCParameterSpec);
        return new KeyPair(bVar2, new a(this.f101306c, l10, bVar2, eCParameterSpec));
    }

    @Override
    public void initialize(int i10, SecureRandom secureRandom) {
        this.f101308e = i10;
        this.f101309f = secureRandom;
        Object obj = this.f101304a;
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
                this.f101304a = algorithmParameterSpec;
                AbstractC13875e b10 = h.b(eCParameterSpec.getCurve());
                I i11 = new I(new G(b10, h.f(b10, eCParameterSpec.getGenerator()), eCParameterSpec.getOrder(), BigInteger.valueOf(eCParameterSpec.getCofactor())), secureRandom);
                this.f101307d = i11;
                this.f101305b.b(i11);
                this.f101310g = true;
            }
            boolean z10 = algorithmParameterSpec instanceof ECGenParameterSpec;
            if (z10 || (algorithmParameterSpec instanceof C13522b)) {
                String name = z10 ? ((ECGenParameterSpec) algorithmParameterSpec).getName() : ((C13522b) algorithmParameterSpec).a();
                C14549x n10 = yh.b.n(name);
                a((n10.A(Cj.a.f4471p) || n10.A(Cj.a.f4472q) || n10.A(Cj.a.f4473r)) ? new l(yh.b.n(name), null) : new l(name), secureRandom);
                return;
            }
            if (algorithmParameterSpec == null) {
                Tj.c cVar = C14720a.f101702f;
                if (cVar.b() != null) {
                    C13525e b11 = cVar.b();
                    this.f101304a = algorithmParameterSpec;
                    i10 = new I(new G(b11.a(), b11.b(), b11.d(), b11.c()), secureRandom);
                }
            }
            if (algorithmParameterSpec == null && C14720a.f101702f.b() == null) {
                throw new InvalidAlgorithmParameterException("null parameter passed but no implicitCA set");
            }
            throw new InvalidAlgorithmParameterException("parameter object not a ECParameterSpec: " + algorithmParameterSpec.getClass().getName());
        }
        C13525e c13525e = (C13525e) algorithmParameterSpec;
        this.f101304a = algorithmParameterSpec;
        i10 = new I(new G(c13525e.a(), c13525e.b(), c13525e.d(), c13525e.c()), secureRandom);
        this.f101307d = i10;
        this.f101305b.b(i10);
        this.f101310g = true;
    }
}
