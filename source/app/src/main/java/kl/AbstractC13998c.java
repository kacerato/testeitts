package kl;

import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.util.Properties;

public abstract class AbstractC13998c {

    public int[] f95386a;

    public int[] f95387b;

    public int[] f95388c;

    public C13996a f95389d;

    public C13996a f95390e;

    public C13996a f95391f;

    public int[] f95392g;

    public int[] f95393h;

    public int[] f95394i;

    public int[] f95395j;

    public int[] f95396k;

    public C13996a f95397l;

    public C13996a f95398m;

    public C13996a f95399n;

    public C13996a f95400o;

    public C13996a f95401p;

    public static int[] g(Properties properties, String str, int i10) {
        byte[] c10 = em.h.c(i(properties.getProperty(str)));
        int[] iArr = new int[i10];
        for (int i11 = 0; i11 < c10.length / 4; i11++) {
            iArr[i11] = org.bouncycastle.util.p.r(c10, i11 * 4);
        }
        return iArr;
    }

    public static int[] h(DataInputStream dataInputStream) throws IOException {
        int readInt = dataInputStream.readInt();
        int[] iArr = new int[readInt];
        for (int i10 = 0; i10 != readInt; i10++) {
            iArr[i10] = dataInputStream.readInt();
        }
        return iArr;
    }

    public static byte[] i(String str) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        for (int i10 = 0; i10 != str.length(); i10++) {
            if (str.charAt(i10) != ',') {
                byteArrayOutputStream.write(str.charAt(i10));
            }
        }
        return byteArrayOutputStream.toByteArray();
    }

    public final C13997b a(C13996a c13996a, int i10) {
        C13997b c13997b = new C13997b(c13996a);
        c13997b.g(i10 * c13997b.e());
        return c13997b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x001b, code lost:
    
        if (r3.f95421d == 4) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public C13997b b(h hVar, int i10) {
        C13996a c13996a;
        int i11 = hVar.f95423f;
        if (i11 != 128) {
            if (i11 != 129) {
                if (i11 != 192) {
                    if (i11 != 255) {
                        if (i11 != 256) {
                            return null;
                        }
                    }
                }
                return a(c13996a, i10);
            }
            c13996a = this.f95399n;
            return a(c13996a, i10);
        }
        c13996a = this.f95390e;
        return a(c13996a, i10);
    }

    public C13997b c(h hVar) {
        int i10 = hVar.f95423f;
        if (i10 == 129 || ((i10 == 192 && hVar.f95421d == 4) || i10 == 255)) {
            return a(this.f95400o, 0);
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x001b, code lost:
    
        if (r3.f95421d == 4) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public C13997b d(h hVar, int i10) {
        C13996a c13996a;
        int i11 = hVar.f95423f;
        if (i11 != 128) {
            if (i11 != 129) {
                if (i11 != 192) {
                    if (i11 != 255) {
                        if (i11 != 256) {
                            return null;
                        }
                    }
                }
                return a(c13996a, i10);
            }
            c13996a = this.f95397l;
            return a(c13996a, i10);
        }
        c13996a = this.f95389d;
        return a(c13996a, i10);
    }

    public C13997b e(h hVar, int i10) {
        int i11 = hVar.f95423f;
        if (i11 == 129 || ((i11 == 192 && hVar.f95421d == 4) || i11 == 255)) {
            return a(this.f95398m, i10);
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x001b, code lost:
    
        if (r3.f95421d == 4) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public C13997b f(h hVar, int i10) {
        C13996a c13996a;
        int i11 = hVar.f95423f;
        if (i11 != 128) {
            if (i11 != 129) {
                if (i11 != 192) {
                    if (i11 != 255) {
                        if (i11 != 256) {
                            return null;
                        }
                    }
                }
                return a(c13996a, i10);
            }
            c13996a = this.f95401p;
            return a(c13996a, i10);
        }
        c13996a = this.f95391f;
        return a(c13996a, i10);
    }
}
