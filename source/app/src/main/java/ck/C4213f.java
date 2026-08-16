package ck;

import java.security.KeyPair;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.AlgorithmParameterSpec;

public class C4213f implements AlgorithmParameterSpec {

    public final PublicKey f34903b;

    public final PrivateKey f34904c;

    public final PublicKey f34905d;

    public final byte[] f34906e;

    public C4213f(KeyPair keyPair, PublicKey publicKey) {
        this(keyPair.getPublic(), keyPair.getPrivate(), publicKey, null);
    }

    public PrivateKey a() {
        return this.f34904c;
    }

    public PublicKey b() {
        return this.f34903b;
    }

    public PublicKey c() {
        return this.f34905d;
    }

    public byte[] d() {
        return org.bouncycastle.util.a.p(this.f34906e);
    }

    public C4213f(KeyPair keyPair, PublicKey publicKey, byte[] bArr) {
        this(keyPair.getPublic(), keyPair.getPrivate(), publicKey, bArr);
    }

    public C4213f(PrivateKey privateKey, PublicKey publicKey) {
        this(null, privateKey, publicKey, null);
    }

    public C4213f(PrivateKey privateKey, PublicKey publicKey, byte[] bArr) {
        this(null, privateKey, publicKey, bArr);
    }

    public C4213f(PublicKey publicKey, PrivateKey privateKey, PublicKey publicKey2) {
        this(publicKey, privateKey, publicKey2, null);
    }

    public C4213f(PublicKey publicKey, PrivateKey privateKey, PublicKey publicKey2, byte[] bArr) {
        if (privateKey == null) {
            throw new IllegalArgumentException("ephemeral private key cannot be null");
        }
        if (publicKey2 == null) {
            throw new IllegalArgumentException("other party ephemeral key cannot be null");
        }
        this.f34903b = publicKey;
        this.f34904c = privateKey;
        this.f34905d = publicKey2;
        this.f34906e = org.bouncycastle.util.a.p(bArr);
    }
}
