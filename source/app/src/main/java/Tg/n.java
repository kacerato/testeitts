package Tg;

import android.security.keystore.KeyProperties;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

public final class n extends i {

    public final MessageDigest f25027c;

    public final Mac f25028d;

    public n(y yVar, String str) {
        super(yVar);
        try {
            this.f25027c = MessageDigest.getInstance(str);
            this.f25028d = null;
        } catch (NoSuchAlgorithmException unused) {
            throw new AssertionError();
        }
    }

    public static n e(y yVar, f fVar) {
        return new n(yVar, fVar, "HmacSHA1");
    }

    public static n f(y yVar, f fVar) {
        return new n(yVar, fVar, KeyProperties.KEY_ALGORITHM_HMAC_SHA256);
    }

    public static n g(y yVar) {
        return new n(yVar, KeyProperties.DIGEST_MD5);
    }

    public static n h(y yVar) {
        return new n(yVar, "SHA-1");
    }

    public static n j(y yVar) {
        return new n(yVar, "SHA-256");
    }

    @Override
    public long K(C3089c c3089c, long j10) throws IOException {
        long K10 = super.K(c3089c, j10);
        if (K10 != -1) {
            long j11 = c3089c.f24985c;
            long j12 = j11 - K10;
            u uVar = c3089c.f24984b;
            while (j11 > j12) {
                uVar = uVar.f25067g;
                j11 -= uVar.f25063c - uVar.f25062b;
            }
            while (j11 < c3089c.f24985c) {
                int i10 = (int) ((uVar.f25062b + j12) - j11);
                MessageDigest messageDigest = this.f25027c;
                if (messageDigest != null) {
                    messageDigest.update(uVar.f25061a, i10, uVar.f25063c - i10);
                } else {
                    this.f25028d.update(uVar.f25061a, i10, uVar.f25063c - i10);
                }
                j12 = (uVar.f25063c - uVar.f25062b) + j11;
                uVar = uVar.f25066f;
                j11 = j12;
            }
        }
        return K10;
    }

    public final f d() {
        MessageDigest messageDigest = this.f25027c;
        return f.J(messageDigest != null ? messageDigest.digest() : this.f25028d.doFinal());
    }

    public n(y yVar, f fVar, String str) {
        super(yVar);
        try {
            Mac mac = Mac.getInstance(str);
            this.f25028d = mac;
            mac.init(new SecretKeySpec(fVar.a0(), str));
            this.f25027c = null;
        } catch (InvalidKeyException e10) {
            throw new IllegalArgumentException(e10);
        } catch (NoSuchAlgorithmException unused) {
            throw new AssertionError();
        }
    }
}
