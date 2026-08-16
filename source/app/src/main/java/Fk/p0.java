package Fk;

import java.math.BigInteger;
import java.util.Date;
import oh.C14539s;

public class p0 extends t0 {

    public static long f7163d = 1072915200000L;

    public p0(long j10) {
        super(j10);
    }

    public static p0 x(Object obj) {
        if (obj instanceof t0) {
            return new p0((t0) obj);
        }
        if (obj != null) {
            return new p0(C14539s.F(obj).I());
        }
        return null;
    }

    public static p0 y() {
        return z(System.currentTimeMillis());
    }

    public static p0 z(long j10) {
        return new p0((j10 - f7163d) / 1000);
    }

    public long A() {
        return (v().longValue() * 1000) + f7163d;
    }

    public String toString() {
        return new Date(A()).toString();
    }

    public p0(t0 t0Var) {
        this(t0Var.v());
    }

    public p0(BigInteger bigInteger) {
        super(bigInteger);
    }
}
