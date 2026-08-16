package nk;

import java.math.BigInteger;
import jk.AbstractC13875e;
import jk.j;
import jk.s;

public class g implements d {

    public final h f98284a;

    public final j f98285b;

    public g(AbstractC13875e abstractC13875e, h hVar) {
        this.f98284a = hVar;
        this.f98285b = new s(abstractC13875e.o(hVar.a()));
    }

    @Override
    public BigInteger[] a(BigInteger bigInteger) {
        return c.b(this.f98284a.c(), bigInteger);
    }

    @Override
    public boolean b() {
        return true;
    }

    @Override
    public j c() {
        return this.f98285b;
    }
}
