package j1;

import java.io.IOException;

public final class E extends G {

    public final char[] f92479h;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public E(String str, String str2) {
        super(r4, null);
        char[] cArr;
        D d10 = new D("base16()", "0123456789ABCDEF".toCharArray());
        this.f92479h = new char[512];
        cArr = d10.f92472b;
        C13790n.c(cArr.length == 16);
        for (int i10 = 0; i10 < 256; i10++) {
            this.f92479h[i10] = d10.a(i10 >>> 4);
            this.f92479h[i10 | 256] = d10.a(i10 & 15);
        }
    }

    @Override
    public final void a(Appendable appendable, byte[] bArr, int i10, int i11) throws IOException {
        C13790n.e(0, i11, bArr.length);
        for (int i12 = 0; i12 < i11; i12++) {
            int i13 = bArr[i12] & 255;
            appendable.append(this.f92479h[i13]);
            appendable.append(this.f92479h[i13 | 256]);
        }
    }
}
