package org.bouncycastle.cms;

import fi.C13228d;
import java.math.BigInteger;
import xi.C16118d;

public class C14667m0 extends F0 {

    public C16118d f100995g;

    public C14667m0(C13228d c13228d, BigInteger bigInteger) {
        this(c13228d, bigInteger, null);
    }

    @Override
    public boolean Z2(Object obj) {
        return obj instanceof C14671o0 ? ((C14671o0) obj).i().equals(this) : this.f100995g.Z2(obj);
    }

    public C13228d b() {
        return this.f100995g.b();
    }

    public BigInteger c() {
        return this.f100995g.c();
    }

    @Override
    public Object clone() {
        return new C14667m0(this.f100995g);
    }

    public byte[] d() {
        return this.f100995g.d();
    }

    public boolean equals(Object obj) {
        if (obj instanceof C14667m0) {
            return this.f100995g.equals(((C14667m0) obj).f100995g);
        }
        return false;
    }

    public int hashCode() {
        return this.f100995g.hashCode();
    }

    public C14667m0(C13228d c13228d, BigInteger bigInteger, byte[] bArr) {
        this(new C16118d(c13228d, bigInteger, bArr));
    }

    public C14667m0(C16118d c16118d) {
        super(2);
        this.f100995g = c16118d;
    }

    public C14667m0(byte[] bArr) {
        this(null, null, bArr);
    }
}
