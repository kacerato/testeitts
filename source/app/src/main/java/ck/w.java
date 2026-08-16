package ck;

import java.security.spec.EncodedKeySpec;

public class w extends EncodedKeySpec {
    public w(byte[] bArr) {
        super(bArr);
    }

    @Override
    public String getFormat() {
        return "RAW";
    }
}
