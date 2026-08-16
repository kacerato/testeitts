package com.android.tools.r8.internal;

import java.util.Objects;

public class M5 extends N5 {

    public final J5 f42159b;

    public final Character f42160c;

    public M5(J5 j52, Character ch2) {
        boolean z10;
        j52.getClass();
        this.f42159b = j52;
        if (ch2 != null) {
            char charValue = ch2.charValue();
            byte[] bArr = j52.f41286g;
            if (charValue < bArr.length && bArr[charValue] != -1) {
                z10 = false;
                U60.a(z10, "Padding character %s was already in alphabet", ch2);
                this.f42160c = ch2;
            }
        }
        z10 = true;
        U60.a(z10, "Padding character %s was already in alphabet", ch2);
        this.f42160c = ch2;
    }

    @Override
    public void a(StringBuilder sb2, byte[] bArr, int i10) {
        int i11 = 0;
        U60.a(0, i10, bArr.length);
        while (i11 < i10) {
            a(sb2, bArr, i11, Math.min(this.f42159b.f41285f, i10 - i11));
            i11 += this.f42159b.f41285f;
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof M5) {
            M5 m52 = (M5) obj;
            if (this.f42159b.equals(m52.f42159b) && Objects.equals(this.f42160c, m52.f42160c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f42159b.hashCode() ^ Objects.hashCode(this.f42160c);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("BaseEncoding.");
        sb2.append((Object) this.f42159b);
        if (8 % this.f42159b.f41283d != 0) {
            if (this.f42160c == null) {
                sb2.append(".omitPadding()");
            } else {
                sb2.append(".withPadChar('");
                sb2.append((Object) this.f42160c);
                sb2.append("')");
            }
        }
        return sb2.toString();
    }

    public final void a(StringBuilder sb2, byte[] bArr, int i10, int i11) {
        U60.a(i10, i10 + i11, bArr.length);
        if (i11 <= this.f42159b.f41285f) {
            int i12 = 0;
            long j10 = 0;
            for (int i13 = 0; i13 < i11; i13++) {
                j10 = (j10 | (bArr[i10 + i13] & 255)) << 8;
            }
            int i14 = ((i11 + 1) * 8) - this.f42159b.f41283d;
            while (i12 < i11 * 8) {
                J5 j52 = this.f42159b;
                sb2.append(j52.f41281b[((int) (j10 >>> (i14 - i12))) & j52.f41282c]);
                i12 += this.f42159b.f41283d;
            }
            if (this.f42160c != null) {
                while (i12 < this.f42159b.f41285f * 8) {
                    sb2.append(this.f42160c.charValue());
                    i12 += this.f42159b.f41283d;
                }
                return;
            }
            return;
        }
        throw new IllegalArgumentException();
    }

    public N5 a(J5 j52) {
        return new M5(j52, null);
    }
}
