package Nl;

import Xh.v;
import bk.InterfaceC3897c;
import hi.h0;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.KeyFactorySpi;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import oh.B;

public class f extends KeyFactorySpi implements InterfaceC3897c {
    @Override
    public PublicKey a(h0 h0Var) throws IOException {
        return new d(h0Var);
    }

    @Override
    public PrivateKey b(v vVar) throws IOException {
        return new c(vVar);
    }

    @Override
    public PrivateKey engineGeneratePrivate(KeySpec keySpec) throws InvalidKeySpecException {
        if (keySpec instanceof PKCS8EncodedKeySpec) {
            try {
                return b(v.v(B.B(((PKCS8EncodedKeySpec) keySpec).getEncoded())));
            } catch (Exception e10) {
                throw new InvalidKeySpecException(e10.toString());
            }
        }
        throw new InvalidKeySpecException("unsupported key specification: " + ((Object) keySpec.getClass()) + ".");
    }

    @Override
    public PublicKey engineGeneratePublic(KeySpec keySpec) throws InvalidKeySpecException {
        if (keySpec instanceof X509EncodedKeySpec) {
            try {
                return a(h0.w(((X509EncodedKeySpec) keySpec).getEncoded()));
            } catch (Exception e10) {
                throw new InvalidKeySpecException(e10.toString());
            }
        }
        throw new InvalidKeySpecException("unknown key specification: " + ((Object) keySpec) + ".");
    }

    @Override
    public final KeySpec engineGetKeySpec(Key key, Class cls) throws InvalidKeySpecException {
        if (key instanceof c) {
            if (PKCS8EncodedKeySpec.class.isAssignableFrom(cls)) {
                return new PKCS8EncodedKeySpec(key.getEncoded());
            }
        } else {
            if (!(key instanceof d)) {
                throw new InvalidKeySpecException("unsupported key type: " + ((Object) key.getClass()) + ".");
            }
            if (X509EncodedKeySpec.class.isAssignableFrom(cls)) {
                return new X509EncodedKeySpec(key.getEncoded());
            }
        }
        throw new InvalidKeySpecException("unknown key specification: " + ((Object) cls) + ".");
    }

    @Override
    public final Key engineTranslateKey(Key key) throws InvalidKeyException {
        if ((key instanceof c) || (key instanceof d)) {
            return key;
        }
        throw new InvalidKeyException("unsupported key type");
    }
}
