package org.bouncycastle.cms;

import fi.C13228d;
import java.math.BigInteger;
import xi.C16118d;

public class C14675q0 extends F0 {

    public C16118d f101006g;

    public C14675q0(C13228d c13228d, BigInteger bigInteger) {
        this(c13228d, bigInteger, null);
    }

    @Override
    public boolean Z2(Object obj) {
        return obj instanceof s0 ? ((s0) obj).i().equals(this) : this.f101006g.Z2(obj);
    }

    public C13228d b() {
        return this.f101006g.b();
    }

    public BigInteger c() {
        return this.f101006g.c();
    }

    @Override
    public Object clone() {
        return new C14675q0(this.f101006g);
    }

    public byte[] d() {
        return this.f101006g.d();
    }

    public boolean equals(Object obj) {
        if (obj instanceof C14675q0) {
            return this.f101006g.equals(((C14675q0) obj).f101006g);
        }
        return false;
    }

    public int hashCode() {
        return this.f101006g.hashCode();
    }

    public C14675q0(C13228d c13228d, BigInteger bigInteger, byte[] bArr) {
        this(new C16118d(c13228d, bigInteger, bArr));
    }

    public C14675q0(C16118d c16118d) {
        super(0);
        this.f101006g = c16118d;
    }

    public C14675q0(byte[] bArr) {
        this(null, null, bArr);
    }
}
