package xl;

import Xh.v;
import hi.h0;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.HashSet;
import java.util.Set;
import oh.C14549x;
import qh.InterfaceC15100a;

public class c extends Ml.c {

    public static final Set<C14549x> f129850c;

    public static class a extends c {
        public a() {
            super(InterfaceC15100a.f108107s1);
        }
    }

    public static class b extends c {
        public b() {
            super(InterfaceC15100a.f108102r1);
        }
    }

    static {
        HashSet hashSet = new HashSet();
        f129850c = hashSet;
        hashSet.add(InterfaceC15100a.f108102r1);
        hashSet.add(InterfaceC15100a.f108107s1);
    }

    public c() {
        super(f129850c);
    }

    @Override
    public PublicKey a(h0 h0Var) throws IOException {
        return new C16122b(h0Var);
    }

    @Override
    public PrivateKey b(v vVar) throws IOException {
        return new C16121a(vVar);
    }

    @Override
    public final KeySpec engineGetKeySpec(Key key, Class cls) throws InvalidKeySpecException {
        if (key instanceof C16121a) {
            if (PKCS8EncodedKeySpec.class.isAssignableFrom(cls)) {
                return new PKCS8EncodedKeySpec(key.getEncoded());
            }
        } else {
            if (!(key instanceof C16122b)) {
                throw new InvalidKeySpecException("Unsupported key type: " + ((Object) key.getClass()) + ".");
            }
            if (X509EncodedKeySpec.class.isAssignableFrom(cls)) {
                return new X509EncodedKeySpec(key.getEncoded());
            }
        }
        throw new InvalidKeySpecException("Unknown key specification: " + ((Object) cls) + ".");
    }

    @Override
    public final Key engineTranslateKey(Key key) throws InvalidKeyException {
        if ((key instanceof C16121a) || (key instanceof C16122b)) {
            return key;
        }
        throw new InvalidKeyException("Unsupported key type");
    }

    public c(C14549x c14549x) {
        super(c14549x);
    }
}
