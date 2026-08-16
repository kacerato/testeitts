package ck;

import java.security.spec.EncodedKeySpec;

public class u extends EncodedKeySpec {

    public static final String[] f34952c = {org.bouncycastle.crypto.util.k.f101072a, org.bouncycastle.crypto.util.k.f101074c, org.bouncycastle.crypto.util.k.f101075d};

    public final String f34953b;

    public u(byte[] bArr) {
        super(bArr);
        int i10 = 0;
        int i11 = (((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255)) + 4;
        if (i11 >= bArr.length) {
            throw new IllegalArgumentException("invalid public key blob: type field longer than blob");
        }
        String c10 = org.bouncycastle.util.w.c(org.bouncycastle.util.a.X(bArr, 4, i11));
        this.f34953b = c10;
        if (c10.startsWith(org.bouncycastle.crypto.util.k.f101073b)) {
            return;
        }
        while (true) {
            String[] strArr = f34952c;
            if (i10 >= strArr.length) {
                throw new IllegalArgumentException("unrecognised public key type " + this.f34953b);
            }
            if (strArr[i10].equals(this.f34953b)) {
                return;
            } else {
                i10++;
            }
        }
    }

    public String a() {
        return this.f34953b;
    }

    @Override
    public String getFormat() {
        return "OpenSSH";
    }
}
