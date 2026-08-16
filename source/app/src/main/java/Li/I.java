package Li;

import Bi.InterfaceC2379k;
import Xi.C3360o0;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;

public class I implements Bi.Y {

    public byte[] f13619d;

    public byte[] f13620e;

    public boolean f13621f;

    public int[] f13616a = new int[512];

    public int[] f13617b = new int[512];

    public int f13618c = 0;

    public byte[] f13622g = new byte[4];

    public int f13623h = 0;

    public static int c(int i10, int i11) {
        return p(i10 - i11);
    }

    public static int e(int i10) {
        return (i10 >>> 3) ^ (r(i10, 7) ^ r(i10, 18));
    }

    public static int g(int i10) {
        return (i10 >>> 10) ^ (r(i10, 17) ^ r(i10, 19));
    }

    public static int o(int i10) {
        return i10 & 1023;
    }

    public static int p(int i10) {
        return i10 & 511;
    }

    private static int q(int i10, int i11) {
        return (i10 >>> (-i11)) | (i10 << i11);
    }

    private static int r(int i10, int i11) {
        return (i10 << (-i11)) | (i10 >>> i11);
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) throws IllegalArgumentException {
        if (!(interfaceC2379k instanceof Xi.w0)) {
            throw new IllegalArgumentException("no IV passed");
        }
        Xi.w0 w0Var = (Xi.w0) interfaceC2379k;
        this.f13620e = w0Var.a();
        InterfaceC2379k b10 = w0Var.b();
        if (!(b10 instanceof C3360o0)) {
            throw new IllegalArgumentException("Invalid parameter passed to HC128 init - " + interfaceC2379k.getClass().getName());
        }
        this.f13619d = ((C3360o0) b10).b();
        n();
        Bi.r.a(new Hi.c(b(), 128, interfaceC2379k, x0.a(z10)));
        this.f13621f = true;
    }

    @Override
    public String b() {
        return "HC-128";
    }

    @Override
    public int f(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws DataLengthException {
        if (!this.f13621f) {
            throw new IllegalStateException(b() + " not initialised");
        }
        if (i10 + i11 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (i12 + i11 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        for (int i13 = 0; i13 < i11; i13++) {
            bArr2[i12 + i13] = (byte) (bArr[i10 + i13] ^ k());
        }
        return i11;
    }

    public final int h(int i10, int i11, int i12) {
        return (r(i10, 10) ^ r(i12, 23)) + r(i11, 8);
    }

    @Override
    public byte i(byte b10) {
        return (byte) (b10 ^ k());
    }

    public final int j(int i10, int i11, int i12) {
        return (q(i10, 10) ^ q(i12, 23)) + q(i11, 8);
    }

    public final byte k() {
        if (this.f13623h == 0) {
            int s10 = s();
            byte[] bArr = this.f13622g;
            bArr[0] = (byte) (s10 & 255);
            bArr[1] = (byte) ((s10 >> 8) & 255);
            bArr[2] = (byte) ((s10 >> 16) & 255);
            bArr[3] = (byte) ((s10 >> 24) & 255);
        }
        byte[] bArr2 = this.f13622g;
        int i10 = this.f13623h;
        byte b10 = bArr2[i10];
        this.f13623h = 3 & (i10 + 1);
        return b10;
    }

    public final int l(int i10) {
        int[] iArr = this.f13617b;
        return iArr[i10 & 255] + iArr[((i10 >> 16) & 255) + 256];
    }

    public final int m(int i10) {
        int[] iArr = this.f13616a;
        return iArr[i10 & 255] + iArr[((i10 >> 16) & 255) + 256];
    }

    public final void n() {
        if (this.f13619d.length != 16) {
            throw new IllegalArgumentException("The key must be 128 bits long");
        }
        if (this.f13620e.length != 16) {
            throw new IllegalArgumentException("The IV must be 128 bits long");
        }
        this.f13623h = 0;
        this.f13618c = 0;
        int[] iArr = new int[1280];
        for (int i10 = 0; i10 < 16; i10++) {
            int i11 = i10 >> 2;
            iArr[i11] = ((this.f13619d[i10] & 255) << ((i10 & 3) * 8)) | iArr[i11];
        }
        System.arraycopy(iArr, 0, iArr, 4, 4);
        int i12 = 0;
        while (true) {
            byte[] bArr = this.f13620e;
            if (i12 >= bArr.length || i12 >= 16) {
                break;
            }
            int i13 = (i12 >> 2) + 8;
            iArr[i13] = ((bArr[i12] & 255) << ((i12 & 3) * 8)) | iArr[i13];
            i12++;
        }
        System.arraycopy(iArr, 8, iArr, 12, 4);
        for (int i14 = 16; i14 < 1280; i14++) {
            iArr[i14] = g(iArr[i14 - 2]) + iArr[i14 - 7] + e(iArr[i14 - 15]) + iArr[i14 - 16] + i14;
        }
        System.arraycopy(iArr, 256, this.f13616a, 0, 512);
        System.arraycopy(iArr, 768, this.f13617b, 0, 512);
        for (int i15 = 0; i15 < 512; i15++) {
            this.f13616a[i15] = s();
        }
        for (int i16 = 0; i16 < 512; i16++) {
            this.f13617b[i16] = s();
        }
        this.f13618c = 0;
    }

    @Override
    public void reset() {
        n();
    }

    public final int s() {
        int m10;
        int i10;
        int p10 = p(this.f13618c);
        if (this.f13618c < 512) {
            int[] iArr = this.f13616a;
            iArr[p10] = iArr[p10] + h(iArr[c(p10, 3)], this.f13616a[c(p10, 10)], this.f13616a[c(p10, 511)]);
            m10 = l(this.f13616a[c(p10, 12)]);
            i10 = this.f13616a[p10];
        } else {
            int[] iArr2 = this.f13617b;
            iArr2[p10] = iArr2[p10] + j(iArr2[c(p10, 3)], this.f13617b[c(p10, 10)], this.f13617b[c(p10, 511)]);
            m10 = m(this.f13617b[c(p10, 12)]);
            i10 = this.f13617b[p10];
        }
        int i11 = i10 ^ m10;
        this.f13618c = o(this.f13618c + 1);
        return i11;
    }
}
