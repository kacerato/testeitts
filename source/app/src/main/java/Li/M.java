package Li;

import Bi.InterfaceC2379k;
import Xi.C3360o0;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;

public class M implements Bi.Y {

    public final int f13650a = 8;

    public final int f13651b = 256;

    public int[] f13652c = null;

    public int[] f13653d = null;

    public int f13654e = 0;

    public int f13655f = 0;

    public int f13656g = 0;

    public int f13657h = 0;

    public byte[] f13658i = new byte[1024];

    public byte[] f13659j = null;

    public boolean f13660k = false;

    private void g(byte[] bArr) {
        this.f13659j = bArr;
        if (this.f13652c == null) {
            this.f13652c = new int[256];
        }
        if (this.f13653d == null) {
            this.f13653d = new int[256];
        }
        for (int i10 = 0; i10 < 256; i10++) {
            int[] iArr = this.f13652c;
            this.f13653d[i10] = 0;
            iArr[i10] = 0;
        }
        this.f13656g = 0;
        this.f13655f = 0;
        this.f13654e = 0;
        this.f13657h = 0;
        int length = bArr.length + (bArr.length & 3);
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        for (int i11 = 0; i11 < length; i11 += 4) {
            this.f13653d[i11 >>> 2] = org.bouncycastle.util.p.r(bArr2, i11);
        }
        int[] iArr2 = new int[8];
        for (int i12 = 0; i12 < 8; i12++) {
            iArr2[i12] = -1640531527;
        }
        for (int i13 = 0; i13 < 4; i13++) {
            e(iArr2);
        }
        int i14 = 0;
        while (i14 < 2) {
            for (int i15 = 0; i15 < 256; i15 += 8) {
                for (int i16 = 0; i16 < 8; i16++) {
                    iArr2[i16] = iArr2[i16] + (i14 < 1 ? this.f13653d[i15 + i16] : this.f13652c[i15 + i16]);
                }
                e(iArr2);
                for (int i17 = 0; i17 < 8; i17++) {
                    this.f13652c[i15 + i17] = iArr2[i17];
                }
            }
            i14++;
        }
        c();
        this.f13660k = true;
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        if (interfaceC2379k instanceof C3360o0) {
            byte[] b10 = ((C3360o0) interfaceC2379k).b();
            g(b10);
            Bi.r.a(new Hi.c(b(), b10.length < 32 ? b10.length * 8 : 256, interfaceC2379k, x0.a(z10)));
        } else {
            throw new IllegalArgumentException("invalid parameter passed to ISAAC init - " + interfaceC2379k.getClass().getName());
        }
    }

    @Override
    public String b() {
        return "ISAAC";
    }

    public final void c() {
        int i10;
        int i11;
        int i12 = this.f13655f;
        int i13 = this.f13656g + 1;
        this.f13656g = i13;
        this.f13655f = i12 + i13;
        for (int i14 = 0; i14 < 256; i14++) {
            int[] iArr = this.f13652c;
            int i15 = iArr[i14];
            int i16 = i14 & 3;
            if (i16 == 0) {
                i10 = this.f13654e;
                i11 = i10 << 13;
            } else if (i16 == 1) {
                i10 = this.f13654e;
                i11 = i10 >>> 6;
            } else if (i16 == 2) {
                i10 = this.f13654e;
                i11 = i10 << 2;
            } else if (i16 != 3) {
                int i17 = this.f13654e + iArr[(i14 + 128) & 255];
                this.f13654e = i17;
                int i18 = iArr[(i15 >>> 2) & 255] + i17 + this.f13655f;
                iArr[i14] = i18;
                int[] iArr2 = this.f13653d;
                int i19 = iArr[(i18 >>> 10) & 255] + i15;
                this.f13655f = i19;
                iArr2[i14] = i19;
            } else {
                i10 = this.f13654e;
                i11 = i10 >>> 16;
            }
            this.f13654e = i10 ^ i11;
            int i172 = this.f13654e + iArr[(i14 + 128) & 255];
            this.f13654e = i172;
            int i182 = iArr[(i15 >>> 2) & 255] + i172 + this.f13655f;
            iArr[i14] = i182;
            int[] iArr22 = this.f13653d;
            int i192 = iArr[(i182 >>> 10) & 255] + i15;
            this.f13655f = i192;
            iArr22[i14] = i192;
        }
    }

    public final void e(int[] iArr) {
        int i10 = iArr[0];
        int i11 = iArr[1];
        int i12 = i10 ^ (i11 << 11);
        iArr[0] = i12;
        int i13 = iArr[3] + i12;
        iArr[3] = i13;
        int i14 = iArr[2];
        int i15 = i11 + i14;
        iArr[1] = i15;
        int i16 = i15 ^ (i14 >>> 2);
        iArr[1] = i16;
        int i17 = iArr[4] + i16;
        iArr[4] = i17;
        int i18 = i14 + i13;
        iArr[2] = i18;
        int i19 = i18 ^ (i13 << 8);
        iArr[2] = i19;
        int i20 = iArr[5] + i19;
        iArr[5] = i20;
        int i21 = i13 + i17;
        iArr[3] = i21;
        int i22 = i21 ^ (i17 >>> 16);
        iArr[3] = i22;
        int i23 = iArr[6] + i22;
        iArr[6] = i23;
        int i24 = i17 + i20;
        iArr[4] = i24;
        int i25 = (i20 << 10) ^ i24;
        iArr[4] = i25;
        int i26 = iArr[7] + i25;
        iArr[7] = i26;
        int i27 = i20 + i23;
        iArr[5] = i27;
        int i28 = (i23 >>> 4) ^ i27;
        iArr[5] = i28;
        int i29 = i12 + i28;
        iArr[0] = i29;
        int i30 = i23 + i26;
        iArr[6] = i30;
        int i31 = (i26 << 8) ^ i30;
        iArr[6] = i31;
        int i32 = i16 + i31;
        iArr[1] = i32;
        int i33 = i26 + i29;
        iArr[7] = i33;
        int i34 = (i29 >>> 9) ^ i33;
        iArr[7] = i34;
        iArr[2] = i19 + i34;
        iArr[0] = i29 + i32;
    }

    @Override
    public int f(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) {
        if (!this.f13660k) {
            throw new IllegalStateException(b() + " not initialised");
        }
        if (i10 + i11 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (i12 + i11 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        for (int i13 = 0; i13 < i11; i13++) {
            if (this.f13657h == 0) {
                c();
                this.f13658i = org.bouncycastle.util.p.l(this.f13653d);
            }
            byte[] bArr3 = this.f13658i;
            int i14 = this.f13657h;
            bArr2[i13 + i12] = (byte) (bArr3[i14] ^ bArr[i13 + i10]);
            this.f13657h = (i14 + 1) & 1023;
        }
        return i11;
    }

    @Override
    public byte i(byte b10) {
        if (this.f13657h == 0) {
            c();
            this.f13658i = org.bouncycastle.util.p.l(this.f13653d);
        }
        byte[] bArr = this.f13658i;
        int i10 = this.f13657h;
        byte b11 = (byte) (b10 ^ bArr[i10]);
        this.f13657h = (i10 + 1) & 1023;
        return b11;
    }

    @Override
    public void reset() {
        g(this.f13659j);
    }
}
