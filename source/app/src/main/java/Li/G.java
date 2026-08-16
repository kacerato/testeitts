package Li;

import Bi.InterfaceC2379k;
import Xi.C3360o0;
import android.text.Spanned;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;

public class G implements Bi.Y {

    public static final int f13598i = 4;

    public byte[] f13599a;

    public byte[] f13600b;

    public byte[] f13601c;

    public int[] f13602d;

    public int[] f13603e;

    public int f13604f;

    public int f13605g = 4;

    public boolean f13606h = false;

    private void l(byte[] bArr, byte[] bArr2) {
        bArr2[12] = -1;
        bArr2[13] = -1;
        bArr2[14] = -1;
        bArr2[15] = -1;
        this.f13599a = bArr;
        this.f13600b = bArr2;
        int i10 = 0;
        int i11 = 0;
        while (true) {
            int[] iArr = this.f13603e;
            if (i10 >= iArr.length) {
                return;
            }
            byte[] bArr3 = this.f13599a;
            int i12 = i11 + 3;
            int i13 = i11 + 2;
            int i14 = i11 + 1;
            iArr[i10] = (bArr3[i11] & 255) | (bArr3[i12] << 24) | ((bArr3[i13] << 16) & Spanned.SPAN_PRIORITY) | ((bArr3[i14] << 8) & 65280);
            int[] iArr2 = this.f13602d;
            byte[] bArr4 = this.f13600b;
            iArr2[i10] = (bArr4[i11] & 255) | (bArr4[i12] << 24) | ((bArr4[i13] << 16) & Spanned.SPAN_PRIORITY) | ((bArr4[i14] << 8) & 65280);
            i11 += 4;
            i10++;
        }
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) throws IllegalArgumentException {
        if (!(interfaceC2379k instanceof Xi.w0)) {
            throw new IllegalArgumentException("Grain-128 Init parameters must include an IV");
        }
        Xi.w0 w0Var = (Xi.w0) interfaceC2379k;
        byte[] a10 = w0Var.a();
        if (a10 == null || a10.length != 12) {
            throw new IllegalArgumentException("Grain-128 requires exactly 12 bytes of IV");
        }
        if (!(w0Var.b() instanceof C3360o0)) {
            throw new IllegalArgumentException("Grain-128 init parameters must include a key");
        }
        byte[] b10 = ((C3360o0) w0Var.b()).b();
        if (b10.length != 16) {
            throw new IllegalArgumentException("Grain-128 key must be 128 bits long");
        }
        Bi.r.a(new Hi.c(b(), 128, interfaceC2379k, x0.a(z10)));
        byte[] bArr = new byte[b10.length];
        this.f13600b = bArr;
        this.f13599a = new byte[b10.length];
        this.f13602d = new int[4];
        this.f13603e = new int[4];
        this.f13601c = new byte[4];
        System.arraycopy(a10, 0, bArr, 0, a10.length);
        System.arraycopy(b10, 0, this.f13599a, 0, b10.length);
        reset();
    }

    @Override
    public String b() {
        return "Grain-128";
    }

    public final byte c() {
        if (this.f13605g > 3) {
            k();
            this.f13605g = 0;
        }
        byte[] bArr = this.f13601c;
        int i10 = this.f13605g;
        this.f13605g = i10 + 1;
        return bArr[i10];
    }

    public final int e() {
        int[] iArr = this.f13603e;
        int i10 = iArr[0];
        int i11 = iArr[1];
        int i12 = (i10 >>> 2) | (i11 << 30);
        int i13 = (i10 >>> 12) | (i11 << 20);
        int i14 = (i10 >>> 15) | (i11 << 17);
        int i15 = iArr[2];
        int i16 = (i11 >>> 4) | (i15 << 28);
        int i17 = (i11 >>> 13) | (i15 << 19);
        int i18 = iArr[3];
        int i19 = (i15 >>> 9) | (i18 << 23);
        int i20 = (i15 >>> 25) | (i18 << 7);
        int i21 = (i18 << 1) | (i15 >>> 31);
        int[] iArr2 = this.f13602d;
        int i22 = iArr2[0];
        int i23 = iArr2[1];
        int i24 = (i22 >>> 8) | (i23 << 24);
        int i25 = (i22 >>> 13) | (i23 << 19);
        int i26 = (i22 >>> 20) | (i23 << 12);
        int i27 = iArr2[2];
        int i28 = iArr2[3];
        int i29 = i25 & i26;
        return ((((((((((i21 & i13) & ((i28 << 1) | (i27 >>> 31))) ^ (((i29 ^ (i13 & i24)) ^ (i21 & ((i23 >>> 10) | (i27 << 22)))) ^ (((i23 >>> 28) | (i27 << 4)) & ((i27 >>> 15) | (i28 << 17))))) ^ ((i27 >>> 29) | (i28 << 3))) ^ i12) ^ i14) ^ i16) ^ i17) ^ i15) ^ i19) ^ i20;
    }

    @Override
    public int f(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws DataLengthException {
        if (!this.f13606h) {
            throw new IllegalStateException(b() + " not initialised");
        }
        if (i10 + i11 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (i12 + i11 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        for (int i13 = 0; i13 < i11; i13++) {
            bArr2[i12 + i13] = (byte) (bArr[i10 + i13] ^ c());
        }
        return i11;
    }

    public final int g() {
        int[] iArr = this.f13602d;
        int i10 = iArr[0];
        int i11 = iArr[1];
        int i12 = (i10 >>> 7) | (i11 << 25);
        int i13 = iArr[2];
        int i14 = iArr[3];
        int i15 = (i13 >>> 6) | (i14 << 26);
        return i14 ^ ((((i10 ^ i12) ^ ((i11 >>> 6) | (i13 << 26))) ^ i15) ^ ((i13 >>> 17) | (i14 << 15)));
    }

    public final int h() {
        int[] iArr = this.f13603e;
        int i10 = iArr[0];
        int i11 = iArr[1];
        int i12 = (i10 >>> 3) | (i11 << 29);
        int i13 = (i10 >>> 11) | (i11 << 21);
        int i14 = (i10 >>> 13) | (i11 << 19);
        int i15 = (i10 >>> 17) | (i11 << 15);
        int i16 = (i10 >>> 18) | (i11 << 14);
        int i17 = (i10 >>> 26) | (i11 << 6);
        int i18 = (i10 >>> 27) | (i11 << 5);
        int i19 = iArr[2];
        int i20 = (i11 >>> 8) | (i19 << 24);
        int i21 = (i11 >>> 16) | (i19 << 16);
        int i22 = (i11 >>> 24) | (i19 << 8);
        int i23 = (i11 >>> 27) | (i19 << 5);
        int i24 = (i11 >>> 29) | (i19 << 3);
        int i25 = iArr[3];
        return (((((((i25 ^ (((i10 ^ i17) ^ i22) ^ ((i19 >>> 27) | (i25 << 5)))) ^ (i12 & ((i19 >>> 3) | (i25 << 29)))) ^ (i13 & i14)) ^ (i15 & i16)) ^ (i18 & i23)) ^ (i20 & i21)) ^ (i24 & ((i19 >>> 1) | (i25 << 31)))) ^ (((i19 >>> 4) | (i25 << 28)) & ((i19 >>> 20) | (i25 << 12)));
    }

    @Override
    public byte i(byte b10) {
        if (this.f13606h) {
            return (byte) (b10 ^ c());
        }
        throw new IllegalStateException(b() + " not initialised");
    }

    public final void j() {
        for (int i10 = 0; i10 < 8; i10++) {
            this.f13604f = e();
            this.f13603e = m(this.f13603e, (h() ^ this.f13602d[0]) ^ this.f13604f);
            this.f13602d = m(this.f13602d, g() ^ this.f13604f);
        }
        this.f13606h = true;
    }

    public final void k() {
        int e10 = e();
        this.f13604f = e10;
        byte[] bArr = this.f13601c;
        bArr[0] = (byte) e10;
        bArr[1] = (byte) (e10 >> 8);
        bArr[2] = (byte) (e10 >> 16);
        bArr[3] = (byte) (e10 >> 24);
        this.f13603e = m(this.f13603e, h() ^ this.f13602d[0]);
        this.f13602d = m(this.f13602d, g());
    }

    public final int[] m(int[] iArr, int i10) {
        iArr[0] = iArr[1];
        iArr[1] = iArr[2];
        iArr[2] = iArr[3];
        iArr[3] = i10;
        return iArr;
    }

    @Override
    public void reset() {
        this.f13605g = 4;
        l(this.f13599a, this.f13600b);
        j();
    }
}
