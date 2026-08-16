package Ok;

import org.bouncycastle.openssl.PEMException;
import org.bouncycastle.openssl.PasswordException;
import org.bouncycastle.openssl.c;
import org.bouncycastle.openssl.d;

public class a implements d {

    public final char[] f20314a;

    public class C0495a implements c {

        public final String f20315a;

        public C0495a(String str) {
            this.f20315a = str;
        }

        @Override
        public byte[] a(byte[] bArr, byte[] bArr2) throws PEMException {
            if (a.this.f20314a != null) {
                return b.a(false, bArr, a.this.f20314a, this.f20315a, bArr2);
            }
            throw new PasswordException("Password is null, but a password is required");
        }
    }

    public a(char[] cArr) {
        this.f20314a = cArr;
    }

    @Override
    public c get(String str) {
        return new C0495a(str);
    }
}
