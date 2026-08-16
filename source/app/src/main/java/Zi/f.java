package Zi;

public class f {
    public static byte[] a(d dVar, int i10) {
        byte[] bArr = new byte[i10];
        if (i10 * 8 <= dVar.d()) {
            System.arraycopy(dVar.b(), 0, bArr, 0, i10);
        } else {
            int d10 = dVar.d() / 8;
            for (int i11 = 0; i11 < i10; i11 += d10) {
                byte[] b10 = dVar.b();
                int i12 = i10 - i11;
                if (b10.length <= i12) {
                    System.arraycopy(b10, 0, bArr, i11, b10.length);
                } else {
                    System.arraycopy(b10, 0, bArr, i11, i12);
                }
            }
        }
        return bArr;
    }
}
