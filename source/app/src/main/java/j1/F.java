package j1;

import java.io.IOException;
import javax.annotation.CheckForNull;

public final class F extends G {
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public F(String str, String str2, @CheckForNull Character ch2) {
        super(r0, ch2);
        char[] cArr;
        D d10 = new D(str, str2.toCharArray());
        cArr = d10.f92472b;
        C13790n.c(cArr.length == 64);
    }

    @Override
    public final void a(Appendable appendable, byte[] bArr, int i10, int i11) throws IOException {
        int i12 = 0;
        C13790n.e(0, i11, bArr.length);
        for (int i13 = i11; i13 >= 3; i13 -= 3) {
            int i14 = bArr[i12] & 255;
            int i15 = ((bArr[i12 + 1] & 255) << 8) | (i14 << 16) | (bArr[i12 + 2] & 255);
            appendable.append(this.f92480f.a(i15 >>> 18));
            appendable.append(this.f92480f.a((i15 >>> 12) & 63));
            appendable.append(this.f92480f.a((i15 >>> 6) & 63));
            appendable.append(this.f92480f.a(i15 & 63));
            i12 += 3;
        }
        if (i12 < i11) {
            e(appendable, bArr, i12, i11 - i12);
        }
    }
}
