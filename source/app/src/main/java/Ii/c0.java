package Ii;

import Bi.InterfaceC2392y;
import java.io.ByteArrayOutputStream;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;

public class c0 implements InterfaceC2392y {

    public int f9727b;

    public a f9728c;

    public int f9729d;

    public final int f9730e = 48;

    public final int f9731f = 16;

    public final int f9732g = 1;

    public final int f9733h = 2;

    public final int f9734i = 12;

    public final int f9735j = 3;

    public final int f9736k = 4;

    public final int f9737l = 12;

    public final int f9738m = 16;

    public final int[] f9739n = {88, 56, 960, 208, 288, 20, 96, 44, 896, 240, 416, 18};

    public final ByteArrayOutputStream f9740o = new ByteArrayOutputStream();

    public byte[] f9726a = new byte[48];

    public enum a {
        ModeHash,
        ModeKeyed
    }

    public c0() {
        reset();
    }

    public void a(byte[] bArr, int i10, int i11, int i12) {
        int i13 = 0;
        while (i13 < i11) {
            byte[] bArr2 = this.f9726a;
            bArr2[i13] = (byte) (bArr[i10] ^ bArr2[i13]);
            i13++;
            i10++;
        }
        byte[] bArr3 = this.f9726a;
        bArr3[i11] = (byte) (bArr3[i11] ^ 1);
        byte b10 = bArr3[47];
        if (this.f9728c == a.ModeHash) {
            i12 &= 1;
        }
        bArr3[47] = (byte) (b10 ^ i12);
        this.f9727b = 1;
    }

    @Override
    public String b() {
        return "Xoodyak Hash";
    }

    @Override
    public int c(byte[] bArr, int i10) {
        if (i10 + 32 > bArr.length) {
            throw new OutputLengthException("output buffer is too short");
        }
        byte[] byteArray = this.f9740o.toByteArray();
        int size = this.f9740o.size();
        int i11 = 3;
        int i12 = 0;
        while (true) {
            if (this.f9727b != 2) {
                g(null, 0, 0, 0);
            }
            int min = Math.min(size, this.f9729d);
            a(byteArray, i12, min, i11);
            i12 += min;
            size -= min;
            if (size == 0) {
                g(bArr, i10, 16, 64);
                a(null, 0, 0, 0);
                g(bArr, i10 + 16, 16, 0);
                return 32;
            }
            i11 = 0;
        }
    }

    public final int d(int i10, int i11) {
        return (i10 >>> ((32 - i11) & 31)) ^ (i10 << (i11 & 31));
    }

    @Override
    public int f() {
        return 32;
    }

    public final void g(byte[] bArr, int i10, int i11, int i12) {
        int i13;
        if (this.f9728c != a.ModeHash) {
            byte[] bArr2 = this.f9726a;
            bArr2[47] = (byte) (bArr2[47] ^ i12);
        }
        int i14 = 12;
        int[] iArr = new int[12];
        org.bouncycastle.util.p.t(this.f9726a, 0, iArr, 0, 12);
        int[] iArr2 = new int[12];
        int[] iArr3 = new int[4];
        int[] iArr4 = new int[4];
        for (int i15 = 0; i15 < i14; i15++) {
            for (int i16 = 0; i16 < 4; i16++) {
                iArr3[i16] = (iArr[j(i16, 1)] ^ iArr[j(i16, 0)]) ^ iArr[j(i16, 2)];
            }
            int i17 = 0;
            while (true) {
                i13 = 3;
                if (i17 >= 4) {
                    break;
                }
                int i18 = iArr3[3 & (i17 + 3)];
                iArr4[i17] = d(i18, 14) ^ d(i18, 5);
                i17++;
            }
            for (int i19 = 0; i19 < 4; i19++) {
                for (int i20 = 0; i20 < 3; i20++) {
                    int j10 = j(i19, i20);
                    iArr[j10] = iArr[j10] ^ iArr4[i19];
                }
            }
            for (int i21 = 0; i21 < 4; i21++) {
                iArr2[j(i21, 0)] = iArr[j(i21, 0)];
                iArr2[j(i21, 1)] = iArr[j(i21 + 3, 1)];
                iArr2[j(i21, 2)] = d(iArr[j(i21, 2)], 11);
            }
            iArr2[0] = iArr2[0] ^ this.f9739n[i15];
            int i22 = 0;
            while (i22 < 4) {
                int i23 = 0;
                while (i23 < i13) {
                    int i24 = i23 + 1;
                    iArr[j(i22, i23)] = ((~iArr2[j(i22, i24)]) & iArr2[j(i22, i23 + 2)]) ^ iArr2[j(i22, i23)];
                    i23 = i24;
                    i13 = 3;
                }
                i22++;
                i13 = 3;
            }
            for (int i25 = 0; i25 < 4; i25++) {
                iArr2[j(i25, 0)] = iArr[j(i25, 0)];
                iArr2[j(i25, 1)] = d(iArr[j(i25, 1)], 1);
                iArr2[j(i25, 2)] = d(iArr[j(i25 + 2, 2)], 8);
            }
            i14 = 12;
            System.arraycopy(iArr2, 0, iArr, 0, 12);
        }
        org.bouncycastle.util.p.n(iArr, 0, i14, this.f9726a, 0);
        this.f9727b = 2;
        if (bArr != null) {
            System.arraycopy(this.f9726a, 0, bArr, i10, i11);
        }
    }

    public final int j(int i10, int i11) {
        return ((i11 % 3) * 4) + (i10 % 4);
    }

    @Override
    public void reset() {
        org.bouncycastle.util.a.e0(this.f9726a, (byte) 0);
        this.f9727b = 2;
        this.f9728c = a.ModeHash;
        this.f9729d = 16;
        this.f9740o.reset();
    }

    @Override
    public void update(byte b10) {
        this.f9740o.write(b10);
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) {
        if (i10 + i11 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        this.f9740o.write(bArr, i10, i11);
    }
}
