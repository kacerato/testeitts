package org.bouncycastle.jcajce.provider.asymmetric.dsa;

import Xh.v;
import Xi.A;
import Xi.B;
import Xi.C3335c;
import Xi.C3375z;
import ck.t;
import ck.u;
import hi.h0;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.interfaces.DSAPrivateKey;
import java.security.interfaces.DSAPublicKey;
import java.security.spec.DSAPrivateKeySpec;
import java.security.spec.DSAPublicKeySpec;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import oh.C14549x;
import org.bouncycastle.crypto.util.j;
import org.bouncycastle.crypto.util.k;

public class KeyFactorySpi extends org.bouncycastle.jcajce.provider.asymmetric.util.c {
    @Override
    public PublicKey a(h0 h0Var) throws IOException {
        C14549x u10 = h0Var.u().u();
        if (f.d(u10)) {
            return new d(h0Var);
        }
        throw new IOException("algorithm identifier " + ((Object) u10) + " in key not recognised");
    }

    @Override
    public PrivateKey b(v vVar) throws IOException {
        C14549x u10 = vVar.y().u();
        if (f.d(u10)) {
            return new c(vVar);
        }
        throw new IOException("algorithm identifier " + ((Object) u10) + " in key not recognised");
    }

    @Override
    public PrivateKey engineGeneratePrivate(KeySpec keySpec) throws InvalidKeySpecException {
        if (keySpec instanceof DSAPrivateKeySpec) {
            return new c((DSAPrivateKeySpec) keySpec);
        }
        if (!(keySpec instanceof t)) {
            return super.engineGeneratePrivate(keySpec);
        }
        C3335c c10 = j.c(((t) keySpec).getEncoded());
        if (!(c10 instanceof A)) {
            throw new IllegalArgumentException("openssh private key is not dsa privare key");
        }
        A a10 = (A) c10;
        return engineGeneratePrivate(new DSAPrivateKeySpec(a10.e(), a10.d().b(), a10.d().c(), a10.d().a()));
    }

    @Override
    public PublicKey engineGeneratePublic(KeySpec keySpec) throws InvalidKeySpecException {
        if (keySpec instanceof DSAPublicKeySpec) {
            try {
                return new d((DSAPublicKeySpec) keySpec);
            } catch (Exception e10) {
                throw new InvalidKeySpecException("invalid KeySpec: " + e10.getMessage()) {
                    @Override
                    public Throwable getCause() {
                        return e10;
                    }
                };
            }
        }
        if (!(keySpec instanceof u)) {
            return super.engineGeneratePublic(keySpec);
        }
        C3335c c10 = k.c(((u) keySpec).getEncoded());
        if (!(c10 instanceof B)) {
            throw new IllegalArgumentException("openssh public key is not dsa public key");
        }
        B b10 = (B) c10;
        return engineGeneratePublic(new DSAPublicKeySpec(b10.e(), b10.d().b(), b10.d().c(), b10.d().a()));
    }

    @Override
    public KeySpec engineGetKeySpec(Key key, Class cls) throws InvalidKeySpecException {
        if (cls.isAssignableFrom(DSAPublicKeySpec.class) && (key instanceof DSAPublicKey)) {
            DSAPublicKey dSAPublicKey = (DSAPublicKey) key;
            return new DSAPublicKeySpec(dSAPublicKey.getY(), dSAPublicKey.getParams().getP(), dSAPublicKey.getParams().getQ(), dSAPublicKey.getParams().getG());
        }
        if (cls.isAssignableFrom(DSAPrivateKeySpec.class) && (key instanceof DSAPrivateKey)) {
            DSAPrivateKey dSAPrivateKey = (DSAPrivateKey) key;
            return new DSAPrivateKeySpec(dSAPrivateKey.getX(), dSAPrivateKey.getParams().getP(), dSAPrivateKey.getParams().getQ(), dSAPrivateKey.getParams().getG());
        }
        if (cls.isAssignableFrom(u.class) && (key instanceof DSAPublicKey)) {
            DSAPublicKey dSAPublicKey2 = (DSAPublicKey) key;
            try {
                return new u(k.a(new B(dSAPublicKey2.getY(), new C3375z(dSAPublicKey2.getParams().getP(), dSAPublicKey2.getParams().getQ(), dSAPublicKey2.getParams().getG()))));
            } catch (IOException e10) {
                throw new IllegalArgumentException("unable to produce encoding: " + e10.getMessage());
            }
        }
        if (!cls.isAssignableFrom(t.class) || !(key instanceof DSAPrivateKey)) {
            return super.engineGetKeySpec(key, cls);
        }
        DSAPrivateKey dSAPrivateKey2 = (DSAPrivateKey) key;
        try {
            return new t(j.b(new A(dSAPrivateKey2.getX(), new C3375z(dSAPrivateKey2.getParams().getP(), dSAPrivateKey2.getParams().getQ(), dSAPrivateKey2.getParams().getG()))));
        } catch (IOException e11) {
            throw new IllegalArgumentException("unable to produce encoding: " + e11.getMessage());
        }
    }

    @Override
    public Key engineTranslateKey(Key key) throws InvalidKeyException {
        if (key instanceof DSAPublicKey) {
            return new d((DSAPublicKey) key);
        }
        if (key instanceof DSAPrivateKey) {
            return new c((DSAPrivateKey) key);
        }
        throw new InvalidKeyException("key type unknown");
    }
}
