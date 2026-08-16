package org.bouncycastle.jcajce.provider.asymmetric.ec;

import Xh.v;
import Xi.C3335c;
import Xi.G;
import Xi.M;
import android.security.keystore.KeyProperties;
import bk.InterfaceC3897c;
import ck.t;
import ck.u;
import hi.C13486b;
import hi.h0;
import hk.C13525e;
import hk.C13526f;
import hk.C13527g;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECPrivateKeySpec;
import java.security.spec.ECPublicKeySpec;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import ki.r;
import oh.C14549x;
import org.bouncycastle.jce.provider.C14720a;

public class j extends org.bouncycastle.jcajce.provider.asymmetric.util.c implements InterfaceC3897c {

    public String f101239a;

    public Tj.c f101240b;

    public static class a extends j {
        public a() {
            super(KeyProperties.KEY_ALGORITHM_EC, C14720a.f101702f);
        }
    }

    public static class b extends j {
        public b() {
            super("ECDH", C14720a.f101702f);
        }
    }

    public static class c extends j {
        public c() {
            super("ECDHC", C14720a.f101702f);
        }
    }

    public static class d extends j {
        public d() {
            super("ECDSA", C14720a.f101702f);
        }
    }

    public static class e extends j {
        public e() {
            super("ECGOST3410", C14720a.f101702f);
        }
    }

    public static class f extends j {
        public f() {
            super("ECGOST3410-2012", C14720a.f101702f);
        }
    }

    public static class g extends j {
        public g() {
            super("ECMQV", C14720a.f101702f);
        }
    }

    public j(String str, Tj.c cVar) {
        this.f101239a = str;
        this.f101240b = cVar;
    }

    @Override
    public PublicKey a(h0 h0Var) throws IOException {
        C14549x u10 = h0Var.u().u();
        if (u10.A(r.f95305I5)) {
            return new org.bouncycastle.jcajce.provider.asymmetric.ec.c(this.f101239a, h0Var, this.f101240b);
        }
        throw new IOException("algorithm identifier " + ((Object) u10) + " in key not recognised");
    }

    @Override
    public PrivateKey b(v vVar) throws IOException {
        C14549x u10 = vVar.y().u();
        if (u10.A(r.f95305I5)) {
            return new org.bouncycastle.jcajce.provider.asymmetric.ec.b(this.f101239a, vVar, this.f101240b);
        }
        throw new IOException("algorithm identifier " + ((Object) u10) + " in key not recognised");
    }

    @Override
    public PrivateKey engineGeneratePrivate(KeySpec keySpec) throws InvalidKeySpecException {
        if (keySpec instanceof C13526f) {
            return new org.bouncycastle.jcajce.provider.asymmetric.ec.b(this.f101239a, (C13526f) keySpec, this.f101240b);
        }
        if (keySpec instanceof ECPrivateKeySpec) {
            return new org.bouncycastle.jcajce.provider.asymmetric.ec.b(this.f101239a, (ECPrivateKeySpec) keySpec, this.f101240b);
        }
        if (!(keySpec instanceof t)) {
            return super.engineGeneratePrivate(keySpec);
        }
        Zh.a u10 = Zh.a.u(((t) keySpec).getEncoded());
        try {
            return new org.bouncycastle.jcajce.provider.asymmetric.ec.b(this.f101239a, new v(new C13486b(r.f95305I5, u10.y()), u10), this.f101240b);
        } catch (IOException e10) {
            throw new InvalidKeySpecException("bad encoding: " + e10.getMessage());
        }
    }

    @Override
    public PublicKey engineGeneratePublic(KeySpec keySpec) throws InvalidKeySpecException {
        try {
            if (keySpec instanceof C13527g) {
                return new org.bouncycastle.jcajce.provider.asymmetric.ec.c(this.f101239a, (C13527g) keySpec, this.f101240b);
            }
            if (keySpec instanceof ECPublicKeySpec) {
                return new org.bouncycastle.jcajce.provider.asymmetric.ec.c(this.f101239a, (ECPublicKeySpec) keySpec, this.f101240b);
            }
            if (!(keySpec instanceof u)) {
                return super.engineGeneratePublic(keySpec);
            }
            C3335c c10 = org.bouncycastle.crypto.util.k.c(((u) keySpec).getEncoded());
            if (!(c10 instanceof M)) {
                throw new IllegalArgumentException("openssh key is not ec public key");
            }
            G d10 = ((M) c10).d();
            return engineGeneratePublic(new C13527g(((M) c10).e(), new C13525e(d10.a(), d10.b(), d10.e(), d10.c(), d10.f())));
        } catch (Exception e10) {
            throw new InvalidKeySpecException("invalid KeySpec: " + e10.getMessage(), e10);
        }
    }

    @Override
    public KeySpec engineGetKeySpec(Key key, Class cls) throws InvalidKeySpecException {
        if ((cls.isAssignableFrom(KeySpec.class) || cls.isAssignableFrom(ECPublicKeySpec.class)) && (key instanceof ECPublicKey)) {
            ECPublicKey eCPublicKey = (ECPublicKey) key;
            if (eCPublicKey.getParams() != null) {
                return new ECPublicKeySpec(eCPublicKey.getW(), eCPublicKey.getParams());
            }
            C13525e b10 = C14720a.f101702f.b();
            return new ECPublicKeySpec(eCPublicKey.getW(), org.bouncycastle.jcajce.provider.asymmetric.util.h.h(org.bouncycastle.jcajce.provider.asymmetric.util.h.a(b10.a(), b10.e()), b10));
        }
        if ((cls.isAssignableFrom(KeySpec.class) || cls.isAssignableFrom(ECPrivateKeySpec.class)) && (key instanceof ECPrivateKey)) {
            ECPrivateKey eCPrivateKey = (ECPrivateKey) key;
            if (eCPrivateKey.getParams() != null) {
                return new ECPrivateKeySpec(eCPrivateKey.getS(), eCPrivateKey.getParams());
            }
            C13525e b11 = C14720a.f101702f.b();
            return new ECPrivateKeySpec(eCPrivateKey.getS(), org.bouncycastle.jcajce.provider.asymmetric.util.h.h(org.bouncycastle.jcajce.provider.asymmetric.util.h.a(b11.a(), b11.e()), b11));
        }
        if (cls.isAssignableFrom(C13527g.class) && (key instanceof ECPublicKey)) {
            ECPublicKey eCPublicKey2 = (ECPublicKey) key;
            if (eCPublicKey2.getParams() != null) {
                return new C13527g(org.bouncycastle.jcajce.provider.asymmetric.util.h.e(eCPublicKey2.getParams(), eCPublicKey2.getW()), org.bouncycastle.jcajce.provider.asymmetric.util.h.g(eCPublicKey2.getParams()));
            }
            return new C13527g(org.bouncycastle.jcajce.provider.asymmetric.util.h.e(eCPublicKey2.getParams(), eCPublicKey2.getW()), C14720a.f101702f.b());
        }
        if (cls.isAssignableFrom(C13526f.class) && (key instanceof ECPrivateKey)) {
            ECPrivateKey eCPrivateKey2 = (ECPrivateKey) key;
            if (eCPrivateKey2.getParams() != null) {
                return new C13526f(eCPrivateKey2.getS(), org.bouncycastle.jcajce.provider.asymmetric.util.h.g(eCPrivateKey2.getParams()));
            }
            return new C13526f(eCPrivateKey2.getS(), C14720a.f101702f.b());
        }
        if (cls.isAssignableFrom(u.class) && (key instanceof ECPublicKey)) {
            if (!(key instanceof org.bouncycastle.jcajce.provider.asymmetric.ec.c)) {
                throw new IllegalArgumentException("invalid key type: " + key.getClass().getName());
            }
            org.bouncycastle.jcajce.provider.asymmetric.ec.c cVar = (org.bouncycastle.jcajce.provider.asymmetric.ec.c) key;
            C13525e parameters = cVar.getParameters();
            try {
                return new u(org.bouncycastle.crypto.util.k.a(new M(cVar.Ne(), new G(parameters.a(), parameters.b(), parameters.d(), parameters.c(), parameters.e()))));
            } catch (IOException e10) {
                throw new IllegalArgumentException("unable to produce encoding: " + e10.getMessage());
            }
        }
        if (!cls.isAssignableFrom(t.class) || !(key instanceof ECPrivateKey)) {
            return super.engineGetKeySpec(key, cls);
        }
        if (!(key instanceof org.bouncycastle.jcajce.provider.asymmetric.ec.b)) {
            throw new IllegalArgumentException("invalid key type: " + key.getClass().getName());
        }
        try {
            return new t(v.v(key.getEncoded()).E().r().getEncoded());
        } catch (IOException e11) {
            throw new IllegalArgumentException("cannot encoded key: " + e11.getMessage());
        }
    }

    @Override
    public Key engineTranslateKey(Key key) throws InvalidKeyException {
        if (key instanceof ECPublicKey) {
            return new org.bouncycastle.jcajce.provider.asymmetric.ec.c((ECPublicKey) key, this.f101240b);
        }
        if (key instanceof ECPrivateKey) {
            return new org.bouncycastle.jcajce.provider.asymmetric.ec.b((ECPrivateKey) key, this.f101240b);
        }
        throw new InvalidKeyException("key type unknown");
    }
}
