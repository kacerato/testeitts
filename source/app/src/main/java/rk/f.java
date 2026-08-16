package Rk;

import Bi.S;
import Qk.InterfaceC3013f;
import Xi.C3335c;
import Xi.x0;
import hi.C13486b;
import java.io.OutputStream;
import java.security.SecureRandom;
import org.bouncycastle.crypto.CryptoException;
import org.bouncycastle.operator.OperatorCreationException;
import org.bouncycastle.operator.RuntimeOperatorException;

public abstract class f {

    public SecureRandom f22838a;

    public C13486b f22839b;

    public C13486b f22840c;

    public l f22841d = j.f22854b;

    public class a implements InterfaceC3013f {

        public u f22842a;

        public final S f22843b;

        public a(S s10) {
            this.f22843b = s10;
            this.f22842a = new u(s10);
        }

        @Override
        public C13486b a() {
            return f.this.f22839b;
        }

        @Override
        public OutputStream getOutputStream() {
            return this.f22842a;
        }

        @Override
        public byte[] getSignature() {
            try {
                return this.f22842a.c();
            } catch (CryptoException e10) {
                throw new RuntimeOperatorException("exception obtaining signature: " + e10.getMessage(), e10);
            }
        }
    }

    public f(C13486b c13486b, C13486b c13486b2) {
        this.f22839b = c13486b;
        this.f22840c = c13486b2;
    }

    public InterfaceC3013f b(C3335c c3335c) throws OperatorCreationException {
        S c10 = c(this.f22839b, this.f22840c);
        SecureRandom secureRandom = this.f22838a;
        if (secureRandom != null) {
            c10.a(true, new x0(c3335c, secureRandom));
        } else {
            c10.a(true, c3335c);
        }
        return new a(c10);
    }

    public abstract S c(C13486b c13486b, C13486b c13486b2) throws OperatorCreationException;

    public f d(SecureRandom secureRandom) {
        this.f22838a = secureRandom;
        return this;
    }
}
