package Ai;

import Qk.J;
import Qk.q;
import Rk.t;
import Xi.C3335c;
import li.C14146h;
import org.bouncycastle.cms.M;
import org.bouncycastle.cms.P0;
import org.bouncycastle.operator.OperatorCreationException;

public class n {

    public t f819a;

    public q f820b;

    public M f821c;

    public J f822d;

    public n(M m10, J j10, Qk.o oVar, q qVar) {
        this.f821c = m10;
        this.f822d = j10;
        this.f819a = new t(oVar);
        this.f820b = qVar;
    }

    public P0 a(C3335c c3335c) throws OperatorCreationException {
        return new P0(this.f821c, this.f822d, this.f819a.b(c3335c), this.f820b);
    }

    public P0 b(C14146h c14146h) throws OperatorCreationException {
        return new P0(this.f821c, this.f822d, this.f819a.c(c14146h), this.f820b);
    }
}
