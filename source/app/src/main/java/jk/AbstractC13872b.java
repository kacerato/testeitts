package jk;

import java.math.BigInteger;

public abstract class AbstractC13872b implements h {
    @Override
    public i a(i iVar, BigInteger bigInteger) {
        int signum = bigInteger.signum();
        if (signum == 0 || iVar.v()) {
            return iVar.i().x();
        }
        i c10 = c(iVar, bigInteger.abs());
        if (signum <= 0) {
            c10 = c10.A();
        }
        return b(c10);
    }

    public i b(i iVar) {
        return C13873c.b(iVar);
    }

    public abstract i c(i iVar, BigInteger bigInteger);
}
