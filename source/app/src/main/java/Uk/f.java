package Uk;

import Qk.A;
import Qk.G;
import Xh.r;
import Xh.t;
import dk.C12948d;
import dk.InterfaceC12950f;
import hi.C13486b;
import java.security.Provider;
import org.bouncycastle.operator.OperatorCreationException;

public class f {

    public InterfaceC12950f f26251a = new C12948d();

    public class a implements G {
        public a() {
        }

        @Override
        public A a(C13486b c13486b, char[] cArr) throws OperatorCreationException {
            if (t.f29116k1.A(c13486b.u())) {
                return new e(r.u(c13486b.x())).g(f.this.f26251a).f(cArr);
            }
            throw new OperatorCreationException("protection algorithm not PB mac based");
        }
    }

    public G b() {
        return new a();
    }

    public f c(String str) {
        this.f26251a = new dk.i(str);
        return this;
    }

    public f d(Provider provider) {
        this.f26251a = new dk.k(provider);
        return this;
    }
}
