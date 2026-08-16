package Fj;

import android.security.keystore.KeyProperties;
import ck.n;
import dk.InterfaceC12950f;
import java.security.PrivateKey;
import java.security.Provider;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;

public class c implements Gj.b {

    public final PrivateKey f6955a;

    public final InterfaceC12950f f6956b;

    public final byte[] f6957c;

    public SecretKey f6958d = null;

    public static class a {

        public InterfaceC12950f f6959a;

        public final byte[] f6960b;

        public final PrivateKey f6961c;

        public a(PrivateKey privateKey, byte[] bArr) {
            this.f6961c = privateKey;
            this.f6960b = org.bouncycastle.util.a.p(bArr);
        }

        public c a() {
            return new c(this.f6961c, this.f6960b, this.f6959a);
        }

        public a b(String str) {
            this.f6959a = new dk.i(str);
            return this;
        }

        public a c(Provider provider) {
            this.f6959a = new dk.k(provider);
            return this;
        }
    }

    public c(PrivateKey privateKey, byte[] bArr, InterfaceC12950f interfaceC12950f) {
        this.f6955a = privateKey;
        this.f6956b = interfaceC12950f;
        this.f6957c = bArr;
    }

    public static a b(PrivateKey privateKey, byte[] bArr) {
        return new a(privateKey, bArr);
    }

    @Override
    public byte[] a(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        try {
            Cipher e10 = this.f6956b.e("ETSIKEMwithSHA256");
            e10.init(4, this.f6955a, new n(this.f6957c));
            this.f6958d = (SecretKey) e10.unwrap(bArr, KeyProperties.KEY_ALGORITHM_AES, 3);
            Cipher e11 = this.f6956b.e("CCM");
            e11.init(2, this.f6958d, Fj.a.a(bArr3, 128));
            return e11.doFinal(bArr2);
        } catch (Exception e12) {
            throw new RuntimeException(e12.getMessage(), e12);
        }
    }

    @Override
    public byte[] getKey() {
        SecretKey secretKey = this.f6958d;
        if (secretKey != null) {
            return secretKey.getEncoded();
        }
        throw new IllegalStateException("no secret key recovered");
    }
}
