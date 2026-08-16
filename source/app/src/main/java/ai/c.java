package Ai;

import Qk.J;
import Qk.q;
import Xi.C3335c;
import li.C14146h;
import org.bouncycastle.cms.M;
import org.bouncycastle.cms.P0;
import org.bouncycastle.operator.OperatorCreationException;

public class c {

    public Rk.o f802a = new Rk.o();

    public q f803b;

    public M f804c;

    public J f805d;

    public c(M m10, J j10, Qk.o oVar, q qVar) {
        this.f804c = m10;
        this.f805d = j10;
        this.f803b = qVar;
    }

    public P0 a(C3335c c3335c) throws OperatorCreationException {
        return new P0(this.f804c, this.f805d, this.f802a.b(c3335c), this.f803b);
    }

    public P0 b(C14146h c14146h) throws OperatorCreationException {
        return new P0(this.f804c, this.f805d, this.f802a.c(c14146h), this.f803b);
    }
}
