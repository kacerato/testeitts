package vg;

import net.lingala.zip4j.exception.ZipException;
import wg.C15999b;
import wg.C16000c;
import wg.C16002e;
import xg.C16112a;

public class C15846c {

    public static final int f121606a = 0;

    public static byte[] a(byte[] bArr, char[] cArr, Cg.a aVar, boolean z10) throws ZipException {
        C16000c c16000c = new C16000c(new C16002e("HmacSHA1", "ISO-8859-1", bArr, 1000));
        int b10 = aVar.b();
        int c10 = aVar.c();
        int i10 = b10 + c10 + 2;
        byte[] f10 = c16000c.f(cArr, i10, z10);
        if (f10 == null || f10.length != i10) {
            throw new ZipException(String.format("Derived Key invalid for Key Length [%d] MAC Length [%d]", Integer.valueOf(b10), Integer.valueOf(c10)));
        }
        return f10;
    }

    public static byte[] b(byte[] bArr, Cg.a aVar) {
        byte[] bArr2 = new byte[2];
        System.arraycopy(bArr, aVar.b() + aVar.c(), bArr2, 0, 2);
        return bArr2;
    }

    public static C16112a c(byte[] bArr, Cg.a aVar) throws ZipException {
        int b10 = aVar.b();
        byte[] bArr2 = new byte[b10];
        System.arraycopy(bArr, 0, bArr2, 0, b10);
        return new C16112a(bArr2);
    }

    public static C15999b d(byte[] bArr, Cg.a aVar) {
        int c10 = aVar.c();
        byte[] bArr2 = new byte[c10];
        System.arraycopy(bArr, aVar.b(), bArr2, 0, c10);
        C15999b c15999b = new C15999b("HmacSHA1");
        c15999b.a(bArr2);
        return c15999b;
    }

    public static void e(byte[] bArr, int i10) {
        bArr[0] = (byte) i10;
        bArr[1] = (byte) (i10 >> 8);
        bArr[2] = (byte) (i10 >> 16);
        bArr[3] = (byte) (i10 >> 24);
        for (int i11 = 4; i11 <= 15; i11++) {
            bArr[i11] = 0;
        }
    }
}
