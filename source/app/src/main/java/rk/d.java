package Rk;

import Bi.InterfaceC2370b;
import Qk.AbstractC3010c;
import Xi.C3335c;
import hi.C13486b;
import oh.C14549x;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.operator.OperatorException;

public abstract class d extends AbstractC3010c {

    public C3335c f22835b;

    public d(C13486b c13486b, C3335c c3335c) {
        super(c13486b);
        this.f22835b = c3335c;
    }

    @Override
    public Qk.r b(C13486b c13486b, byte[] bArr) throws OperatorException {
        InterfaceC2370b c10 = c(a().u());
        c10.a(false, this.f22835b);
        try {
            byte[] b10 = c10.b(bArr, 0, bArr.length);
            return c13486b.u().A(Xh.t.f29123n1) ? new Qk.r(c13486b, b10) : new Qk.r(c13486b, b10);
        } catch (InvalidCipherTextException e10) {
            throw new OperatorException("unable to recover secret key: " + e10.getMessage(), e10);
        }
    }

    public abstract InterfaceC2370b c(C14549x c14549x);
}
