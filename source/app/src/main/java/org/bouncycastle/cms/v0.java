package org.bouncycastle.cms;

import fi.C13228d;
import java.math.BigInteger;

public class v0 implements org.bouncycastle.util.r {

    public byte[] f101023b;

    public C13228d f101024c;

    public BigInteger f101025d;

    public v0(C13228d c13228d, BigInteger bigInteger) {
        c(c13228d, bigInteger);
    }

    private boolean a(Object obj, Object obj2) {
        return obj != null ? obj.equals(obj2) : obj2 == null;
    }

    @Override
    public boolean Z2(Object obj) {
        return false;
    }

    public C13228d b() {
        return this.f101024c;
    }

    public final void c(C13228d c13228d, BigInteger bigInteger) {
        this.f101024c = c13228d;
        this.f101025d = bigInteger;
    }

    @Override
    public Object clone() {
        return new v0(this.f101024c, this.f101025d, this.f101023b);
    }

    public final void d(byte[] bArr) {
        this.f101023b = bArr;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof v0)) {
            return false;
        }
        v0 v0Var = (v0) obj;
        return org.bouncycastle.util.a.g(this.f101023b, v0Var.f101023b) && a(this.f101025d, v0Var.f101025d) && a(this.f101024c, v0Var.f101024c);
    }

    public int hashCode() {
        int t02 = org.bouncycastle.util.a.t0(this.f101023b);
        BigInteger bigInteger = this.f101025d;
        if (bigInteger != null) {
            t02 ^= bigInteger.hashCode();
        }
        C13228d c13228d = this.f101024c;
        return c13228d != null ? t02 ^ c13228d.hashCode() : t02;
    }

    public v0(C13228d c13228d, BigInteger bigInteger, byte[] bArr) {
        c(c13228d, bigInteger);
        d(bArr);
    }

    public v0(byte[] bArr) {
        d(bArr);
    }
}
