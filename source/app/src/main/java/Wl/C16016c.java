package wl;

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

public class C16016c extends Ml.c {

    public static final Set<C14549x> f127599c;

    public static class a extends C16016c {
        public a() {
            super(InterfaceC15100a.f108115u1);
        }
    }

    public static class b extends C16016c {
        public b() {
            super(InterfaceC15100a.f108127x1);
        }
    }

    public static class C2195c extends C16016c {
        public C2195c() {
            super(InterfaceC15100a.f108119v1);
        }
    }

    public static class d extends C16016c {
        public d() {
            super(InterfaceC15100a.f108131y1);
        }
    }

    public static class e extends C16016c {
        public e() {
            super(InterfaceC15100a.f108123w1);
        }
    }

    public static class f extends C16016c {
        public f() {
            super(InterfaceC15100a.f108135z1);
        }
    }

    static {
        HashSet hashSet = new HashSet();
        f127599c = hashSet;
        hashSet.add(InterfaceC15100a.f108115u1);
        hashSet.add(InterfaceC15100a.f108119v1);
        hashSet.add(InterfaceC15100a.f108123w1);
        hashSet.add(InterfaceC15100a.f108127x1);
        hashSet.add(InterfaceC15100a.f108131y1);
        hashSet.add(InterfaceC15100a.f108135z1);
    }

    public C16016c() {
        super(f127599c);
    }

    @Override
    public PublicKey a(h0 h0Var) throws IOException {
        return new C16015b(h0Var);
    }

    @Override
    public PrivateKey b(v vVar) throws IOException {
        return new C16014a(vVar);
    }

    @Override
    public final KeySpec engineGetKeySpec(Key key, Class cls) throws InvalidKeySpecException {
        if (key instanceof C16014a) {
            if (PKCS8EncodedKeySpec.class.isAssignableFrom(cls)) {
                return new PKCS8EncodedKeySpec(key.getEncoded());
            }
        } else {
            if (!(key instanceof C16015b)) {
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
        if ((key instanceof C16014a) || (key instanceof C16015b)) {
            return key;
        }
        throw new InvalidKeyException("Unsupported key type");
    }

    public C16016c(C14549x c14549x) {
        super(c14549x);
    }
}
