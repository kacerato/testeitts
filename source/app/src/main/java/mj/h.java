package Mj;

import Xh.t;
import Xh.v;
import hi.h0;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import javax.crypto.interfaces.DHPrivateKey;
import javax.crypto.interfaces.DHPublicKey;
import javax.crypto.spec.DHPrivateKeySpec;
import javax.crypto.spec.DHPublicKeySpec;
import ki.r;
import oh.C14549x;
import org.bouncycastle.jcajce.provider.asymmetric.util.ExtendedInvalidKeySpecException;

public class h extends org.bouncycastle.jcajce.provider.asymmetric.util.c {
    @Override
    public PublicKey a(h0 h0Var) throws IOException {
        C14549x u10 = h0Var.u().u();
        if (!u10.A(t.f29073Y0) && !u10.A(r.f95361z6)) {
            throw new IOException("algorithm identifier " + ((Object) u10) + " in key not recognised");
        }
        return new d(h0Var);
    }

    @Override
    public PrivateKey b(v vVar) throws IOException {
        C14549x u10 = vVar.y().u();
        if (!u10.A(t.f29073Y0) && !u10.A(r.f95361z6)) {
            throw new IOException("algorithm identifier " + ((Object) u10) + " in key not recognised");
        }
        return new c(vVar);
    }

    @Override
    public PrivateKey engineGeneratePrivate(KeySpec keySpec) throws InvalidKeySpecException {
        return keySpec instanceof DHPrivateKeySpec ? new c((DHPrivateKeySpec) keySpec) : super.engineGeneratePrivate(keySpec);
    }

    @Override
    public PublicKey engineGeneratePublic(KeySpec keySpec) throws InvalidKeySpecException {
        if (!(keySpec instanceof DHPublicKeySpec)) {
            return super.engineGeneratePublic(keySpec);
        }
        try {
            return new d((DHPublicKeySpec) keySpec);
        } catch (IllegalArgumentException e10) {
            throw new ExtendedInvalidKeySpecException(e10.getMessage(), e10);
        }
    }

    @Override
    public KeySpec engineGetKeySpec(Key key, Class cls) throws InvalidKeySpecException {
        if (cls.isAssignableFrom(DHPrivateKeySpec.class) && (key instanceof DHPrivateKey)) {
            DHPrivateKey dHPrivateKey = (DHPrivateKey) key;
            return new DHPrivateKeySpec(dHPrivateKey.getX(), dHPrivateKey.getParams().getP(), dHPrivateKey.getParams().getG());
        }
        if (!cls.isAssignableFrom(DHPublicKeySpec.class) || !(key instanceof DHPublicKey)) {
            return super.engineGetKeySpec(key, cls);
        }
        DHPublicKey dHPublicKey = (DHPublicKey) key;
        return new DHPublicKeySpec(dHPublicKey.getY(), dHPublicKey.getParams().getP(), dHPublicKey.getParams().getG());
    }

    @Override
    public Key engineTranslateKey(Key key) throws InvalidKeyException {
        if (key instanceof DHPublicKey) {
            return new d((DHPublicKey) key);
        }
        if (key instanceof DHPrivateKey) {
            return new c((DHPrivateKey) key);
        }
        throw new InvalidKeyException("key type unknown");
    }
}
