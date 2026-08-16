package Rk;

import Bi.InterfaceC2370b;
import Bi.InterfaceC2379k;
import Qk.AbstractC3011d;
import Xi.C3335c;
import Xi.x0;
import hi.C13486b;
import java.security.SecureRandom;
import oh.C14549x;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.operator.OperatorException;

public abstract class e extends AbstractC3011d {

    public C3335c f22836b;

    public SecureRandom f22837c;

    public e(C13486b c13486b, C3335c c3335c) {
        super(c13486b);
        this.f22836b = c3335c;
    }

    @Override
    public byte[] b(Qk.r rVar) throws OperatorException {
        InterfaceC2370b c10 = c(a().u());
        InterfaceC2379k interfaceC2379k = this.f22836b;
        SecureRandom secureRandom = this.f22837c;
        if (secureRandom != null) {
            interfaceC2379k = new x0(interfaceC2379k, secureRandom);
        }
        try {
            byte[] a10 = y.a(rVar);
            c10.a(true, interfaceC2379k);
            return c10.b(a10, 0, a10.length);
        } catch (InvalidCipherTextException e10) {
            throw new OperatorException("unable to encrypt contents key", e10);
        }
    }

    public abstract InterfaceC2370b c(C14549x c14549x);

    public e d(SecureRandom secureRandom) {
        this.f22837c = secureRandom;
        return this;
    }
}
