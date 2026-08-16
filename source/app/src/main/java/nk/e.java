package nk;

import java.math.BigInteger;
import jk.AbstractC13875e;
import jk.j;
import jk.t;

public class e implements d {

    public final f f98279a;

    public final j f98280b;

    public e(AbstractC13875e abstractC13875e, f fVar) {
        this.f98279a = fVar;
        this.f98280b = new t(abstractC13875e.o(fVar.a()));
    }

    @Override
    public BigInteger[] a(BigInteger bigInteger) {
        return c.b(this.f98279a.c(), bigInteger);
    }

    @Override
    public boolean b() {
        return true;
    }

    @Override
    public j c() {
        return this.f98280b;
    }
}
