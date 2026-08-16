package ck;

import java.security.KeyPair;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.AlgorithmParameterSpec;

public class s implements AlgorithmParameterSpec {

    public final PublicKey f34947b;

    public final PrivateKey f34948c;

    public final PublicKey f34949d;

    public final byte[] f34950e;

    public s(KeyPair keyPair, PublicKey publicKey) {
        this(keyPair.getPublic(), keyPair.getPrivate(), publicKey, null);
    }

    public PrivateKey a() {
        return this.f34948c;
    }

    public PublicKey b() {
        return this.f34947b;
    }

    public PublicKey c() {
        return this.f34949d;
    }

    public byte[] d() {
        return org.bouncycastle.util.a.p(this.f34950e);
    }

    public s(KeyPair keyPair, PublicKey publicKey, byte[] bArr) {
        this(keyPair.getPublic(), keyPair.getPrivate(), publicKey, bArr);
    }

    public s(PrivateKey privateKey, PublicKey publicKey) {
        this(null, privateKey, publicKey, null);
    }

    public s(PrivateKey privateKey, PublicKey publicKey, byte[] bArr) {
        this(null, privateKey, publicKey, bArr);
    }

    public s(PublicKey publicKey, PrivateKey privateKey, PublicKey publicKey2) {
        this(publicKey, privateKey, publicKey2, null);
    }

    public s(PublicKey publicKey, PrivateKey privateKey, PublicKey publicKey2, byte[] bArr) {
        this.f34947b = publicKey;
        this.f34948c = privateKey;
        this.f34949d = publicKey2;
        this.f34950e = org.bouncycastle.util.a.p(bArr);
    }
}
