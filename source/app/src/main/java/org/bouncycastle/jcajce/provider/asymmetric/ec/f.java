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

public abstract class f extends KeyPairGenerator {

    public static class a extends f {

        public static Hashtable f101194i;

        public I f101195a;

        public C2940p f101196b;

        public Object f101197c;

        public int f101198d;

        public SecureRandom f101199e;

        public boolean f101200f;

        public String f101201g;

        public Tj.c f101202h;

        static {
            Hashtable hashtable = new Hashtable();
            f101194i = hashtable;
            hashtable.put(org.bouncycastle.util.k.j(192), new C13522b("prime192v1"));
            f101194i.put(org.bouncycastle.util.k.j(239), new C13522b("prime239v1"));
            f101194i.put(org.bouncycastle.util.k.j(256), new C13522b("prime256v1"));
            f101194i.put(org.bouncycastle.util.k.j(224), new C13522b("P-224"));
            f101194i.put(org.bouncycastle.util.k.j(384), new C13522b("P-384"));
            f101194i.put(org.bouncycastle.util.k.j(521), new C13522b("P-521"));
        }

        public a() {
            super(KeyProperties.KEY_ALGORITHM_EC);
            this.f101196b = new C2940p();
            this.f101197c = null;
            this.f101198d = 239;
            this.f101199e = r.h();
            this.f101200f = false;
            this.f101201g = KeyProperties.KEY_ALGORITHM_EC;
            this.f101202h = C14720a.f101702f;
        }

        public I a(C13525e c13525e, SecureRandom secureRandom) {
            return new I(new G(c13525e.a(), c13525e.b(), c13525e.d(), c13525e.c()), secureRandom);
        }

        public I b(ECParameterSpec eCParameterSpec, SecureRandom secureRandom) {
            ki.l e10;
            if ((eCParameterSpec instanceof C13524d) && (e10 = d.e(((C13524d) eCParameterSpec).c(), this.f101202h)) != null) {
                return c(e10, secureRandom);
            }
            AbstractC13875e b10 = org.bouncycastle.jcajce.provider.asymmetric.util.h.b(eCParameterSpec.getCurve());
            return new I(new G(b10, org.bouncycastle.jcajce.provider.asymmetric.util.h.f(b10, eCParameterSpec.getGenerator()), eCParameterSpec.getOrder(), BigInteger.valueOf(eCParameterSpec.getCofactor())), secureRandom);
        }

        public I c(ki.l lVar, SecureRandom secureRandom) {
            return new I(new G(lVar.v(), lVar.z(), lVar.C(), lVar.A()), secureRandom);
        }

        public void d(String str, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
            ki.l e10 = d.e(str, this.f101202h);
            if (e10 != null) {
                this.f101197c = new C13524d(str, e10.v(), e10.z(), e10.C(), e10.A(), null);
                this.f101195a = c(e10, secureRandom);
            } else {
                throw new InvalidAlgorithmParameterException("unknown curve name: " + str);
            }
        }

        @Override
        public KeyPair generateKeyPair() {
            if (!this.f101200f) {
                initialize(this.f101198d, new SecureRandom());
            }
            C2371c a10 = this.f101196b.a();
            M m10 = (M) a10.b();
            L l10 = (L) a10.a();
            Object obj = this.f101197c;
            if (obj instanceof C13525e) {
                C13525e c13525e = (C13525e) obj;
                c cVar = new c(this.f101201g, m10, c13525e, this.f101202h);
                return new KeyPair(cVar, new org.bouncycastle.jcajce.provider.asymmetric.ec.b(this.f101201g, l10, cVar, c13525e, this.f101202h));
            }
            if (obj == null) {
                return new KeyPair(new c(this.f101201g, m10, this.f101202h), new org.bouncycastle.jcajce.provider.asymmetric.ec.b(this.f101201g, l10, this.f101202h));
            }
            ECParameterSpec eCParameterSpec = (ECParameterSpec) obj;
            c cVar2 = new c(this.f101201g, m10, eCParameterSpec, this.f101202h);
            return new KeyPair(cVar2, new org.bouncycastle.jcajce.provider.asymmetric.ec.b(this.f101201g, l10, cVar2, eCParameterSpec, this.f101202h));
        }

        @Override
        public void initialize(int i10, SecureRandom secureRandom) {
            this.f101198d = i10;
            this.f101199e = secureRandom;
            C13522b c13522b = (C13522b) f101194i.get(org.bouncycastle.util.k.j(i10));
            if (c13522b == null) {
                throw new InvalidParameterException("unknown key size.");
            }
            try {
                initialize(c13522b, secureRandom);
            } catch (InvalidAlgorithmParameterException unused) {
                throw new InvalidParameterException("key size not configurable.");
            }
        }

        public a(String str, Tj.c cVar) {
            super(str);
            this.f101196b = new C2940p();
            this.f101197c = null;
            this.f101198d = 239;
            this.f101199e = r.h();
            this.f101200f = false;
            this.f101201g = str;
            this.f101202h = cVar;
        }

        @Override
        public void initialize(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
            String a10;
            I b10;
            C13525e c13525e;
            if (algorithmParameterSpec == null) {
                c13525e = this.f101202h.b();
                if (c13525e == null) {
                    throw new InvalidAlgorithmParameterException("null parameter passed but no implicitCA set");
                }
                this.f101197c = null;
            } else {
                if (!(algorithmParameterSpec instanceof C13525e)) {
                    if (algorithmParameterSpec instanceof ECParameterSpec) {
                        this.f101197c = algorithmParameterSpec;
                        b10 = b((ECParameterSpec) algorithmParameterSpec, secureRandom);
                        this.f101195a = b10;
                        this.f101196b.b(this.f101195a);
                        this.f101200f = true;
                    }
                    if (algorithmParameterSpec instanceof ECGenParameterSpec) {
                        a10 = ((ECGenParameterSpec) algorithmParameterSpec).getName();
                    } else {
                        if (!(algorithmParameterSpec instanceof C13522b)) {
                            String h10 = org.bouncycastle.jcajce.provider.asymmetric.util.i.h(algorithmParameterSpec);
                            if (h10 != null) {
                                d(h10, secureRandom);
                                this.f101196b.b(this.f101195a);
                                this.f101200f = true;
                            } else {
                                throw new InvalidAlgorithmParameterException("invalid parameterSpec: " + ((Object) algorithmParameterSpec));
                            }
                        }
                        a10 = ((C13522b) algorithmParameterSpec).a();
                    }
                    d(a10, secureRandom);
                    this.f101196b.b(this.f101195a);
                    this.f101200f = true;
                }
                this.f101197c = algorithmParameterSpec;
                c13525e = (C13525e) algorithmParameterSpec;
            }
            b10 = a(c13525e, secureRandom);
            this.f101195a = b10;
            this.f101196b.b(this.f101195a);
            this.f101200f = true;
        }
    }

    public static class b extends a {
        public b() {
            super("SM2", C14720a.f101702f);
        }
    }

    public f(String str) {
        super(str);
    }
}
