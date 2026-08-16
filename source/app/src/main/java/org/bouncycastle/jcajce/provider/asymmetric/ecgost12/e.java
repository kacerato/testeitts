package org.bouncycastle.jcajce.provider.asymmetric.ecgost12;

import Xh.v;
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
import oh.C14549x;
import org.bouncycastle.jcajce.provider.asymmetric.util.h;
import org.bouncycastle.jce.provider.C14720a;

public class e extends org.bouncycastle.jcajce.provider.asymmetric.util.c {
    @Override
    public PublicKey a(h0 h0Var) throws IOException {
        C14549x u10 = h0Var.u().u();
        if (c(u10)) {
            return new b(h0Var);
        }
        throw new IOException("algorithm identifier " + ((Object) u10) + " in key not recognised");
    }

    @Override
    public PrivateKey b(v vVar) throws IOException {
        C14549x u10 = vVar.y().u();
        if (c(u10)) {
            return new a(vVar);
        }
        throw new IOException("algorithm identifier " + ((Object) u10) + " in key not recognised");
    }

    public final boolean c(C14549x c14549x) {
        return c14549x.A(Cj.a.f4462g) || c14549x.A(Cj.a.f4463h) || c14549x.A(Cj.a.f4467l) || c14549x.A(Cj.a.f4468m);
    }

    @Override
    public PrivateKey engineGeneratePrivate(KeySpec keySpec) throws InvalidKeySpecException {
        return keySpec instanceof C13526f ? new a((C13526f) keySpec) : keySpec instanceof ECPrivateKeySpec ? new a((ECPrivateKeySpec) keySpec) : super.engineGeneratePrivate(keySpec);
    }

    @Override
    public PublicKey engineGeneratePublic(KeySpec keySpec) throws InvalidKeySpecException {
        return keySpec instanceof C13527g ? new b((C13527g) keySpec, C14720a.f101702f) : keySpec instanceof ECPublicKeySpec ? new b((ECPublicKeySpec) keySpec) : super.engineGeneratePublic(keySpec);
    }

    @Override
    public KeySpec engineGetKeySpec(Key key, Class cls) throws InvalidKeySpecException {
        if (cls.isAssignableFrom(ECPublicKeySpec.class) && (key instanceof ECPublicKey)) {
            ECPublicKey eCPublicKey = (ECPublicKey) key;
            if (eCPublicKey.getParams() != null) {
                return new ECPublicKeySpec(eCPublicKey.getW(), eCPublicKey.getParams());
            }
            C13525e b10 = C14720a.f101702f.b();
            return new ECPublicKeySpec(eCPublicKey.getW(), h.h(h.a(b10.a(), b10.e()), b10));
        }
        if (cls.isAssignableFrom(ECPrivateKeySpec.class) && (key instanceof ECPrivateKey)) {
            ECPrivateKey eCPrivateKey = (ECPrivateKey) key;
            if (eCPrivateKey.getParams() != null) {
                return new ECPrivateKeySpec(eCPrivateKey.getS(), eCPrivateKey.getParams());
            }
            C13525e b11 = C14720a.f101702f.b();
            return new ECPrivateKeySpec(eCPrivateKey.getS(), h.h(h.a(b11.a(), b11.e()), b11));
        }
        if (cls.isAssignableFrom(C13527g.class) && (key instanceof ECPublicKey)) {
            ECPublicKey eCPublicKey2 = (ECPublicKey) key;
            if (eCPublicKey2.getParams() != null) {
                return new C13527g(h.e(eCPublicKey2.getParams(), eCPublicKey2.getW()), h.g(eCPublicKey2.getParams()));
            }
            return new C13527g(h.e(eCPublicKey2.getParams(), eCPublicKey2.getW()), C14720a.f101702f.b());
        }
        if (!cls.isAssignableFrom(C13526f.class) || !(key instanceof ECPrivateKey)) {
            return super.engineGetKeySpec(key, cls);
        }
        ECPrivateKey eCPrivateKey2 = (ECPrivateKey) key;
        if (eCPrivateKey2.getParams() != null) {
            return new C13526f(eCPrivateKey2.getS(), h.g(eCPrivateKey2.getParams()));
        }
        return new C13526f(eCPrivateKey2.getS(), C14720a.f101702f.b());
    }

    @Override
    public Key engineTranslateKey(Key key) throws InvalidKeyException {
        throw new InvalidKeyException("key type unknown");
    }
}
