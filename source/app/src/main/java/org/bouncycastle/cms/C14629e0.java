package org.bouncycastle.cms;

public class C14629e0 extends F0 {

    public byte[] f100748g;

    public C14629e0(byte[] bArr) {
        super(1);
        this.f100748g = bArr;
    }

    @Override
    public boolean Z2(Object obj) {
        if (obj instanceof byte[]) {
            return org.bouncycastle.util.a.g(this.f100748g, (byte[]) obj);
        }
        if (obj instanceof C14633g0) {
            return ((C14633g0) obj).i().equals(this);
        }
        return false;
    }

    public byte[] b() {
        return org.bouncycastle.util.a.p(this.f100748g);
    }

    @Override
    public Object clone() {
        return new C14629e0(this.f100748g);
    }

    public boolean equals(Object obj) {
        if (obj instanceof C14629e0) {
            return org.bouncycastle.util.a.g(this.f100748g, ((C14629e0) obj).f100748g);
        }
        return false;
    }

    public int hashCode() {
        return org.bouncycastle.util.a.t0(this.f100748g);
    }
}
