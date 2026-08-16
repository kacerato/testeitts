package Fk;

import java.math.BigInteger;
import oh.AbstractC14545v;
import oh.C14539s;

public abstract class x0 extends AbstractC14545v {

    public final BigInteger f7190b;

    public x0(int i10) {
        this(BigInteger.valueOf(i10));
    }

    @Override
    public oh.B r() {
        return new C14539s(this.f7190b);
    }

    public abstract void u();

    public BigInteger v() {
        return this.f7190b;
    }

    public x0(long j10) {
        this(BigInteger.valueOf(j10));
    }

    public x0(BigInteger bigInteger) {
        this.f7190b = bigInteger;
        u();
    }

    public x0(C14539s c14539s) {
        this(c14539s.I());
    }
}
