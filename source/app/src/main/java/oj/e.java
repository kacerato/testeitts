package Oj;

import Xi.C3335c;
import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import org.bouncycastle.crypto.util.o;
import org.bouncycastle.crypto.util.q;

public class e {
    public static C3335c a(PrivateKey privateKey) throws InvalidKeyException {
        if (privateKey instanceof c) {
            return ((c) privateKey).b();
        }
        if (privateKey instanceof a) {
            return ((a) privateKey).b();
        }
        try {
            byte[] encoded = privateKey.getEncoded();
            if (encoded != null) {
                return o.c(encoded);
            }
            throw new InvalidKeyException("no encoding for EdEC/XDH private key");
        } catch (Exception e10) {
            throw new InvalidKeyException("cannot identify EdEC/XDH private key: " + e10.getMessage());
        }
    }

    public static C3335c b(PublicKey publicKey) throws InvalidKeyException {
        if (publicKey instanceof d) {
            return ((d) publicKey).a();
        }
        if (publicKey instanceof b) {
            return ((b) publicKey).a();
        }
        try {
            byte[] encoded = publicKey.getEncoded();
            if (encoded != null) {
                return q.e(encoded);
            }
            throw new InvalidKeyException("no encoding for EdEC/XDH public key");
        } catch (Exception e10) {
            throw new InvalidKeyException("cannot identify EdEC/XDH public key: " + e10.getMessage());
        }
    }
}
