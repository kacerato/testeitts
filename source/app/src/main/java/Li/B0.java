package Li;

import Bi.InterfaceC2374f;
import Bi.InterfaceC2379k;
import Xi.C3360o0;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;

public class B0 implements InterfaceC2374f {

    public static final int f13515f = 32;

    public static final int f13516g = 8;

    public static final int f13517h = -1640531527;

    public int[] f13518a = new int[4];

    public int[] f13519b = new int[32];

    public int[] f13520c = new int[32];

    public boolean f13521d = false;

    public boolean f13522e;

    private int f(byte[] bArr, int i10) {
        int i11 = ((bArr[i10 + 1] & 255) << 16) | (bArr[i10] << 24);
        return (bArr[i10 + 3] & 255) | i11 | ((bArr[i10 + 2] & 255) << 8);
    }

    private int i(byte[] bArr, int i10, byte[] bArr2, int i11) {
        int f10 = f(bArr, i10);
        int f11 = f(bArr, i10 + 4);
        for (int i12 = 31; i12 >= 0; i12--) {
            f11 -= (((f10 << 4) ^ (f10 >>> 5)) + f10) ^ this.f13520c[i12];
            f10 -= (((f11 << 4) ^ (f11 >>> 5)) + f11) ^ this.f13519b[i12];
        }
        l(f10, bArr2, i11);
        l(f11, bArr2, i11 + 4);
        return 8;
    }

    private int j(byte[] bArr, int i10, byte[] bArr2, int i11) {
        int f10 = f(bArr, i10);
        int f11 = f(bArr, i10 + 4);
        for (int i12 = 0; i12 < 32; i12++) {
            f10 += (((f11 << 4) ^ (f11 >>> 5)) + f11) ^ this.f13519b[i12];
            f11 += (((f10 << 4) ^ (f10 >>> 5)) + f10) ^ this.f13520c[i12];
        }
        l(f10, bArr2, i11);
        l(f11, bArr2, i11 + 4);
        return 8;
    }

    private void k(byte[] bArr) {
        if (bArr.length != 16) {
            throw new IllegalArgumentException("Key size must be 128 bits.");
        }
        int i10 = 0;
        int i11 = 0;
        while (i10 < 4) {
            this.f13518a[i10] = f(bArr, i11);
            i10++;
            i11 += 4;
        }
        int i12 = 0;
        for (int i13 = 0; i13 < 32; i13++) {
            int[] iArr = this.f13519b;
            int[] iArr2 = this.f13518a;
            iArr[i13] = iArr2[i12 & 3] + i12;
            i12 -= 1640531527;
            this.f13520c[i13] = iArr2[(i12 >>> 11) & 3] + i12;
        }
    }

    private void l(int i10, byte[] bArr, int i11) {
        bArr[i11] = (byte) (i10 >>> 24);
        bArr[i11 + 1] = (byte) (i10 >>> 16);
        bArr[i11 + 2] = (byte) (i10 >>> 8);
        bArr[i11 + 3] = (byte) i10;
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        if (!(interfaceC2379k instanceof C3360o0)) {
            throw new IllegalArgumentException("invalid parameter passed to TEA init - " + interfaceC2379k.getClass().getName());
        }
        this.f13522e = z10;
        this.f13521d = true;
        k(((C3360o0) interfaceC2379k).b());
        Bi.r.a(new Hi.c(b(), 128, interfaceC2379k, x0.a(z10)));
    }

    @Override
    public String b() {
        return "XTEA";
    }

    @Override
    public int c() {
        return 8;
    }

    @Override
    public int g(byte[] bArr, int i10, byte[] bArr2, int i11) {
        if (!this.f13521d) {
            throw new IllegalStateException(b() + " not initialised");
        }
        if (i10 + 8 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (i11 + 8 <= bArr2.length) {
            return this.f13522e ? j(bArr, i10, bArr2, i11) : i(bArr, i10, bArr2, i11);
        }
        throw new OutputLengthException("output buffer too short");
    }

    @Override
    public void reset() {
    }
}
