package org.bouncycastle.jcajce.provider.asymmetric.util;

import Xi.C3335c;
import Xi.C3336c0;
import Xi.C3338d0;
import Xi.C3340e0;
import fk.InterfaceC13245k;
import fk.InterfaceC13246l;
import hk.p;
import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;

public class j {
    public static C3335c a(PrivateKey privateKey) throws InvalidKeyException {
        if (!(privateKey instanceof InterfaceC13245k)) {
            throw new InvalidKeyException("can't identify GOST3410 private key.");
        }
        InterfaceC13245k interfaceC13245k = (InterfaceC13245k) privateKey;
        p a10 = interfaceC13245k.getParameters().a();
        return new C3338d0(interfaceC13245k.getX(), new C3336c0(a10.b(), a10.c(), a10.a()));
    }

    public static C3335c b(PublicKey publicKey) throws InvalidKeyException {
        if (publicKey instanceof InterfaceC13246l) {
            InterfaceC13246l interfaceC13246l = (InterfaceC13246l) publicKey;
            p a10 = interfaceC13246l.getParameters().a();
            return new C3340e0(interfaceC13246l.getY(), new C3336c0(a10.b(), a10.c(), a10.a()));
        }
        throw new InvalidKeyException("can't identify GOST3410 public key: " + publicKey.getClass().getName());
    }
}
