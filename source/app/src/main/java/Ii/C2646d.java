package Ii;

import java.lang.reflect.Array;

public class C2646d implements Bi.D {

    public int f9743c;

    public int f9744d;

    public int f9745e;

    public long f9747g;

    public C2645c f9749i;

    public int f9741a = 0;

    public int f9742b = 0;

    public int f9746f = 0;

    public C2645c[] f9748h = new C2645c[4];

    public byte[] f9751k = null;

    public byte[] f9753m = null;

    public final int f9754n = 128;

    public final int f9755o = 64;

    public final int f9756p = 64;

    public final int f9757q = 4;

    public final byte[] f9758r = new byte[1];

    public byte[] f9752l = new byte[64];

    public byte[] f9750j = new byte[512];

    public C2646d(byte[] bArr) {
        a(bArr);
    }

    public final void a(byte[] bArr) {
        int i10;
        if (bArr != null && bArr.length > 0) {
            int length = bArr.length;
            this.f9742b = length;
            if (length > 64) {
                throw new IllegalArgumentException("Keys > 64 bytes are not supported");
            }
            this.f9753m = org.bouncycastle.util.a.p(bArr);
        }
        this.f9741a = 0;
        this.f9743c = 64;
        this.f9744d = 4;
        this.f9745e = 2;
        this.f9747g = 64L;
        byte[] bArr2 = this.f9752l;
        bArr2[0] = (byte) 64;
        bArr2[1] = (byte) this.f9742b;
        bArr2[2] = (byte) 4;
        bArr2[3] = (byte) 2;
        bArr2[16] = 1;
        bArr2[17] = (byte) 64;
        this.f9749i = new C2645c((byte[]) null, this.f9752l);
        org.bouncycastle.util.p.m(this.f9746f, this.f9752l, 8);
        this.f9752l[16] = 0;
        for (int i11 = 0; i11 < 4; i11++) {
            org.bouncycastle.util.p.m(i11, this.f9752l, 8);
            this.f9748h[i11] = new C2645c((byte[]) null, this.f9752l);
        }
        this.f9749i.m();
        this.f9748h[3].m();
        if (bArr == null || (i10 = this.f9742b) <= 0) {
            return;
        }
        byte[] bArr3 = new byte[128];
        System.arraycopy(bArr, 0, bArr3, 0, i10);
        for (int i12 = 0; i12 < 4; i12++) {
            this.f9748h[i12].update(bArr3, 0, 128);
        }
    }

    @Override
    public String b() {
        return "BLAKE2bp";
    }

    @Override
    public int c(byte[] bArr, int i10) {
        byte[][] bArr2 = (byte[][]) Array.newInstance(Byte.TYPE, 4, 64);
        for (int i11 = 0; i11 < 4; i11++) {
            int i12 = this.f9741a;
            int i13 = i11 * 128;
            if (i12 > i13) {
                int i14 = i12 - i13;
                if (i14 > 128) {
                    i14 = 128;
                }
                this.f9748h[i11].update(this.f9750j, i13, i14);
            }
            this.f9748h[i11].c(bArr2[i11], 0);
        }
        for (int i15 = 0; i15 < 4; i15++) {
            this.f9749i.update(bArr2[i15], 0, 64);
        }
        int c10 = this.f9749i.c(bArr, i10);
        reset();
        return c10;
    }

    @Override
    public int f() {
        return this.f9743c;
    }

    @Override
    public int i() {
        return 0;
    }

    @Override
    public void reset() {
        this.f9741a = 0;
        this.f9743c = 64;
        this.f9749i.reset();
        for (int i10 = 0; i10 < 4; i10++) {
            this.f9748h[i10].reset();
        }
        this.f9749i.m();
        this.f9748h[3].m();
        byte[] bArr = this.f9753m;
        if (bArr != null) {
            byte[] bArr2 = new byte[128];
            System.arraycopy(bArr, 0, bArr2, 0, this.f9742b);
            for (int i11 = 0; i11 < 4; i11++) {
                this.f9748h[i11].update(bArr2, 0, 128);
            }
        }
    }

    @Override
    public void update(byte b10) {
        byte[] bArr = this.f9758r;
        bArr[0] = b10;
        update(bArr, 0, 1);
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) {
        int i12 = this.f9741a;
        int i13 = 1024 - i12;
        if (i12 != 0 && i11 >= i13) {
            System.arraycopy(bArr, i10, this.f9750j, i12, i13);
            for (int i14 = 0; i14 < 4; i14++) {
                this.f9748h[i14].update(this.f9750j, i14 * 128, 128);
            }
            i10 += i13;
            i11 -= i13;
            i12 = 0;
        }
        for (int i15 = 0; i15 < 4; i15++) {
            int i16 = (i15 * 128) + i10;
            for (int i17 = i11; i17 >= 512; i17 -= 512) {
                this.f9748h[i15].update(bArr, i16, 128);
                i16 += 512;
            }
        }
        int i18 = i11 % 512;
        int i19 = i10 + (i11 - i18);
        if (i18 > 0) {
            System.arraycopy(bArr, i19, this.f9750j, i12, i18);
        }
        this.f9741a = i12 + i18;
    }
}
