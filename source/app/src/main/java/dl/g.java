package Dl;

import Xi.C3335c;
import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;

public class g {
    public static C3335c a(PrivateKey privateKey) throws InvalidKeyException {
        if (privateKey instanceof a) {
            return ((a) privateKey).g();
        }
        throw new InvalidKeyException("can't identify McElieceCCA2 private key.");
    }

    public static C3335c b(PublicKey publicKey) throws InvalidKeyException {
        if (publicKey instanceof b) {
            return ((b) publicKey).c();
        }
        throw new InvalidKeyException("can't identify McElieceCCA2 public key: " + publicKey.getClass().getName());
    }
}
