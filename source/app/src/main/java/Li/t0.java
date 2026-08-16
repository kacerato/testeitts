package Li;

import Bi.InterfaceC2374f;
import Bi.InterfaceC2379k;
import Xi.C3360o0;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;

public class t0 implements InterfaceC2374f {

    public static final int f14105g = 32;

    public static final int f14106h = 8;

    public static final int f14107i = -1640531527;

    public static final int f14108j = -957401312;

    public int f14109a;

    public int f14110b;

    public int f14111c;

    public int f14112d;

    public boolean f14113e = false;

    public boolean f14114f;

    private int i(byte[] bArr, int i10, byte[] bArr2, int i11) {
        int f10 = f(bArr, i10);
        int f11 = f(bArr, i10 + 4);
        int i12 = f14108j;
        for (int i13 = 0; i13 != 32; i13++) {
            f11 -= (((f10 << 4) + this.f14111c) ^ (f10 + i12)) ^ ((f10 >>> 5) + this.f14112d);
            f10 -= (((f11 << 4) + this.f14109a) ^ (f11 + i12)) ^ ((f11 >>> 5) + this.f14110b);
            i12 += 1640531527;
        }
        l(f10, bArr2, i11);
        l(f11, bArr2, i11 + 4);
        return 8;
    }

    private int j(byte[] bArr, int i10, byte[] bArr2, int i11) {
        int f10 = f(bArr, i10);
        int f11 = f(bArr, i10 + 4);
        int i12 = f10;
        int i13 = 0;
        for (int i14 = 0; i14 != 32; i14++) {
            i13 -= 1640531527;
            i12 += (((f11 << 4) + this.f14109a) ^ (f11 + i13)) ^ ((f11 >>> 5) + this.f14110b);
            f11 += (((i12 << 4) + this.f14111c) ^ (i12 + i13)) ^ ((i12 >>> 5) + this.f14112d);
        }
        l(i12, bArr2, i11);
        l(f11, bArr2, i11 + 4);
        return 8;
    }

    private void k(byte[] bArr) {
        if (bArr.length != 16) {
            throw new IllegalArgumentException("Key size must be 128 bits.");
        }
        this.f14109a = f(bArr, 0);
        this.f14110b = f(bArr, 4);
        this.f14111c = f(bArr, 8);
        this.f14112d = f(bArr, 12);
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        if (!(interfaceC2379k instanceof C3360o0)) {
            throw new IllegalArgumentException("invalid parameter passed to TEA init - " + interfaceC2379k.getClass().getName());
        }
        this.f14114f = z10;
        this.f14113e = true;
        k(((C3360o0) interfaceC2379k).b());
        Bi.r.a(new Hi.c(b(), 128, interfaceC2379k, x0.a(z10)));
    }

    @Override
    public String b() {
        return "TEA";
    }

    @Override
    public int c() {
        return 8;
    }

    public final int f(byte[] bArr, int i10) {
        int i11 = ((bArr[i10 + 1] & 255) << 16) | (bArr[i10] << 24);
        return (bArr[i10 + 3] & 255) | i11 | ((bArr[i10 + 2] & 255) << 8);
    }

    @Override
    public int g(byte[] bArr, int i10, byte[] bArr2, int i11) {
        if (!this.f14113e) {
            throw new IllegalStateException(b() + " not initialised");
        }
        if (i10 + 8 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (i11 + 8 <= bArr2.length) {
            return this.f14114f ? j(bArr, i10, bArr2, i11) : i(bArr, i10, bArr2, i11);
        }
        throw new OutputLengthException("output buffer too short");
    }

    public final void l(int i10, byte[] bArr, int i11) {
        bArr[i11] = (byte) (i10 >>> 24);
        bArr[i11 + 1] = (byte) (i10 >>> 16);
        bArr[i11 + 2] = (byte) (i10 >>> 8);
        bArr[i11 + 3] = (byte) i10;
    }

    @Override
    public void reset() {
    }
}
