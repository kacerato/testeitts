package org.bouncycastle.jcajce.provider.asymmetric.x509;

import Xh.v;
import hi.h0;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.KeyFactorySpi;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import org.bouncycastle.jce.provider.C14720a;

public class a extends KeyFactorySpi {
    @Override
    public PrivateKey engineGeneratePrivate(KeySpec keySpec) throws InvalidKeySpecException {
        if (!(keySpec instanceof PKCS8EncodedKeySpec)) {
            throw new InvalidKeySpecException("Unknown KeySpec type: " + keySpec.getClass().getName());
        }
        try {
            v v10 = v.v(((PKCS8EncodedKeySpec) keySpec).getEncoded());
            PrivateKey p10 = C14720a.p(v10);
            if (p10 != null) {
                return p10;
            }
            throw new InvalidKeySpecException("no factory found for OID: " + ((Object) v10.y().u()));
        } catch (Exception e10) {
            throw new InvalidKeySpecException(e10.toString());
        }
    }

    @Override
    public PublicKey engineGeneratePublic(KeySpec keySpec) throws InvalidKeySpecException {
        if (!(keySpec instanceof X509EncodedKeySpec)) {
            throw new InvalidKeySpecException("Unknown KeySpec type: " + keySpec.getClass().getName());
        }
        try {
            h0 w10 = h0.w(((X509EncodedKeySpec) keySpec).getEncoded());
            PublicKey q10 = C14720a.q(w10);
            if (q10 != null) {
                return q10;
            }
            throw new InvalidKeySpecException("no factory found for OID: " + ((Object) w10.u().u()));
        } catch (Exception e10) {
            throw new InvalidKeySpecException(e10.toString());
        }
    }

    @Override
    public KeySpec engineGetKeySpec(Key key, Class cls) throws InvalidKeySpecException {
        if (cls.isAssignableFrom(PKCS8EncodedKeySpec.class) && key.getFormat().equals("PKCS#8")) {
            return new PKCS8EncodedKeySpec(key.getEncoded());
        }
        if (cls.isAssignableFrom(X509EncodedKeySpec.class) && key.getFormat().equals("X.509")) {
            return new X509EncodedKeySpec(key.getEncoded());
        }
        throw new InvalidKeySpecException("not implemented yet " + ((Object) key) + " " + ((Object) cls));
    }

    @Override
    public Key engineTranslateKey(Key key) throws InvalidKeyException {
        throw new InvalidKeyException("not implemented yet " + ((Object) key));
    }
}
