package ck;

import javax.crypto.SecretKey;

public class x implements SecretKey {

    public String f34956b;

    public x(String str) {
        this.f34956b = str;
    }

    @Override
    public String getAlgorithm() {
        return this.f34956b;
    }

    @Override
    public byte[] getEncoded() {
        return null;
    }

    @Override
    public String getFormat() {
        return null;
    }
}
