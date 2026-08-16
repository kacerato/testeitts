package ri;

import java.io.IOException;
import li.C14146h;

public class C15183b {

    public static final int f109035d = 0;

    public static final int f109036e = 1;

    public static final int f109037f = 2;

    public static final int f109038g = 3;

    public static final int f109039h = 0;

    public static final int f109040i = 1;

    public static final int f109041j = 2;

    public final String f109042a;

    public final byte[] f109043b;

    public final C14146h f109044c;

    public C15183b(String str, byte[] bArr) throws IOException {
        this(str, org.bouncycastle.util.a.X(bArr, 0, 3), new C14146h(org.bouncycastle.util.a.X(bArr, 3, bArr.length)));
    }

    public static boolean e(byte[] bArr) {
        byte b10 = bArr[0];
        return (b10 >= 0 || b10 <= 3) && bArr[1] == 0 && bArr[2] == 0;
    }

    public C14146h a() {
        return this.f109044c;
    }

    public String b() {
        return this.f109042a;
    }

    public byte[] c() {
        return org.bouncycastle.util.a.p(this.f109043b);
    }

    public byte[] d() throws IOException {
        byte[] encoded = this.f109044c.getEncoded();
        byte[] bArr = this.f109043b;
        byte[] bArr2 = new byte[bArr.length + encoded.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        System.arraycopy(encoded, 0, bArr2, this.f109043b.length, encoded.length);
        return bArr2;
    }

    public C15183b(String str, byte[] bArr, C14146h c14146h) {
        this.f109043b = bArr;
        this.f109042a = str;
        this.f109044c = c14146h;
    }
}
