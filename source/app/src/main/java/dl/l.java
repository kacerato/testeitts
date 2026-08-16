package Dl;

import Rl.q;
import Xi.C3335c;
import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;

public class l {
    public static C3335c a(PrivateKey privateKey) throws InvalidKeyException {
        if (!(privateKey instanceof c)) {
            throw new InvalidKeyException("can't identify McEliece private key.");
        }
        c cVar = (c) privateKey;
        return new q(cVar.h(), cVar.d(), cVar.a(), cVar.b(), cVar.i(), cVar.j(), cVar.l());
    }

    public static C3335c b(PublicKey publicKey) throws InvalidKeyException {
        if (publicKey instanceof d) {
            return ((d) publicKey).c();
        }
        throw new InvalidKeyException("can't identify McEliece public key: " + publicKey.getClass().getName());
    }
}
