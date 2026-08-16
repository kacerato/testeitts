package sh;

import java.math.BigInteger;
import oh.AbstractC14545v;
import oh.C14539s;

public class C15302a extends AbstractC14545v {

    public static final long f109502c = 4294967295L;

    public final long f109503b;

    public C15302a(long j10) {
        if (j10 < 0 || j10 > 4294967295L) {
            throw new IllegalArgumentException("id out of range");
        }
        this.f109503b = j10;
    }

    public static long u(BigInteger bigInteger) {
        if (bigInteger.bitLength() <= 32) {
            return bigInteger.longValue();
        }
        throw new IllegalArgumentException("id out of range");
    }

    public static C15302a w(Object obj) {
        if (obj instanceof C15302a) {
            return (C15302a) obj;
        }
        if (obj != null) {
            return new C15302a(C14539s.F(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new C14539s(this.f109503b);
    }

    public long v() {
        return this.f109503b;
    }

    public C15302a(C14539s c14539s) {
        this(u(c14539s.I()));
    }
}
