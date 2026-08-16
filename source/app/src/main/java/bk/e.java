package Bk;

import Fk.w0;
import java.math.BigInteger;
import oh.AbstractC14545v;
import oh.B;
import oh.C14539s;

public class e extends AbstractC14545v {

    public final BigInteger f1928b;

    public e(int i10) {
        this(BigInteger.valueOf(i10));
    }

    public static e u(Object obj) {
        if (obj instanceof w0) {
            return (e) obj;
        }
        if (obj != null) {
            return new e(C14539s.F(obj));
        }
        return null;
    }

    @Override
    public B r() {
        return new C14539s(this.f1928b);
    }

    public BigInteger v() {
        return this.f1928b;
    }

    public e(long j10) {
        this(BigInteger.valueOf(j10));
    }

    public e(BigInteger bigInteger) {
        this.f1928b = bigInteger;
    }

    public e(C14539s c14539s) {
        this.f1928b = c14539s.I();
    }
}
