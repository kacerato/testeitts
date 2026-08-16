package qi;

import Qk.C3019l;
import Qk.F;
import Qk.I;
import Qk.r;
import dk.C12948d;
import dk.k;
import hi.C13486b;
import java.io.OutputStream;
import java.security.AlgorithmParameters;
import java.security.GeneralSecurityException;
import java.security.Provider;
import java.security.SecureRandom;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import oh.C14549x;
import org.bouncycastle.cert.crmf.CRMFException;

public class C15114h {

    public static final I f108194e = C3019l.f22473a;

    public final C14549x f108195a;

    public final int f108196b;

    public C15107a f108197c;

    public SecureRandom f108198d;

    public class a implements F {

        public SecretKey f108199a;

        public C13486b f108200b;

        public Cipher f108201c;

        public a(C14549x c14549x, int i10, SecureRandom secureRandom) throws CRMFException {
            KeyGenerator g10 = C15114h.this.f108197c.g(c14549x);
            secureRandom = secureRandom == null ? new SecureRandom() : secureRandom;
            i10 = i10 < 0 ? C15114h.f108194e.b(c14549x) : i10;
            if (i10 < 0) {
                g10.init(secureRandom);
            } else {
                g10.init(i10, secureRandom);
            }
            this.f108201c = C15114h.this.f108197c.c(c14549x);
            this.f108199a = g10.generateKey();
            AlgorithmParameters j10 = C15114h.this.f108197c.j(c14549x, this.f108199a, secureRandom);
            try {
                this.f108201c.init(1, this.f108199a, j10, secureRandom);
                this.f108200b = C15114h.this.f108197c.k(c14549x, j10 == null ? this.f108201c.getParameters() : j10);
            } catch (GeneralSecurityException e10) {
                throw new CRMFException("unable to initialize cipher: " + e10.getMessage(), e10);
            }
        }

        @Override
        public C13486b a() {
            return this.f108200b;
        }

        @Override
        public OutputStream d(OutputStream outputStream) {
            return new Jj.b(outputStream, this.f108201c);
        }

        @Override
        public r getKey() {
            return new org.bouncycastle.operator.jcajce.g(this.f108200b, this.f108199a);
        }
    }

    public C15114h(C14549x c14549x) {
        this(c14549x, -1);
    }

    public F c() throws CRMFException {
        return new a(this.f108195a, this.f108196b, this.f108198d);
    }

    public C15114h d(String str) {
        this.f108197c = new C15107a(new dk.i(str));
        return this;
    }

    public C15114h e(Provider provider) {
        this.f108197c = new C15107a(new k(provider));
        return this;
    }

    public C15114h f(SecureRandom secureRandom) {
        this.f108198d = secureRandom;
        return this;
    }

    public C15114h(C14549x c14549x, int i10) {
        this.f108197c = new C15107a(new C12948d());
        this.f108195a = c14549x;
        this.f108196b = i10;
    }
}
