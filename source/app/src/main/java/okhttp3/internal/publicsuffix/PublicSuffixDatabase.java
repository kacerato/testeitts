package okhttp3.internal.publicsuffix;

import Gg.c;
import Pg.f;
import Tg.e;
import Tg.l;
import Tg.p;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.IDN;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;

public final class PublicSuffixDatabase {

    public static final String f99367e = "publicsuffixes.gz";

    public static final byte f99371i = 33;

    public final AtomicBoolean f99373a = new AtomicBoolean(false);

    public final CountDownLatch f99374b = new CountDownLatch(1);

    public byte[] f99375c;

    public byte[] f99376d;

    public static final byte[] f99368f = {42};

    public static final String[] f99369g = new String[0];

    public static final String[] f99370h = {"*"};

    public static final PublicSuffixDatabase f99372j = new PublicSuffixDatabase();

    public static String a(byte[] bArr, byte[][] bArr2, int i10) {
        int i11;
        boolean z10;
        int i12;
        int i13;
        int length = bArr.length;
        int i14 = 0;
        while (i14 < length) {
            int i15 = (i14 + length) / 2;
            while (i15 > -1 && bArr[i15] != 10) {
                i15--;
            }
            int i16 = i15 + 1;
            int i17 = 1;
            while (true) {
                i11 = i16 + i17;
                if (bArr[i11] == 10) {
                    break;
                }
                i17++;
            }
            int i18 = i11 - i16;
            int i19 = i10;
            boolean z11 = false;
            int i20 = 0;
            int i21 = 0;
            while (true) {
                if (z11) {
                    i12 = 46;
                    z10 = false;
                } else {
                    z10 = z11;
                    i12 = bArr2[i19][i20] & 255;
                }
                i13 = i12 - (bArr[i16 + i21] & 255);
                if (i13 == 0) {
                    i21++;
                    i20++;
                    if (i21 == i18) {
                        break;
                    }
                    if (bArr2[i19].length != i20) {
                        z11 = z10;
                    } else {
                        if (i19 == bArr2.length - 1) {
                            break;
                        }
                        i19++;
                        i20 = -1;
                        z11 = true;
                    }
                } else {
                    break;
                }
            }
            if (i13 >= 0) {
                if (i13 <= 0) {
                    int i22 = i18 - i21;
                    int length2 = bArr2[i19].length - i20;
                    while (true) {
                        i19++;
                        if (i19 >= bArr2.length) {
                            break;
                        }
                        length2 += bArr2[i19].length;
                    }
                    if (length2 >= i22) {
                        if (length2 <= i22) {
                            return new String(bArr, i16, i18, c.f7807j);
                        }
                    }
                }
                i14 = i11 + 1;
            }
            length = i15;
        }
        return null;
    }

    public static PublicSuffixDatabase c() {
        return f99372j;
    }

    public final String[] b(String[] strArr) {
        String str;
        String str2;
        String str3;
        int i10 = 0;
        if (this.f99373a.get() || !this.f99373a.compareAndSet(false, true)) {
            try {
                this.f99374b.await();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        } else {
            f();
        }
        synchronized (this) {
            if (this.f99375c == null) {
                throw new IllegalStateException("Unable to load publicsuffixes.gz resource from the classpath.");
            }
        }
        int length = strArr.length;
        byte[][] bArr = new byte[length];
        for (int i11 = 0; i11 < strArr.length; i11++) {
            bArr[i11] = strArr[i11].getBytes(c.f7807j);
        }
        int i12 = 0;
        while (true) {
            str = null;
            if (i12 >= length) {
                str2 = null;
                break;
            }
            str2 = a(this.f99375c, bArr, i12);
            if (str2 != null) {
                break;
            }
            i12++;
        }
        if (length > 1) {
            byte[][] bArr2 = (byte[][]) bArr.clone();
            for (int i13 = 0; i13 < bArr2.length - 1; i13++) {
                bArr2[i13] = f99368f;
                str3 = a(this.f99375c, bArr2, i13);
                if (str3 != null) {
                    break;
                }
            }
        }
        str3 = null;
        if (str3 != null) {
            while (true) {
                if (i10 >= length - 1) {
                    break;
                }
                String a10 = a(this.f99376d, bArr, i10);
                if (a10 != null) {
                    str = a10;
                    break;
                }
                i10++;
            }
        }
        if (str != null) {
            return ("!" + str).split("\\.");
        }
        if (str2 == null && str3 == null) {
            return f99370h;
        }
        String[] split = str2 != null ? str2.split("\\.") : f99369g;
        String[] split2 = str3 != null ? str3.split("\\.") : f99369g;
        return split.length > split2.length ? split : split2;
    }

    public String d(String str) {
        int length;
        int length2;
        if (str == null) {
            throw new NullPointerException("domain == null");
        }
        String[] split = IDN.toUnicode(str).split("\\.");
        String[] b10 = b(split);
        if (split.length == b10.length && b10[0].charAt(0) != '!') {
            return null;
        }
        if (b10[0].charAt(0) == '!') {
            length = split.length;
            length2 = b10.length;
        } else {
            length = split.length;
            length2 = b10.length + 1;
        }
        StringBuilder sb2 = new StringBuilder();
        String[] split2 = str.split("\\.");
        for (int i10 = length - length2; i10 < split2.length; i10++) {
            sb2.append(split2[i10]);
            sb2.append('.');
        }
        sb2.deleteCharAt(sb2.length() - 1);
        return sb2.toString();
    }

    public final void e() throws IOException {
        InputStream resourceAsStream = PublicSuffixDatabase.class.getResourceAsStream(f99367e);
        if (resourceAsStream == null) {
            return;
        }
        e d10 = p.d(new l(p.l(resourceAsStream)));
        try {
            byte[] bArr = new byte[d10.readInt()];
            d10.readFully(bArr);
            byte[] bArr2 = new byte[d10.readInt()];
            d10.readFully(bArr2);
            synchronized (this) {
                this.f99375c = bArr;
                this.f99376d = bArr2;
            }
            this.f99374b.countDown();
        } finally {
            c.g(d10);
        }
    }

    public final void f() {
        boolean z10 = false;
        while (true) {
            try {
                try {
                    e();
                    break;
                } catch (InterruptedIOException unused) {
                    Thread.interrupted();
                    z10 = true;
                } catch (IOException e10) {
                    f.k().r(5, "Failed to read public suffix list", e10);
                    if (z10) {
                        Thread.currentThread().interrupt();
                        return;
                    }
                    return;
                }
            } catch (Throwable th2) {
                if (z10) {
                    Thread.currentThread().interrupt();
                }
                throw th2;
            }
        }
        if (z10) {
            Thread.currentThread().interrupt();
        }
    }

    public void g(byte[] bArr, byte[] bArr2) {
        this.f99375c = bArr;
        this.f99376d = bArr2;
        this.f99373a.set(true);
        this.f99374b.countDown();
    }
}
