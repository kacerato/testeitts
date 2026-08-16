package Pk;

import dk.C12948d;
import dk.InterfaceC12950f;
import dk.k;
import java.security.Provider;
import org.bouncycastle.openssl.PEMException;
import org.bouncycastle.openssl.PasswordException;

public class h {

    public InterfaceC12950f f21597a = new C12948d();

    public class a implements org.bouncycastle.openssl.d {

        public final char[] f21598a;

        public class C0524a implements org.bouncycastle.openssl.c {

            public final String f21600a;

            public C0524a(String str) {
                this.f21600a = str;
            }

            @Override
            public byte[] a(byte[] bArr, byte[] bArr2) throws PEMException {
                a aVar = a.this;
                if (aVar.f21598a != null) {
                    return j.a(false, h.this.f21597a, bArr, a.this.f21598a, this.f21600a, bArr2);
                }
                throw new PasswordException("Password is null, but a password is required");
            }
        }

        public a(char[] cArr) {
            this.f21598a = cArr;
        }

        @Override
        public org.bouncycastle.openssl.c get(String str) {
            return new C0524a(str);
        }
    }

    public org.bouncycastle.openssl.d b(char[] cArr) {
        return new a(cArr);
    }

    public h c(String str) {
        this.f21597a = new dk.i(str);
        return this;
    }

    public h d(Provider provider) {
        this.f21597a = new k(provider);
        return this;
    }
}
