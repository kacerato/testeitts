package Dl;

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

public class e extends KeyFactorySpi implements InterfaceC3897c {

    public static final String f5287a = "1.3.6.1.4.1.8301.3.1.3.4.2";

    @Override
    public PublicKey a(h0 h0Var) throws IOException {
        Xk.j w10 = Xk.j.w(h0Var.A());
        return new b(new Rl.h(w10.x(), w10.y(), w10.v(), p.a(w10.u()).b()));
    }

    @Override
    public PrivateKey b(v vVar) throws IOException {
        Xk.i y10 = Xk.i.y(vVar.E().r());
        return new a(new Rl.g(y10.A(), y10.z(), y10.v(), y10.x(), y10.B(), null));
    }

    public KeySpec c(Key key, Class cls) throws InvalidKeySpecException {
        if (key instanceof a) {
            if (PKCS8EncodedKeySpec.class.isAssignableFrom(cls)) {
                return new PKCS8EncodedKeySpec(key.getEncoded());
            }
        } else {
            if (!(key instanceof b)) {
                throw new InvalidKeySpecException("Unsupported key type: " + ((Object) key.getClass()) + ".");
            }
            if (X509EncodedKeySpec.class.isAssignableFrom(cls)) {
                return new X509EncodedKeySpec(key.getEncoded());
            }
        }
        throw new InvalidKeySpecException("Unknown key specification: " + ((Object) cls) + ".");
    }

    public Key d(Key key) throws InvalidKeyException {
        if ((key instanceof a) || (key instanceof b)) {
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
                if (!Xk.m.f29576n.A(v10.y().u())) {
                    throw new InvalidKeySpecException("Unable to recognise OID in McEliece public key");
                }
                Xk.i y10 = Xk.i.y(v10.E());
                return new a(new Rl.g(y10.A(), y10.z(), y10.v(), y10.x(), y10.B(), p.a(y10.u()).b()));
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
                if (!Xk.m.f29576n.A(w10.u().u())) {
                    throw new InvalidKeySpecException("Unable to recognise OID in McEliece private key");
                }
                Xk.j w11 = Xk.j.w(w10.A());
                return new b(new Rl.h(w11.x(), w11.y(), w11.v(), p.a(w11.u()).b()));
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
