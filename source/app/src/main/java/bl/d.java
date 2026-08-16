package Bl;

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

public class d extends Ml.c {

    public static final Set<C14549x> f1944c;

    public static class a extends d {
        public a() {
            super(InterfaceC15100a.f107982R2);
        }
    }

    public static class b extends d {
        public b() {
            super(InterfaceC15100a.f107994U2);
        }
    }

    public static class c extends d {
        public c() {
            super(InterfaceC15100a.f107974P2);
        }
    }

    public static class C0039d extends d {
        public C0039d() {
            super(InterfaceC15100a.f107986S2);
        }
    }

    public static class e extends d {
        public e() {
            super(InterfaceC15100a.f107978Q2);
        }
    }

    public static class f extends d {
        public f() {
            super(InterfaceC15100a.f107990T2);
        }
    }

    static {
        HashSet hashSet = new HashSet();
        f1944c = hashSet;
        hashSet.add(InterfaceC15100a.f107974P2);
        hashSet.add(InterfaceC15100a.f107978Q2);
        hashSet.add(InterfaceC15100a.f107982R2);
        hashSet.add(InterfaceC15100a.f107986S2);
        hashSet.add(InterfaceC15100a.f107990T2);
        hashSet.add(InterfaceC15100a.f107994U2);
    }

    public d() {
        super(f1944c);
    }

    @Override
    public PublicKey a(h0 h0Var) throws IOException {
        return new Bl.b(h0Var);
    }

    @Override
    public PrivateKey b(v vVar) throws IOException {
        return new Bl.a(vVar);
    }

    @Override
    public final KeySpec engineGetKeySpec(Key key, Class cls) throws InvalidKeySpecException {
        if (key instanceof Bl.a) {
            if (PKCS8EncodedKeySpec.class.isAssignableFrom(cls)) {
                return new PKCS8EncodedKeySpec(key.getEncoded());
            }
        } else {
            if (!(key instanceof Bl.b)) {
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
        if ((key instanceof Bl.a) || (key instanceof Bl.b)) {
            return key;
        }
        throw new InvalidKeyException("Unsupported key type");
    }

    public d(C14549x c14549x) {
        super(c14549x);
    }
}
