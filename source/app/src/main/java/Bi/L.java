package Bi;

public abstract class L {

    public byte[] f1848a;

    public byte[] f1849b;

    public int f1850c;

    public static byte[] a(char[] cArr) {
        if (cArr == null || cArr.length <= 0) {
            return new byte[0];
        }
        byte[] bArr = new byte[(cArr.length + 1) * 2];
        for (int i10 = 0; i10 != cArr.length; i10++) {
            int i11 = i10 * 2;
            char c10 = cArr[i10];
            bArr[i11] = (byte) (c10 >>> '\b');
            bArr[i11 + 1] = (byte) c10;
        }
        return bArr;
    }

    public static byte[] b(char[] cArr) {
        if (cArr == null) {
            return new byte[0];
        }
        int length = cArr.length;
        byte[] bArr = new byte[length];
        for (int i10 = 0; i10 != length; i10++) {
            bArr[i10] = (byte) cArr[i10];
        }
        return bArr;
    }

    public static byte[] c(char[] cArr) {
        return cArr != null ? org.bouncycastle.util.w.o(cArr) : new byte[0];
    }

    public abstract InterfaceC2379k d(int i10);

    public abstract InterfaceC2379k e(int i10);

    public abstract InterfaceC2379k f(int i10, int i11);

    public int g() {
        return this.f1850c;
    }

    public byte[] h() {
        return this.f1848a;
    }

    public byte[] i() {
        return this.f1849b;
    }

    public void j(byte[] bArr, byte[] bArr2, int i10) {
        this.f1848a = bArr;
        this.f1849b = bArr2;
        this.f1850c = i10;
    }
}
