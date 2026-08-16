package Fk;

import java.math.BigInteger;
import oh.C14539s;

public class q0 extends v0 {

    public static long f7168d = p0.f7163d * 1000;

    public q0(long j10) {
        this(BigInteger.valueOf(j10));
    }

    public static q0 x(Object obj) {
        if (obj instanceof v0) {
            return new q0((v0) obj);
        }
        if (obj != null) {
            return new q0(C14539s.F(obj).I());
        }
        return null;
    }

    public static q0 y() {
        return new q0((System.currentTimeMillis() * 1000) - f7168d);
    }

    public static q0 z(long j10) {
        return new q0((j10 * 1000) - f7168d);
    }

    public long A() {
        return (org.bouncycastle.util.b.m(v()) + f7168d) / 1000;
    }

    public q0(v0 v0Var) {
        this(v0Var.v());
    }

    public q0(BigInteger bigInteger) {
        super(bigInteger);
    }
}
