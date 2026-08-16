package Li;

import Bi.EnumC2383o;
import Bi.InterfaceC2374f;
import Bi.InterfaceC2379k;
import Xi.C3360o0;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;

public class r0 implements InterfaceC2374f {

    public static final int f14054f = 8;

    public static short[] f14055g = {163, 215, 9, 131, 248, 72, 246, 244, 179, 33, 21, 120, 153, 177, 175, 249, 231, 45, 77, 138, 206, 76, 202, 46, 82, 149, 217, 30, 78, 56, 68, 40, 10, 223, 2, 160, 23, 241, 96, 104, 18, 183, 122, 195, 233, 250, 61, 83, 150, 132, 107, 186, 242, 99, 154, 25, 124, 174, 229, 245, 247, 22, 106, 162, 57, 182, 123, 15, 193, 147, 129, 27, 238, 180, 26, 234, 208, 145, 47, 184, 85, 185, 218, 133, 63, 65, 191, 224, 90, 88, 128, 95, 102, 11, 216, 144, 53, 213, 192, 167, 51, 6, 101, 105, 69, 0, 148, 86, 109, 152, 155, 118, 151, 252, 178, 194, 176, 254, 219, 32, 225, 235, 214, 228, 221, 71, 74, 29, 66, 237, 158, 110, 73, 60, 205, 67, 39, 210, 7, 212, 222, 199, 103, 24, 137, 203, 48, 31, 141, 198, 143, 170, 200, 116, 220, 201, 93, 92, 49, 164, 112, 136, 97, 44, 159, 13, 43, 135, 80, 130, 84, 100, 38, 125, 3, 64, 52, 75, 28, 115, 209, 196, 253, 59, 204, 251, 127, 171, 230, 62, 91, 165, 173, 4, 35, 156, 20, 81, 34, 240, 41, 121, 113, 126, 255, 140, 14, 226, 12, 239, 188, 114, 117, 111, 55, 161, 236, 211, 142, 98, 139, 134, 16, 232, 8, 119, 17, 190, 146, 79, 36, 197, 50, 54, 157, 207, 243, 166, 187, 172, 94, 108, 169, 19, 87, 37, 181, 227, 189, 168, 58, 1, 5, 89, 42, 70};

    public int[] f14056a;

    public int[] f14057b;

    public int[] f14058c;

    public int[] f14059d;

    public boolean f14060e;

    public r0() {
        Bi.r.a(new Hi.c(b(), 80));
    }

    private EnumC2383o k() {
        return this.f14056a == null ? EnumC2383o.ANY : this.f14060e ? EnumC2383o.ENCRYPTION : EnumC2383o.DECRYPTION;
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        if (!(interfaceC2379k instanceof C3360o0)) {
            throw new IllegalArgumentException("invalid parameter passed to SKIPJACK init - " + interfaceC2379k.getClass().getName());
        }
        byte[] b10 = ((C3360o0) interfaceC2379k).b();
        this.f14060e = z10;
        this.f14056a = new int[32];
        this.f14057b = new int[32];
        this.f14058c = new int[32];
        this.f14059d = new int[32];
        for (int i10 = 0; i10 < 32; i10++) {
            int i11 = i10 * 4;
            this.f14056a[i10] = b10[i11 % 10] & 255;
            this.f14057b[i10] = b10[(i11 + 1) % 10] & 255;
            this.f14058c[i10] = b10[(i11 + 2) % 10] & 255;
            this.f14059d[i10] = b10[(i11 + 3) % 10] & 255;
        }
        Bi.r.a(new Hi.c(b(), 80, interfaceC2379k, k()));
    }

    @Override
    public String b() {
        return "SKIPJACK";
    }

    @Override
    public int c() {
        return 8;
    }

    public int f(byte[] bArr, int i10, byte[] bArr2, int i11) {
        int i12 = (bArr[i10] << 8) + (bArr[i10 + 1] & 255);
        int i13 = (bArr[i10 + 2] << 8) + (bArr[i10 + 3] & 255);
        int i14 = (bArr[i10 + 4] << 8) + (bArr[i10 + 5] & 255);
        int i15 = (bArr[i10 + 6] << 8) + (bArr[i10 + 7] & 255);
        int i16 = 31;
        for (int i17 = 0; i17 < 2; i17++) {
            int i18 = 0;
            while (i18 < 8) {
                int l10 = l(i16, i13);
                int i19 = (i14 ^ l10) ^ (i16 + 1);
                i16--;
                i18++;
                int i20 = i15;
                i15 = i12;
                i12 = l10;
                i13 = i19;
                i14 = i20;
            }
            int i21 = 0;
            while (i21 < 8) {
                int i22 = (i12 ^ i13) ^ (i16 + 1);
                int l11 = l(i16, i13);
                i16--;
                i21++;
                int i23 = i15;
                i15 = i22;
                i12 = l11;
                i13 = i14;
                i14 = i23;
            }
        }
        bArr2[i11] = (byte) (i12 >> 8);
        bArr2[i11 + 1] = (byte) i12;
        bArr2[i11 + 2] = (byte) (i13 >> 8);
        bArr2[i11 + 3] = (byte) i13;
        bArr2[i11 + 4] = (byte) (i14 >> 8);
        bArr2[i11 + 5] = (byte) i14;
        bArr2[i11 + 6] = (byte) (i15 >> 8);
        bArr2[i11 + 7] = (byte) i15;
        return 8;
    }

    @Override
    public int g(byte[] bArr, int i10, byte[] bArr2, int i11) {
        if (this.f14057b == null) {
            throw new IllegalStateException("SKIPJACK engine not initialised");
        }
        if (i10 + 8 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (i11 + 8 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        if (this.f14060e) {
            i(bArr, i10, bArr2, i11);
            return 8;
        }
        f(bArr, i10, bArr2, i11);
        return 8;
    }

    public int i(byte[] bArr, int i10, byte[] bArr2, int i11) {
        int i12 = (bArr[i10] << 8) + (bArr[i10 + 1] & 255);
        int i13 = (bArr[i10 + 2] << 8) + (bArr[i10 + 3] & 255);
        int i14 = (bArr[i10 + 4] << 8) + (bArr[i10 + 5] & 255);
        int i15 = (bArr[i10 + 6] << 8) + (bArr[i10 + 7] & 255);
        int i16 = 0;
        for (int i17 = 0; i17 < 2; i17++) {
            int i18 = 0;
            while (i18 < 8) {
                int j10 = j(i16, i12);
                i16++;
                i18++;
                int i19 = i13;
                i13 = j10;
                i12 = (i15 ^ j10) ^ i16;
                i15 = i14;
                i14 = i19;
            }
            int i20 = 0;
            while (i20 < 8) {
                int i21 = i16 + 1;
                int i22 = (i13 ^ i12) ^ i21;
                int j11 = j(i16, i12);
                i20++;
                i16 = i21;
                i13 = j11;
                i12 = i15;
                i15 = i14;
                i14 = i22;
            }
        }
        bArr2[i11] = (byte) (i12 >> 8);
        bArr2[i11 + 1] = (byte) i12;
        bArr2[i11 + 2] = (byte) (i13 >> 8);
        bArr2[i11 + 3] = (byte) i13;
        bArr2[i11 + 4] = (byte) (i14 >> 8);
        bArr2[i11 + 5] = (byte) i14;
        bArr2[i11 + 6] = (byte) (i15 >> 8);
        bArr2[i11 + 7] = (byte) i15;
        return 8;
    }

    public final int j(int i10, int i11) {
        int i12 = (i11 >> 8) & 255;
        int i13 = i11 & 255;
        short[] sArr = f14055g;
        int i14 = i12 ^ sArr[this.f14056a[i10] ^ i13];
        int i15 = i13 ^ sArr[this.f14057b[i10] ^ i14];
        int i16 = i14 ^ sArr[this.f14058c[i10] ^ i15];
        return (i16 << 8) + (sArr[this.f14059d[i10] ^ i16] ^ i15);
    }

    public final int l(int i10, int i11) {
        int i12 = i11 & 255;
        int i13 = (i11 >> 8) & 255;
        short[] sArr = f14055g;
        int i14 = i12 ^ sArr[this.f14059d[i10] ^ i13];
        int i15 = i13 ^ sArr[this.f14058c[i10] ^ i14];
        int i16 = i14 ^ sArr[this.f14057b[i10] ^ i15];
        return ((sArr[this.f14056a[i10] ^ i16] ^ i15) << 8) + i16;
    }

    @Override
    public void reset() {
    }
}
