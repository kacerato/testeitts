package Dl;

import Bi.InterfaceC2392y;
import Ii.L;
import Rl.q;
import Rl.r;
import Xh.v;
import bk.InterfaceC3897c;
import hi.C13486b;
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

public class j extends KeyFactorySpi implements InterfaceC3897c {

    public static final String f5292a = "1.3.6.1.4.1.8301.3.1.3.4.1";

    public static InterfaceC2392y c(C13486b c13486b) {
        return new L();
    }

    @Override
    public PublicKey a(h0 h0Var) throws IOException {
        Xk.l v10 = Xk.l.v(h0Var.A());
        return new d(new r(v10.x(), v10.y(), v10.u()));
    }

    @Override
    public PrivateKey b(v vVar) throws IOException {
        Xk.k w10 = Xk.k.w(vVar.E().r());
        return new c(new q(w10.y(), w10.x(), w10.u(), w10.v(), w10.z(), w10.A(), w10.B()));
    }

    public KeySpec d(Key key, Class cls) throws InvalidKeySpecException {
        if (key instanceof c) {
            if (PKCS8EncodedKeySpec.class.isAssignableFrom(cls)) {
                return new PKCS8EncodedKeySpec(key.getEncoded());
            }
        } else {
            if (!(key instanceof d)) {
                throw new InvalidKeySpecException("Unsupported key type: " + ((Object) key.getClass()) + ".");
            }
            if (X509EncodedKeySpec.class.isAssignableFrom(cls)) {
                return new X509EncodedKeySpec(key.getEncoded());
            }
        }
        throw new InvalidKeySpecException("Unknown key specification: " + ((Object) cls) + ".");
    }

    public Key e(Key key) throws InvalidKeyException {
        if ((key instanceof c) || (key instanceof d)) {
            return key;
        }
        throw new InvalidKeyException("Unsupported key type.");
    }

    @Override
    public PrivateKey engineGeneratePrivate(KeySpec keySpec) throws InvalidKeySpecException {
        if (!(keySpec instanceof PKCS8EncodedKeySpec)) {
            throw new InvalidKeySpecException("Unsupported key specification: " + ((Object) keySpec.getClass()) + ".");
        }
        try {
            v v10 = v.v(B.B(((PKCS8EncodedKeySpec) keySpec).getEncoded()));
            try {
                if (!Xk.m.f29575m.A(v10.y().u())) {
                    throw new InvalidKeySpecException("Unable to recognise OID in McEliece private key");
                }
                Xk.k w10 = Xk.k.w(v10.E());
                return new c(new q(w10.y(), w10.x(), w10.u(), w10.v(), w10.z(), w10.A(), w10.B()));
            } catch (IOException unused) {
                throw new InvalidKeySpecException("Unable to decode PKCS8EncodedKeySpec.");
            }
        } catch (IOException e10) {
            throw new InvalidKeySpecException("Unable to decode PKCS8EncodedKeySpec: " + ((Object) e10));
        }
    }

    @Override
    public PublicKey engineGeneratePublic(KeySpec keySpec) throws InvalidKeySpecException {
        if (!(keySpec instanceof X509EncodedKeySpec)) {
            throw new InvalidKeySpecException("Unsupported key specification: " + ((Object) keySpec.getClass()) + ".");
        }
        try {
            h0 w10 = h0.w(B.B(((X509EncodedKeySpec) keySpec).getEncoded()));
            try {
                if (!Xk.m.f29575m.A(w10.u().u())) {
                    throw new InvalidKeySpecException("Unable to recognise OID in McEliece public key");
                }
                Xk.l v10 = Xk.l.v(w10.A());
                return new d(new r(v10.x(), v10.y(), v10.u()));
            } catch (IOException e10) {
                throw new InvalidKeySpecException("Unable to decode X509EncodedKeySpec: " + e10.getMessage());
            }
        } catch (IOException e11) {
            throw new InvalidKeySpecException(e11.toString());
        }
    }

    @Override
    public KeySpec engineGetKeySpec(Key key, Class cls) throws InvalidKeySpecException {
        return null;
    }

    @Override
    public Key engineTranslateKey(Key key) throws InvalidKeyException {
        return null;
    }
}
