package com.google.common.primitives;

import java.io.Serializable;
import java.math.BigInteger;
import javax.annotation.CheckForNull;
import w2.H;

@f
@v2.b(serializable = true)
public final class y extends Number implements Comparable<y>, Serializable {

    public static final long f67092c = Long.MAX_VALUE;

    public static final y f67093d = new y(0);

    public static final y f67094e = new y(1);

    public static final y f67095f = new y(-1);

    public final long f67096b;

    public y(long j10) {
        this.f67096b = j10;
    }

    public static y d(long j10) {
        return new y(j10);
    }

    @I2.a
    public static y k(long j10) {
        H.p(j10 >= 0, "value (%s) is outside the range for an unsigned long value", j10);
        return d(j10);
    }

    @I2.a
    public static y m(String str) {
        return o(str, 10);
    }

    @I2.a
    public static y o(String str, int i10) {
        return d(z.j(str, i10));
    }

    @I2.a
    public static y q(BigInteger bigInteger) {
        H.E(bigInteger);
        H.u(bigInteger.signum() >= 0 && bigInteger.bitLength() <= 64, "value (%s) is outside the range for an unsigned long value", bigInteger);
        return d(bigInteger.longValue());
    }

    public BigInteger a() {
        BigInteger valueOf = BigInteger.valueOf(this.f67096b & Long.MAX_VALUE);
        return this.f67096b < 0 ? valueOf.setBit(63) : valueOf;
    }

    @Override
    public int compareTo(y yVar) {
        H.E(yVar);
        return z.a(this.f67096b, yVar.f67096b);
    }

    public y c(y yVar) {
        return d(z.c(this.f67096b, ((y) H.E(yVar)).f67096b));
    }

    @Override
    public double doubleValue() {
        long j10 = this.f67096b;
        if (j10 >= 0) {
            return j10;
        }
        return ((j10 & 1) | (j10 >>> 1)) * 2.0d;
    }

    public y e(y yVar) {
        return d(this.f67096b - ((y) H.E(yVar)).f67096b);
    }

    public boolean equals(@CheckForNull Object obj) {
        return (obj instanceof y) && this.f67096b == ((y) obj).f67096b;
    }

    @Override
    public float floatValue() {
        long j10 = this.f67096b;
        if (j10 >= 0) {
            return (float) j10;
        }
        return ((float) ((j10 & 1) | (j10 >>> 1))) * 2.0f;
    }

    public y g(y yVar) {
        return d(z.k(this.f67096b, ((y) H.E(yVar)).f67096b));
    }

    public y h(y yVar) {
        return d(this.f67096b + ((y) H.E(yVar)).f67096b);
    }

    public int hashCode() {
        return n.k(this.f67096b);
    }

    public y i(y yVar) {
        return d(this.f67096b * ((y) H.E(yVar)).f67096b);
    }

    @Override
    public int intValue() {
        return (int) this.f67096b;
    }

    public String j(int i10) {
        return z.q(this.f67096b, i10);
    }

    @Override
    public long longValue() {
        return this.f67096b;
    }

    public String toString() {
        return z.p(this.f67096b);
    }
}
