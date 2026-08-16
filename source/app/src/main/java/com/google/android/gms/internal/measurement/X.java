package com.google.android.gms.internal.measurement;

public final class X extends AbstractC12041d0 {

    public String f62163a;

    public byte f62164b;

    public int f62165c;

    public int f62166d;

    @Override
    public final AbstractC12041d0 a(boolean z10) {
        this.f62164b = (byte) 1;
        return this;
    }

    @Override
    public final AbstractC12059f0 b() {
        if (this.f62164b == 1 && this.f62163a != null && this.f62165c != 0 && this.f62166d != 0) {
            return new Y(this.f62163a, false, this.f62165c, null, null, this.f62166d, null);
        }
        StringBuilder sb2 = new StringBuilder();
        if (this.f62163a == null) {
            sb2.append(" fileOwner");
        }
        if (this.f62164b == 0) {
            sb2.append(" hasDifferentDmaOwner");
        }
        if (this.f62165c == 0) {
            sb2.append(" fileChecks");
        }
        if (this.f62166d == 0) {
            sb2.append(" filePurpose");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb2.toString()));
    }

    @Override
    public final AbstractC12041d0 c(int i10) {
        this.f62165c = i10;
        return this;
    }

    @Override
    public final AbstractC12041d0 d(int i10) {
        this.f62166d = 1;
        return this;
    }

    public final AbstractC12041d0 e(String str) {
        this.f62163a = "";
        return this;
    }
}
