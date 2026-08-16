package Ml;

import Xh.v;
import bk.InterfaceC3897c;
import hi.h0;
import java.security.KeyFactorySpi;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.Set;
import oh.C14549x;

public abstract class c extends KeyFactorySpi implements InterfaceC3897c {

    public final Set<C14549x> f15442a;

    public final C14549x f15443b;

    public c(Set<C14549x> set) {
        this.f15443b = null;
        this.f15442a = set;
    }

    public final void c(C14549x c14549x) throws InvalidKeySpecException {
        C14549x c14549x2 = this.f15443b;
        if (c14549x2 != null) {
            if (c14549x2.A(c14549x)) {
                return;
            }
            throw new InvalidKeySpecException("incorrect algorithm OID for key: " + ((Object) c14549x));
        }
        if (this.f15442a.contains(c14549x)) {
            return;
        }
        throw new InvalidKeySpecException("incorrect algorithm OID for key: " + ((Object) c14549x));
    }

    @Override
    public PrivateKey engineGeneratePrivate(KeySpec keySpec) throws InvalidKeySpecException {
        if (keySpec instanceof PKCS8EncodedKeySpec) {
            try {
                v v10 = v.v(((PKCS8EncodedKeySpec) keySpec).getEncoded());
                c(v10.y().u());
                return b(v10);
            } catch (Exception e10) {
                throw new InvalidKeySpecException(e10.toString());
            }
        }
        throw new InvalidKeySpecException("Unsupported key specification: " + ((Object) keySpec.getClass()) + ".");
    }

    @Override
    public PublicKey engineGeneratePublic(KeySpec keySpec) throws InvalidKeySpecException {
        if (keySpec instanceof X509EncodedKeySpec) {
            try {
                h0 w10 = h0.w(((X509EncodedKeySpec) keySpec).getEncoded());
                c(w10.u().u());
                return a(w10);
            } catch (Exception e10) {
                throw new InvalidKeySpecException(e10.toString());
            }
        }
        throw new InvalidKeySpecException("Unknown key specification: " + ((Object) keySpec) + ".");
    }

    public c(C14549x c14549x) {
        this.f15443b = c14549x;
        this.f15442a = null;
    }
}
