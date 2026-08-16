package Rk;

import Bi.Z;
import Qk.K;
import Xi.C3360o0;
import hi.C13486b;
import java.security.SecureRandom;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.operator.OperatorException;

public class v extends K {

    public SecureRandom f22866b;

    public Z f22867c;

    public C3360o0 f22868d;

    public v(C13486b c13486b, Z z10, C3360o0 c3360o0) {
        super(c13486b);
        this.f22867c = z10;
        this.f22868d = c3360o0;
    }

    @Override
    public Qk.r b(C13486b c13486b, byte[] bArr) throws OperatorException {
        this.f22867c.a(false, this.f22868d);
        try {
            return new Qk.r(c13486b, this.f22867c.d(bArr, 0, bArr.length));
        } catch (InvalidCipherTextException e10) {
            throw new OperatorException("unable to unwrap key: " + e10.getMessage(), e10);
        }
    }

    public v c(SecureRandom secureRandom) {
        this.f22866b = secureRandom;
        return this;
    }
}
