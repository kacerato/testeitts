package android.security;

import java.security.KeyPair;
import java.security.cert.Certificate;
import java.util.List;

public final class AttestedKeyPair {
    AttestedKeyPair(KeyPair keyPair, Certificate[] attestationRecord) {
        throw new RuntimeException("Stub!");
    }

    public KeyPair getKeyPair() {
        throw new RuntimeException("Stub!");
    }

    public List<Certificate> getAttestationRecord() {
        throw new RuntimeException("Stub!");
    }
}
