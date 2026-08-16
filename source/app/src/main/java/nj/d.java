package Nj;

import Bi.C2371c;
import Oi.C2939o;
import Oi.C2940p;
import Xi.D;
import Xi.G;
import Xi.I;
import Xi.L;
import Xi.M;
import ck.C4214g;
import di.C12924c;
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
import jk.i;
import oh.C14549x;
import org.bouncycastle.jcajce.provider.asymmetric.util.h;
import org.bouncycastle.jce.provider.C14720a;

public class d extends KeyPairGenerator {

    public Object f16401a;

    public C2940p f16402b;

    public String f16403c;

    public I f16404d;

    public SecureRandom f16405e;

    public boolean f16406f;

    public d() {
        super("DSTU4145");
        this.f16401a = null;
        this.f16402b = new C2939o();
        this.f16403c = "DSTU4145";
        this.f16405e = null;
        this.f16406f = false;
    }

    @Override
    public KeyPair generateKeyPair() {
        if (!this.f16406f) {
            throw new IllegalStateException("DSTU Key Pair Generator not initialised");
        }
        C2371c a10 = this.f16402b.a();
        M m10 = (M) a10.b();
        L l10 = (L) a10.a();
        Object obj = this.f16401a;
        if (obj instanceof C13525e) {
            C13525e c13525e = (C13525e) obj;
            b bVar = new b(this.f16403c, m10, c13525e);
            return new KeyPair(bVar, new a(this.f16403c, l10, bVar, c13525e));
        }
        if (obj == null) {
            return new KeyPair(new b(this.f16403c, m10), new a(this.f16403c, l10));
        }
        ECParameterSpec eCParameterSpec = (ECParameterSpec) obj;
        b bVar2 = new b(this.f16403c, m10, eCParameterSpec);
        return new KeyPair(bVar2, new a(this.f16403c, l10, bVar2, eCParameterSpec));
    }

    @Override
    public void initialize(int i10, SecureRandom secureRandom) {
        this.f16405e = secureRandom;
        Object obj = this.f16401a;
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
        if (!(algorithmParameterSpec instanceof C13525e)) {
            if (algorithmParameterSpec instanceof ECParameterSpec) {
                ECParameterSpec eCParameterSpec = (ECParameterSpec) algorithmParameterSpec;
                this.f16401a = algorithmParameterSpec;
                AbstractC13875e b10 = h.b(eCParameterSpec.getCurve());
                i f10 = h.f(b10, eCParameterSpec.getGenerator());
                if (eCParameterSpec instanceof C4214g) {
                    this.f16404d = new I(new D(new G(b10, f10, eCParameterSpec.getOrder(), BigInteger.valueOf(eCParameterSpec.getCofactor())), ((C4214g) eCParameterSpec).a()), secureRandom);
                } else {
                    this.f16404d = new I(new G(b10, f10, eCParameterSpec.getOrder(), BigInteger.valueOf(eCParameterSpec.getCofactor())), secureRandom);
                }
                this.f16402b.b(this.f16404d);
            } else {
                boolean z10 = algorithmParameterSpec instanceof ECGenParameterSpec;
                if (!z10 && !(algorithmParameterSpec instanceof C13522b)) {
                    if (algorithmParameterSpec == null) {
                        Tj.c cVar = C14720a.f101702f;
                        if (cVar.b() != null) {
                            C13525e b11 = cVar.b();
                            this.f16401a = algorithmParameterSpec;
                            i10 = new I(new G(b11.a(), b11.b(), b11.d(), b11.c()), secureRandom);
                        }
                    }
                    if (algorithmParameterSpec == null && C14720a.f101702f.b() == null) {
                        throw new InvalidAlgorithmParameterException("null parameter passed but no implicitCA set");
                    }
                    throw new InvalidAlgorithmParameterException("parameter object not a ECParameterSpec: " + algorithmParameterSpec.getClass().getName());
                }
                String name = z10 ? ((ECGenParameterSpec) algorithmParameterSpec).getName() : ((C13522b) algorithmParameterSpec).a();
                G a10 = C12924c.a(new C14549x(name));
                if (a10 == null) {
                    throw new InvalidAlgorithmParameterException("unknown curve name: " + name);
                }
                C13524d c13524d = new C13524d(name, a10.a(), a10.b(), a10.e(), a10.c(), a10.f());
                this.f16401a = c13524d;
                C13524d c13524d2 = c13524d;
                AbstractC13875e b12 = h.b(c13524d2.getCurve());
                I i11 = new I(new G(b12, h.f(b12, c13524d2.getGenerator()), c13524d2.getOrder(), BigInteger.valueOf(c13524d2.getCofactor())), secureRandom);
                this.f16404d = i11;
                this.f16402b.b(i11);
            }
            this.f16406f = true;
        }
        C13525e c13525e = (C13525e) algorithmParameterSpec;
        this.f16401a = algorithmParameterSpec;
        i10 = new I(new G(c13525e.a(), c13525e.b(), c13525e.d(), c13525e.c()), secureRandom);
        this.f16404d = i10;
        this.f16402b.b(i10);
        this.f16406f = true;
    }
}
