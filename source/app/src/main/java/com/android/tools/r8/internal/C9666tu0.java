package com.android.tools.r8.internal;

public final class C9666tu0 {

    public final byte[] f52727a;

    public final int f52728b;

    public C9666tu0(int i10, byte[] bArr) {
        this.f52727a = bArr;
        this.f52728b = i10;
    }

    public final String toString() {
        byte b10 = this.f52727a[this.f52728b];
        StringBuilder sb2 = new StringBuilder(b10 * 2);
        for (int i10 = 0; i10 < b10; i10++) {
            byte[] bArr = this.f52727a;
            int i11 = (i10 * 2) + this.f52728b;
            byte b11 = bArr[i11 + 1];
            if (b11 == 0) {
                sb2.append('[');
            } else if (b11 == 1) {
                sb2.append('.');
            } else if (b11 == 2) {
                sb2.append('*');
            } else {
                if (b11 != 3) {
                    throw new AssertionError();
                }
                sb2.append((int) bArr[i11 + 2]);
                sb2.append(';');
            }
        }
        return sb2.toString();
    }
}
