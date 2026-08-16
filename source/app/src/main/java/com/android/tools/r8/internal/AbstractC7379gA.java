package com.android.tools.r8.internal;

import ag.C3629k;

public abstract class AbstractC7379gA {

    public static final char[] f48204b = C3629k.f32105a.toCharArray();

    public final boolean equals(Object obj) {
        boolean z10;
        if (obj instanceof AbstractC7379gA) {
            C7212fA c7212fA = (C7212fA) this;
            byte[] bArr = c7212fA.f47889c;
            int length = bArr.length * 8;
            C7212fA c7212fA2 = (C7212fA) ((AbstractC7379gA) obj);
            byte[] bArr2 = c7212fA2.f47889c;
            if (length == bArr2.length * 8) {
                if (bArr.length == bArr2.length) {
                    int i10 = 0;
                    z10 = true;
                    while (true) {
                        byte[] bArr3 = c7212fA.f47889c;
                        if (i10 >= bArr3.length) {
                            break;
                        }
                        z10 &= bArr3[i10] == c7212fA2.f47889c[i10];
                        i10++;
                    }
                } else {
                    z10 = false;
                }
                if (z10) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        byte[] bArr = ((C7212fA) this).f47889c;
        if (bArr.length * 8 >= 32) {
            boolean z10 = bArr.length >= 4;
            int length = bArr.length;
            if (z10) {
                return ((bArr[3] & 255) << 24) | (bArr[0] & 255) | ((bArr[1] & 255) << 8) | ((bArr[2] & 255) << 16);
            }
            throw new IllegalStateException(AbstractC4885Aq0.a("HashCode#asInt() requires >= 4 bytes (it only has %s bytes).", Integer.valueOf(length)));
        }
        int i10 = bArr[0] & 255;
        for (int i11 = 1; i11 < bArr.length; i11++) {
            i10 |= (bArr[i11] & 255) << (i11 * 8);
        }
        return i10;
    }

    public final String toString() {
        byte[] bArr = ((C7212fA) this).f47889c;
        StringBuilder sb2 = new StringBuilder(bArr.length * 2);
        for (byte b10 : bArr) {
            char[] cArr = f48204b;
            sb2.append(cArr[(b10 >> 4) & 15]);
            sb2.append(cArr[b10 & 15]);
        }
        return sb2.toString();
    }
}
