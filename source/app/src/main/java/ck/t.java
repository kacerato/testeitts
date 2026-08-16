package ck;

import java.security.spec.EncodedKeySpec;

public class t extends EncodedKeySpec {

    public final String f34951b;

    public t(byte[] bArr) {
        super(bArr);
        String str;
        byte b10 = bArr[0];
        if (b10 == 48) {
            str = "ASN.1";
        } else {
            if (b10 != 111) {
                throw new IllegalArgumentException("unknown byte encoding");
            }
            str = "OpenSSH";
        }
        this.f34951b = str;
    }

    @Override
    public String getFormat() {
        return this.f34951b;
    }
}
