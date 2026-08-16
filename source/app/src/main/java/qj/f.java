package Qj;

import Xh.v;
import fk.InterfaceC13245k;
import fk.InterfaceC13246l;
import hi.h0;
import hk.o;
import hk.p;
import hk.q;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import oh.C14549x;
import yh.InterfaceC16192a;

public class f extends org.bouncycastle.jcajce.provider.asymmetric.util.c {
    @Override
    public PublicKey a(h0 h0Var) throws IOException {
        C14549x u10 = h0Var.u().u();
        if (u10.A(InterfaceC16192a.f130280l)) {
            return new d(h0Var);
        }
        throw new IOException("algorithm identifier " + ((Object) u10) + " in key not recognised");
    }

    @Override
    public PrivateKey b(v vVar) throws IOException {
        C14549x u10 = vVar.y().u();
        if (u10.A(InterfaceC16192a.f130280l)) {
            return new c(vVar);
        }
        throw new IOException("algorithm identifier " + ((Object) u10) + " in key not recognised");
    }

    @Override
    public PrivateKey engineGeneratePrivate(KeySpec keySpec) throws InvalidKeySpecException {
        return keySpec instanceof o ? new c((o) keySpec) : super.engineGeneratePrivate(keySpec);
    }

    @Override
    public PublicKey engineGeneratePublic(KeySpec keySpec) throws InvalidKeySpecException {
        return keySpec instanceof q ? new d((q) keySpec) : super.engineGeneratePublic(keySpec);
    }

    @Override
    public KeySpec engineGetKeySpec(Key key, Class cls) throws InvalidKeySpecException {
        if (cls.isAssignableFrom(q.class) && (key instanceof InterfaceC13246l)) {
            InterfaceC13246l interfaceC13246l = (InterfaceC13246l) key;
            p a10 = interfaceC13246l.getParameters().a();
            return new q(interfaceC13246l.getY(), a10.b(), a10.c(), a10.a());
        }
        if (!cls.isAssignableFrom(o.class) || !(key instanceof InterfaceC13245k)) {
            return super.engineGetKeySpec(key, cls);
        }
        InterfaceC13245k interfaceC13245k = (InterfaceC13245k) key;
        p a11 = interfaceC13245k.getParameters().a();
        return new o(interfaceC13245k.getX(), a11.b(), a11.c(), a11.a());
    }

    @Override
    public Key engineTranslateKey(Key key) throws InvalidKeyException {
        if (key instanceof InterfaceC13246l) {
            return new d((InterfaceC13246l) key);
        }
        if (key instanceof InterfaceC13245k) {
            return new c((InterfaceC13245k) key);
        }
        throw new InvalidKeyException("key type unknown");
    }
}
