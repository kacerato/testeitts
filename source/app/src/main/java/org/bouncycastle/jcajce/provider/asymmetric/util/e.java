package org.bouncycastle.jcajce.provider.asymmetric.util;

import Xi.C3335c;
import Xi.C3363q;
import Xi.C3366s;
import Xi.r;
import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import javax.crypto.interfaces.DHPrivateKey;
import javax.crypto.interfaces.DHPublicKey;

public class e {
    public static C3335c a(PrivateKey privateKey) throws InvalidKeyException {
        if (!(privateKey instanceof DHPrivateKey)) {
            throw new InvalidKeyException("can't identify DH private key.");
        }
        DHPrivateKey dHPrivateKey = (DHPrivateKey) privateKey;
        return new r(dHPrivateKey.getX(), new C3363q(dHPrivateKey.getParams().getP(), dHPrivateKey.getParams().getG(), null, dHPrivateKey.getParams().getL()));
    }

    public static C3335c b(PublicKey publicKey) throws InvalidKeyException {
        if (publicKey instanceof Mj.d) {
            return ((Mj.d) publicKey).a();
        }
        if (!(publicKey instanceof DHPublicKey)) {
            throw new InvalidKeyException("can't identify DH public key.");
        }
        DHPublicKey dHPublicKey = (DHPublicKey) publicKey;
        return new C3366s(dHPublicKey.getY(), new C3363q(dHPublicKey.getParams().getP(), dHPublicKey.getParams().getG(), null, dHPublicKey.getParams().getL()));
    }
}
