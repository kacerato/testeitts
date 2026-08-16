package Rk;

import Bi.S;
import Xi.C3335c;
import hi.C13486b;
import hi.h0;
import java.io.IOException;
import org.bouncycastle.operator.OperatorCreationException;

public class t extends g {

    public Qk.o f22864b;

    public t(Qk.o oVar) {
        this.f22864b = oVar;
    }

    @Override
    public S e(C13486b c13486b) throws OperatorCreationException {
        return new bj.w(this.f22845a.a(this.f22864b.c(c13486b)));
    }

    @Override
    public C3335c f(h0 h0Var) throws IOException {
        return org.bouncycastle.crypto.util.q.b(h0Var);
    }
}
