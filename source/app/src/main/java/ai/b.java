package Ai;

import Qk.J;
import Qk.q;
import Xi.C3335c;
import li.C14146h;
import org.bouncycastle.cms.M;
import org.bouncycastle.cms.P0;
import org.bouncycastle.operator.OperatorCreationException;

public class b {

    public Rk.n f798a;

    public q f799b;

    public M f800c;

    public J f801d;

    public b(M m10, J j10, Qk.o oVar, q qVar) {
        this.f800c = m10;
        this.f801d = j10;
        this.f798a = new Rk.n(oVar);
        this.f799b = qVar;
    }

    public P0 a(C3335c c3335c) throws OperatorCreationException {
        return new P0(this.f800c, this.f801d, this.f798a.b(c3335c), this.f799b);
    }

    public P0 b(C14146h c14146h) throws OperatorCreationException {
        return new P0(this.f800c, this.f801d, this.f798a.c(c14146h), this.f799b);
    }
}
