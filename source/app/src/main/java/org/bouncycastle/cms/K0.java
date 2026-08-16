package org.bouncycastle.cms;

import fi.C13228d;
import java.math.BigInteger;
import xi.C16118d;

public class K0 implements org.bouncycastle.util.r {

    public C16118d f100544b;

    public K0(C13228d c13228d, BigInteger bigInteger) {
        this(c13228d, bigInteger, null);
    }

    @Override
    public boolean Z2(Object obj) {
        return obj instanceof N0 ? ((N0) obj).l().equals(this) : this.f100544b.Z2(obj);
    }

    public C13228d a() {
        return this.f100544b.b();
    }

    public BigInteger b() {
        return this.f100544b.c();
    }

    public byte[] c() {
        return this.f100544b.d();
    }

    @Override
    public Object clone() {
        return new K0(this.f100544b);
    }

    public boolean equals(Object obj) {
        if (obj instanceof K0) {
            return this.f100544b.equals(((K0) obj).f100544b);
        }
        return false;
    }

    public int hashCode() {
        return this.f100544b.hashCode();
    }

    public K0(C13228d c13228d, BigInteger bigInteger, byte[] bArr) {
        this(new C16118d(c13228d, bigInteger, bArr));
    }

    public K0(C16118d c16118d) {
        this.f100544b = c16118d;
    }

    public K0(byte[] bArr) {
        this(null, null, bArr);
    }
}
