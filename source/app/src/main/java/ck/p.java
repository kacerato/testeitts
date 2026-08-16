package ck;

import java.security.PublicKey;
import java.security.spec.AlgorithmParameterSpec;

public class p implements AlgorithmParameterSpec {

    public final PublicKey f34934b;

    public final String f34935c;

    public final int f34936d;

    public p(PublicKey publicKey, String str) {
        this(publicKey, str, 256);
    }

    public String a() {
        return this.f34935c;
    }

    public int b() {
        return this.f34936d;
    }

    public PublicKey c() {
        return this.f34934b;
    }

    public p(PublicKey publicKey, String str, int i10) {
        this.f34934b = publicKey;
        this.f34935c = str;
        this.f34936d = i10;
    }
}
