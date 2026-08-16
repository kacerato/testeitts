package com.google.common.primitives;

import java.math.BigInteger;
import javax.annotation.CheckForNull;
import w2.H;

@f
@v2.b(emulated = true)
public final class w extends Number implements Comparable<w> {

    public static final w f67087c = e(0);

    public static final w f67088d = e(1);

    public static final w f67089e = e(-1);

    public final int f67090b;

    public w(int i10) {
        this.f67090b = i10;
    }

    public static w e(int i10) {
        return new w(i10);
    }

    public static w m(long j10) {
        H.p((4294967295L & j10) == j10, "value (%s) is outside the range for an unsigned integer value", j10);
        return e((int) j10);
    }

    public static w o(String str) {
        return q(str, 10);
    }

    public static w q(String str, int i10) {
        return e(x.k(str, i10));
    }

    public static w r(BigInteger bigInteger) {
        H.E(bigInteger);
        H.u(bigInteger.signum() >= 0 && bigInteger.bitLength() <= 32, "value (%s) is outside the range for an unsigned integer value", bigInteger);
        return e(bigInteger.intValue());
    }

    public BigInteger a() {
        return BigInteger.valueOf(longValue());
    }

    @Override
    public int compareTo(w wVar) {
        H.E(wVar);
        return x.b(this.f67090b, wVar.f67090b);
    }

    public w c(w wVar) {
        return e(x.d(this.f67090b, ((w) H.E(wVar)).f67090b));
    }

    @Override
    public double doubleValue() {
        return longValue();
    }

    public boolean equals(@CheckForNull Object obj) {
        return (obj instanceof w) && this.f67090b == ((w) obj).f67090b;
    }

    @Override
    public float floatValue() {
        return (float) longValue();
    }

    public w g(w wVar) {
        return e(this.f67090b - ((w) H.E(wVar)).f67090b);
    }

    public w h(w wVar) {
        return e(x.l(this.f67090b, ((w) H.E(wVar)).f67090b));
    }

    public int hashCode() {
        return this.f67090b;
    }

    public w i(w wVar) {
        return e(this.f67090b + ((w) H.E(wVar)).f67090b);
    }

    @Override
    public int intValue() {
        return this.f67090b;
    }

    @v2.c
    public w j(w wVar) {
        return e(this.f67090b * ((w) H.E(wVar)).f67090b);
    }

    public String k(int i10) {
        return x.t(this.f67090b, i10);
    }

    @Override
    public long longValue() {
        return x.r(this.f67090b);
    }

    public String toString() {
        return k(10);
    }
}
