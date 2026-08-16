package Tg;

import android.security.keystore.KeyProperties;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.annotation.Nullable;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

public final class m extends h {

    @Nullable
    public final MessageDigest f25025c;

    @Nullable
    public final Mac f25026d;

    public m(x xVar, String str) {
        super(xVar);
        try {
            this.f25025c = MessageDigest.getInstance(str);
            this.f25026d = null;
        } catch (NoSuchAlgorithmException unused) {
            throw new AssertionError();
        }
    }

    public static m e(x xVar, f fVar) {
        return new m(xVar, fVar, "HmacSHA1");
    }

    public static m f(x xVar, f fVar) {
        return new m(xVar, fVar, KeyProperties.KEY_ALGORITHM_HMAC_SHA256);
    }

    public static m g(x xVar, f fVar) {
        return new m(xVar, fVar, KeyProperties.KEY_ALGORITHM_HMAC_SHA512);
    }

    public static m h(x xVar) {
        return new m(xVar, KeyProperties.DIGEST_MD5);
    }

    public static m j(x xVar) {
        return new m(xVar, "SHA-1");
    }

    public static m k(x xVar) {
        return new m(xVar, "SHA-256");
    }

    public static m l(x xVar) {
        return new m(xVar, "SHA-512");
    }

    public final f d() {
        MessageDigest messageDigest = this.f25025c;
        return f.J(messageDigest != null ? messageDigest.digest() : this.f25026d.doFinal());
    }

    @Override
    public void h0(C3089c c3089c, long j10) throws IOException {
        B.b(c3089c.f24985c, 0L, j10);
        u uVar = c3089c.f24984b;
        long j11 = 0;
        while (j11 < j10) {
            int min = (int) Math.min(j10 - j11, uVar.f25063c - uVar.f25062b);
            MessageDigest messageDigest = this.f25025c;
            if (messageDigest != null) {
                messageDigest.update(uVar.f25061a, uVar.f25062b, min);
            } else {
                this.f25026d.update(uVar.f25061a, uVar.f25062b, min);
            }
            j11 += min;
            uVar = uVar.f25066f;
        }
        super.h0(c3089c, j10);
    }

    public m(x xVar, f fVar, String str) {
        super(xVar);
        try {
            Mac mac = Mac.getInstance(str);
            this.f25026d = mac;
            mac.init(new SecretKeySpec(fVar.a0(), str));
            this.f25025c = null;
        } catch (InvalidKeyException e10) {
            throw new IllegalArgumentException(e10);
        } catch (NoSuchAlgorithmException unused) {
            throw new AssertionError();
        }
    }
}
