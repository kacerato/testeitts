package Fj;

import android.security.keystore.KeyProperties;
import dk.C12948d;
import dk.InterfaceC12950f;
import java.security.Provider;
import java.security.SecureRandom;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

public class i implements Gj.c {

    public final SecureRandom f6989a;

    public final InterfaceC12950f f6990b;

    public byte[] f6991c;

    public byte[] f6992d;

    public static class b {

        public SecureRandom f6993a;

        public InterfaceC12950f f6994b = new C12948d();

        public i a() {
            if (this.f6993a == null) {
                this.f6993a = new SecureRandom();
            }
            return new i(this.f6993a, this.f6994b);
        }

        public b b(String str) {
            this.f6994b = new dk.i(str);
            return this;
        }

        public b c(Provider provider) {
            this.f6994b = new dk.k(provider);
            return this;
        }

        public b d(SecureRandom secureRandom) {
            this.f6993a = secureRandom;
            return this;
        }
    }

    public i(SecureRandom secureRandom, InterfaceC12950f interfaceC12950f) {
        this.f6989a = secureRandom;
        this.f6990b = interfaceC12950f;
    }

    @Override
    public byte[] a(byte[] bArr) {
        byte[] bArr2 = new byte[16];
        this.f6992d = bArr2;
        this.f6989a.nextBytes(bArr2);
        byte[] bArr3 = new byte[12];
        this.f6991c = bArr3;
        this.f6989a.nextBytes(bArr3);
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(this.f6992d, KeyProperties.KEY_ALGORITHM_AES);
            Cipher e10 = this.f6990b.e("CCM");
            e10.init(1, secretKeySpec, Fj.a.a(this.f6991c, 128));
            return e10.doFinal(bArr);
        } catch (Exception e11) {
            throw new RuntimeException(e11.getMessage(), e11);
        }
    }

    @Override
    public byte[] b() {
        return this.f6991c;
    }

    @Override
    public byte[] getKey() {
        return this.f6992d;
    }
}
