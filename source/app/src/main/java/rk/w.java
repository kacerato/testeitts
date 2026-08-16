package Rk;

import Bi.Z;
import Qk.L;
import Xi.C3360o0;
import Xi.x0;
import hi.C13486b;
import java.security.SecureRandom;
import org.bouncycastle.operator.OperatorException;

public class w extends L {

    public SecureRandom f22869b;

    public Z f22870c;

    public C3360o0 f22871d;

    public w(C13486b c13486b, Z z10, C3360o0 c3360o0) {
        super(c13486b);
        this.f22870c = z10;
        this.f22871d = c3360o0;
    }

    @Override
    public byte[] b(Qk.r rVar) throws OperatorException {
        byte[] a10 = y.a(rVar);
        SecureRandom secureRandom = this.f22869b;
        if (secureRandom == null) {
            this.f22870c.a(true, this.f22871d);
        } else {
            this.f22870c.a(true, new x0(this.f22871d, secureRandom));
        }
        return this.f22870c.c(a10, 0, a10.length);
    }

    public w c(SecureRandom secureRandom) {
        this.f22869b = secureRandom;
        return this;
    }
}
