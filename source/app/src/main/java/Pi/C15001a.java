package pi;

import Bi.r;
import Qk.F;
import Xi.C3360o0;
import hi.C13486b;
import java.io.OutputStream;
import java.security.SecureRandom;
import oh.C14549x;
import org.bouncycastle.cert.crmf.CRMFException;

public class C15001a {

    public final C14549x f103973a;

    public final int f103974b;

    public C15004d f103975c;

    public SecureRandom f103976d;

    public class C1955a implements F {

        public C3360o0 f103977a;

        public C13486b f103978b;

        public Object f103979c;

        public C1955a(C14549x c14549x, int i10, SecureRandom secureRandom) throws CRMFException {
            SecureRandom i11 = r.i(secureRandom);
            this.f103977a = new C3360o0(C15001a.this.f103975c.b(c14549x, i11).a());
            this.f103978b = C15001a.this.f103975c.c(c14549x, this.f103977a, i11);
            C15004d unused = C15001a.this.f103975c;
            this.f103979c = C15004d.a(true, this.f103977a, this.f103978b);
        }

        @Override
        public C13486b a() {
            return this.f103978b;
        }

        @Override
        public OutputStream d(OutputStream outputStream) {
            return org.bouncycastle.crypto.util.c.d(outputStream, this.f103979c);
        }

        @Override
        public Qk.r getKey() {
            return new Qk.r(this.f103978b, this.f103977a.b());
        }
    }

    public C15001a(C14549x c14549x) {
        this(c14549x, -1);
    }

    public F b() throws CRMFException {
        return new C1955a(this.f103973a, this.f103974b, this.f103976d);
    }

    public C15001a c(SecureRandom secureRandom) {
        this.f103976d = secureRandom;
        return this;
    }

    public C15001a(C14549x c14549x, int i10) {
        this.f103975c = new C15004d();
        this.f103973a = c14549x;
        this.f103974b = i10;
    }
}
