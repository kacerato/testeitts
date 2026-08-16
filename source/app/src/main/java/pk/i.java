package Pk;

import dk.C12948d;
import dk.InterfaceC12950f;
import dk.k;
import java.security.Provider;
import java.security.SecureRandom;
import org.bouncycastle.openssl.PEMException;

public class i {

    public final String f21602a;

    public InterfaceC12950f f21603b = new C12948d();

    public SecureRandom f21604c;

    public class a implements org.bouncycastle.openssl.f {

        public final byte[] f21605a;

        public final char[] f21606b;

        public a(byte[] bArr, char[] cArr) {
            this.f21605a = bArr;
            this.f21606b = cArr;
        }

        @Override
        public byte[] a(byte[] bArr) throws PEMException {
            return j.a(true, i.this.f21603b, bArr, this.f21606b, i.this.f21602a, this.f21605a);
        }

        @Override
        public byte[] b() {
            return this.f21605a;
        }

        @Override
        public String getAlgorithm() {
            return i.this.f21602a;
        }
    }

    public i(String str) {
        this.f21602a = str;
    }

    public org.bouncycastle.openssl.f c(char[] cArr) {
        if (this.f21604c == null) {
            this.f21604c = new SecureRandom();
        }
        byte[] bArr = new byte[this.f21602a.startsWith("AES-") ? 16 : 8];
        this.f21604c.nextBytes(bArr);
        return new a(bArr, cArr);
    }

    public i d(String str) {
        this.f21603b = new dk.i(str);
        return this;
    }

    public i e(Provider provider) {
        this.f21603b = new k(provider);
        return this;
    }

    public i f(SecureRandom secureRandom) {
        this.f21604c = secureRandom;
        return this;
    }
}
