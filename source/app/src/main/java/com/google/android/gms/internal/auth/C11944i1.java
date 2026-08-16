package com.google.android.gms.internal.auth;

import java.nio.charset.Charset;

public class C11944i1 extends AbstractC11940h1 {

    public final byte[] f61771f;

    public C11944i1(byte[] bArr) {
        bArr.getClass();
        this.f61771f = bArr;
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC11956l1) || l() != ((AbstractC11956l1) obj).l()) {
            return false;
        }
        if (l() == 0) {
            return true;
        }
        if (!(obj instanceof C11944i1)) {
            return obj.equals(this);
        }
        C11944i1 c11944i1 = (C11944i1) obj;
        int u10 = u();
        int u11 = c11944i1.u();
        if (u10 != 0 && u11 != 0 && u10 != u11) {
            return false;
        }
        int l10 = l();
        if (l10 > c11944i1.l()) {
            throw new IllegalArgumentException("Length too large: " + l10 + l());
        }
        if (l10 > c11944i1.l()) {
            throw new IllegalArgumentException("Ran off end of other: 0, " + l10 + ", " + c11944i1.l());
        }
        byte[] bArr = this.f61771f;
        byte[] bArr2 = c11944i1.f61771f;
        c11944i1.x();
        int i10 = 0;
        int i11 = 0;
        while (i10 < l10) {
            if (bArr[i10] != bArr2[i11]) {
                return false;
            }
            i10++;
            i11++;
        }
        return true;
    }

    @Override
    public byte j(int i10) {
        return this.f61771f[i10];
    }

    @Override
    public byte k(int i10) {
        return this.f61771f[i10];
    }

    @Override
    public int l() {
        return this.f61771f.length;
    }

    @Override
    public final int m(int i10, int i11, int i12) {
        return H1.b(i10, this.f61771f, 0, i12);
    }

    @Override
    public final AbstractC11956l1 n(int i10, int i11) {
        int s10 = AbstractC11956l1.s(0, i11, l());
        return s10 == 0 ? AbstractC11956l1.f61792c : new C11928e1(this.f61771f, 0, s10);
    }

    @Override
    public final String o(Charset charset) {
        return new String(this.f61771f, 0, l(), charset);
    }

    @Override
    public final boolean r() {
        return U2.c(this.f61771f, 0, l());
    }

    public int x() {
        return 0;
    }
}
