package dl;

public class C12955e {
    public int a(byte[] bArr, int i10) {
        return (f(bArr[i10 + 3]) << 24) | f(bArr[i10]) | (f(bArr[i10 + 1]) << 8) | (f(bArr[i10 + 2]) << 16);
    }

    public int[] b(byte[] bArr, int i10, int i11) {
        int[] iArr = new int[i11];
        for (int i12 = 0; i12 < i11; i12++) {
            iArr[i12] = a(bArr, (i12 * 4) + i10);
        }
        return iArr;
    }

    public long c(byte[] bArr, int i10) {
        return (g(bArr[i10 + 7]) << 56) | g(bArr[i10]) | (g(bArr[i10 + 1]) << 8) | (g(bArr[i10 + 2]) << 16) | (g(bArr[i10 + 3]) << 24) | (g(bArr[i10 + 4]) << 32) | (g(bArr[i10 + 5]) << 40) | (g(bArr[i10 + 6]) << 48);
    }

    public byte[] d(int i10) {
        return new byte[]{(byte) i10, (byte) (i10 >>> 8), (byte) (i10 >>> 16), (byte) (i10 >>> 24)};
    }

    public byte[] e(long j10) {
        return new byte[]{(byte) j10, (byte) (j10 >>> 8), (byte) (j10 >>> 16), (byte) (j10 >>> 24), (byte) (j10 >>> 32), (byte) (j10 >>> 40), (byte) (j10 >>> 48), (byte) (j10 >>> 56)};
    }

    public final int f(byte b10) {
        return b10 & 255;
    }

    public final long g(byte b10) {
        return b10 & 255;
    }
}
