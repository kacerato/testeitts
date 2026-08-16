package com.google.android.gms.internal.measurement;

import java.io.IOException;

public class R4 extends Q4 {

    public final byte[] f62107d;

    public R4(byte[] bArr) {
        super(null);
        bArr.getClass();
        this.f62107d = bArr;
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof S4) || l() != ((S4) obj).l()) {
            return false;
        }
        if (l() == 0) {
            return true;
        }
        if (!(obj instanceof R4)) {
            return obj.equals(this);
        }
        R4 r42 = (R4) obj;
        int r10 = r();
        int r11 = r42.r();
        if (r10 != 0 && r11 != 0 && r10 != r11) {
            return false;
        }
        int l10 = l();
        if (l10 > r42.l()) {
            int l11 = l();
            StringBuilder sb2 = new StringBuilder(String.valueOf(l10).length() + 18 + String.valueOf(l11).length());
            sb2.append("Length too large: ");
            sb2.append(l10);
            sb2.append(l11);
            throw new IllegalArgumentException(sb2.toString());
        }
        if (l10 > r42.l()) {
            int l12 = r42.l();
            StringBuilder sb3 = new StringBuilder(String.valueOf(l10).length() + 27 + String.valueOf(l12).length());
            sb3.append("Ran off end of other: 0, ");
            sb3.append(l10);
            sb3.append(", ");
            sb3.append(l12);
            throw new IllegalArgumentException(sb3.toString());
        }
        byte[] bArr = this.f62107d;
        byte[] bArr2 = r42.f62107d;
        r42.u();
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
        return this.f62107d[i10];
    }

    @Override
    public byte k(int i10) {
        return this.f62107d[i10];
    }

    @Override
    public int l() {
        return this.f62107d.length;
    }

    @Override
    public final S4 m(int i10, int i11) {
        int s10 = S4.s(0, i11, l());
        return s10 == 0 ? S4.f62112c : new N4(this.f62107d, 0, s10);
    }

    @Override
    public final void n(J4 j42) throws IOException {
        ((V4) j42).H(this.f62107d, 0, l());
    }

    @Override
    public final int o(int i10, int i11, int i12) {
        return A5.c(i10, this.f62107d, 0, i12);
    }

    public int u() {
        return 0;
    }
}
