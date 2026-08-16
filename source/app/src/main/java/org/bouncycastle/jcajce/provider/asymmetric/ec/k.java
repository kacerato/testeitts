package org.bouncycastle.jcajce.provider.asymmetric.ec;

import Bi.C2371c;
import Bi.r;
import Oi.C2940p;
import Xi.G;
import Xi.I;
import Xi.L;
import Xi.M;
import android.security.keystore.KeyProperties;
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
import java.util.Hashtable;
import jk.AbstractC13875e;
import org.bouncycastle.jce.provider.C14720a;

public abstract class k extends KeyPairGenerator {

    public static class a extends k {

        public static Hashtable f101241i;

        public I f101242a;

        public C2940p f101243b;

        public Object f101244c;

        public int f101245d;

        public SecureRandom f101246e;

        public boolean f101247f;

        public String f101248g;

        public Tj.c f101249h;

        static {
            Hashtable hashtable = new Hashtable();
            f101241i = hashtable;
            hashtable.put(org.bouncycastle.util.k.j(192), new ECGenParameterSpec("prime192v1"));
            f101241i.put(org.bouncycastle.util.k.j(239), new ECGenParameterSpec("prime239v1"));
            f101241i.put(org.bouncycastle.util.k.j(256), new ECGenParameterSpec("prime256v1"));
            f101241i.put(org.bouncycastle.util.k.j(224), new ECGenParameterSpec("P-224"));
            f101241i.put(org.bouncycastle.util.k.j(384), new ECGenParameterSpec("P-384"));
            f101241i.put(org.bouncycastle.util.k.j(521), new ECGenParameterSpec("P-521"));
        }

        public a() {
            super(KeyProperties.KEY_ALGORITHM_EC);
            this.f101243b = new C2940p();
            this.f101244c = null;
            this.f101245d = 239;
            this.f101246e = r.h();
            this.f101247f = false;
            this.f101248g = KeyProperties.KEY_ALGORITHM_EC;
            this.f101249h = C14720a.f101702f;
        }

        public I a(C13525e c13525e, SecureRandom secureRandom) {
            return new I(new G(c13525e.a(), c13525e.b(), c13525e.d(), c13525e.c()), secureRandom);
        }

        public I b(ECParameterSpec eCParameterSpec, SecureRandom secureRandom) {
            ki.l e10;
            if ((eCParameterSpec instanceof C13524d) && (e10 = org.bouncycastle.jcajce.provider.asymmetric.ec.d.e(((C13524d) eCParameterSpec).c(), this.f101249h)) != null) {
                return c(e10, secureRandom);
            }
            AbstractC13875e b10 = org.bouncycastle.jcajce.provider.asymmetric.util.h.b(eCParameterSpec.getCurve());
            return new I(new G(b10, org.bouncycastle.jcajce.provider.asymmetric.util.h.f(b10, eCParameterSpec.getGenerator()), eCParameterSpec.getOrder(), BigInteger.valueOf(eCParameterSpec.getCofactor())), secureRandom);
        }

        public I c(ki.l lVar, SecureRandom secureRandom) {
            return new I(new G(lVar.v(), lVar.z(), lVar.C(), lVar.A()), secureRandom);
        }

        public void d(String str, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
            ki.l e10 = org.bouncycastle.jcajce.provider.asymmetric.ec.d.e(str, this.f101249h);
            if (e10 != null) {
                this.f101244c = new C13524d(str, e10.v(), e10.z(), e10.C(), e10.A(), null);
                this.f101242a = c(e10, secureRandom);
            } else {
                throw new InvalidAlgorithmParameterException("unknown curve name: " + str);
            }
        }

        @Override
        public KeyPair generateKeyPair() {
            if (!this.f101247f) {
                initialize(this.f101245d, new SecureRandom());
            }
            C2371c a10 = this.f101243b.a();
            M m10 = (M) a10.b();
            L l10 = (L) a10.a();
            Object obj = this.f101244c;
            if (obj instanceof C13525e) {
                C13525e c13525e = (C13525e) obj;
                org.bouncycastle.jcajce.provider.asymmetric.ec.c cVar = new org.bouncycastle.jcajce.provider.asymmetric.ec.c(this.f101248g, m10, c13525e, this.f101249h);
                return new KeyPair(cVar, new org.bouncycastle.jcajce.provider.asymmetric.ec.b(this.f101248g, l10, cVar, c13525e, this.f101249h));
            }
            if (obj == null) {
                return new KeyPair(new org.bouncycastle.jcajce.provider.asymmetric.ec.c(this.f101248g, m10, this.f101249h), new org.bouncycastle.jcajce.provider.asymmetric.ec.b(this.f101248g, l10, this.f101249h));
            }
            ECParameterSpec eCParameterSpec = (ECParameterSpec) obj;
            org.bouncycastle.jcajce.provider.asymmetric.ec.c cVar2 = new org.bouncycastle.jcajce.provider.asymmetric.ec.c(this.f101248g, m10, eCParameterSpec, this.f101249h);
            return new KeyPair(cVar2, new org.bouncycastle.jcajce.provider.asymmetric.ec.b(this.f101248g, l10, cVar2, eCParameterSpec, this.f101249h));
        }

        @Override
        public void initialize(int i10, SecureRandom secureRandom) {
            this.f101245d = i10;
            this.f101246e = secureRandom;
            ECGenParameterSpec eCGenParameterSpec = (ECGenParameterSpec) f101241i.get(org.bouncycastle.util.k.j(i10));
            if (eCGenParameterSpec == null) {
                throw new InvalidParameterException("unknown key size.");
            }
            try {
                initialize(eCGenParameterSpec, secureRandom);
            } catch (InvalidAlgorithmParameterException unused) {
                throw new InvalidParameterException("key size not configurable.");
            }
        }

        public a(String str, Tj.c cVar) {
            super(str);
            this.f101243b = new C2940p();
            this.f101244c = null;
            this.f101245d = 239;
            this.f101246e = r.h();
            this.f101247f = false;
            this.f101248g = str;
            this.f101249h = cVar;
        }

        @Override
        public void initialize(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
            String a10;
            I b10;
            C13525e c13525e;
            if (algorithmParameterSpec == null) {
                c13525e = this.f101249h.b();
                if (c13525e == null) {
                    throw new InvalidAlgorithmParameterException("null parameter passed but no implicitCA set");
                }
                this.f101244c = null;
            } else {
                if (!(algorithmParameterSpec instanceof C13525e)) {
                    if (algorithmParameterSpec instanceof ECParameterSpec) {
                        this.f101244c = algorithmParameterSpec;
                        b10 = b((ECParameterSpec) algorithmParameterSpec, secureRandom);
                        this.f101242a = b10;
                        this.f101243b.b(this.f101242a);
                        this.f101247f = true;
                    }
                    if (algorithmParameterSpec instanceof ECGenParameterSpec) {
                        a10 = ((ECGenParameterSpec) algorithmParameterSpec).getName();
                    } else {
                        if (!(algorithmParameterSpec instanceof C13522b)) {
                            String h10 = org.bouncycastle.jcajce.provider.asymmetric.util.i.h(algorithmParameterSpec);
                            if (h10 != null) {
                                d(h10, secureRandom);
                                this.f101243b.b(this.f101242a);
                                this.f101247f = true;
                            } else {
                                throw new InvalidAlgorithmParameterException("invalid parameterSpec: " + ((Object) algorithmParameterSpec));
                            }
                        }
                        a10 = ((C13522b) algorithmParameterSpec).a();
                    }
                    d(a10, secureRandom);
                    this.f101243b.b(this.f101242a);
                    this.f101247f = true;
                }
                this.f101244c = algorithmParameterSpec;
                c13525e = (C13525e) algorithmParameterSpec;
            }
            b10 = a(c13525e, secureRandom);
            this.f101242a = b10;
            this.f101243b.b(this.f101242a);
            this.f101247f = true;
        }
    }

    public static class b extends a {
        public b() {
            super("ECDH", C14720a.f101702f);
        }
    }

    public static class c extends a {
        public c() {
            super("ECDHC", C14720a.f101702f);
        }
    }

    public static class d extends a {
        public d() {
            super("ECDSA", C14720a.f101702f);
        }
    }

    public static class e extends a {
        public e() {
            super("ECMQV", C14720a.f101702f);
        }
    }

    public k(String str) {
        super(str);
    }
}
