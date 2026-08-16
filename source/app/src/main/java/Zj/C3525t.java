package Zj;

import Xi.C3360o0;
import ak.C3665e;
import bk.AbstractC3895a;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import javax.crypto.SecretKey;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;

public final class C3525t {

    public static class a extends AbstractC3895a {

        public static final String f31449a = C3525t.class.getName();

        @Override
        public void a(Tj.a aVar) {
            aVar.d("SecretKeyFactory.PBKDF-OPENSSL", f31449a + "$PBKDF");
        }
    }

    public static class b extends C3665e {
        public b() {
            super("PBKDF-OpenSSL", null);
        }

        @Override
        public SecretKey engineGenerateSecret(KeySpec keySpec) throws InvalidKeySpecException {
            if (!(keySpec instanceof PBEKeySpec)) {
                throw new InvalidKeySpecException("Invalid KeySpec");
            }
            PBEKeySpec pBEKeySpec = (PBEKeySpec) keySpec;
            if (pBEKeySpec.getSalt() == null) {
                throw new InvalidKeySpecException("missing required salt");
            }
            if (pBEKeySpec.getIterationCount() <= 0) {
                throw new InvalidKeySpecException("positive iteration count required: " + pBEKeySpec.getIterationCount());
            }
            if (pBEKeySpec.getKeyLength() <= 0) {
                throw new InvalidKeySpecException("positive key length required: " + pBEKeySpec.getKeyLength());
            }
            if (pBEKeySpec.getPassword().length == 0) {
                throw new IllegalArgumentException("password empty");
            }
            Oi.G g10 = new Oi.G();
            g10.l(org.bouncycastle.util.w.o(pBEKeySpec.getPassword()), pBEKeySpec.getSalt());
            return new SecretKeySpec(((C3360o0) g10.e(pBEKeySpec.getKeyLength())).b(), "OpenSSLPBKDF");
        }
    }
}
