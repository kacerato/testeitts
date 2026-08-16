package Hj;

import javax.crypto.SecretKey;

public final class w implements SecretKey {

    public final SecretKey f8580b;

    public final byte[] f8581c;

    public w(SecretKey secretKey, byte[] bArr) {
        this.f8580b = secretKey;
        this.f8581c = org.bouncycastle.util.a.p(bArr);
    }

    public byte[] e() {
        return org.bouncycastle.util.a.p(this.f8581c);
    }

    public boolean equals(Object obj) {
        return this.f8580b.equals(obj);
    }

    @Override
    public String getAlgorithm() {
        return this.f8580b.getAlgorithm();
    }

    @Override
    public byte[] getEncoded() {
        return this.f8580b.getEncoded();
    }

    @Override
    public String getFormat() {
        return this.f8580b.getFormat();
    }

    public int hashCode() {
        return this.f8580b.hashCode();
    }
}
