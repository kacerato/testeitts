package Rk;

import Bi.S;
import hi.C13486b;
import org.bouncycastle.operator.OperatorCreationException;

public class p extends f {
    public p(C13486b c13486b) {
        super(c13486b, new C13486b(Sh.d.f23341e));
    }

    @Override
    public S c(C13486b c13486b, C13486b c13486b2) throws OperatorCreationException {
        if (c13486b.u().A(Bh.a.f1842d)) {
            return new bj.j();
        }
        throw new IllegalStateException("unknown signature type");
    }
}
