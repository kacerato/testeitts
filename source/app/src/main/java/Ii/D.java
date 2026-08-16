package Ii;

import Bi.InterfaceC2392y;
import java.io.ByteArrayOutputStream;
import java.lang.reflect.Array;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;

public class D implements InterfaceC2392y {

    public ByteArrayOutputStream f9466c = new ByteArrayOutputStream();

    public final int f9467d = 16;

    public int f9468e = 4;

    public int f9469f = 16;

    public int f9470g = 32;

    public int f9471h = 32;

    public int f9472i = 5;

    public int f9473j = 12;

    public int f9474k = 8;

    public int f9475l = 3;

    public int f9476m = 7;

    public int f9477n = 64;

    public int f9478o = 4;

    public int f9479p = 3;

    public byte[][] f9480q = {new byte[]{1, 3, 7, 14, 13, 11, 6, 12, 9, 2, 5, 10}, new byte[]{0, 2, 6, 15, 12, 10, 7, 13, 8, 3, 4, 11}, new byte[]{2, 0, 4, 13, 14, 8, 5, 15, 10, 1, 6, 9}, new byte[]{6, 4, 0, 9, 10, 12, 1, 11, 14, 5, 2, 13}, new byte[]{14, 12, 8, 1, 2, 4, 9, 3, 6, 13, 10, 5}, new byte[]{15, 13, 9, 0, 3, 5, 8, 2, 7, 12, 11, 4}, new byte[]{13, 15, 11, 2, 1, 7, 10, 0, 5, 14, 9, 6}, new byte[]{9, 11, 15, 6, 5, 3, 14, 4, 1, 10, 13, 2}};

    public byte[][] f9481r = {new byte[]{2, 4, 2, 11, 2, 8, 5, 6}, new byte[]{12, 9, 8, 13, 7, 7, 5, 2}, new byte[]{4, 4, 13, 13, 9, 4, 13, 9}, new byte[]{1, 6, 5, 1, 12, 13, 15, 14}, new byte[]{15, 12, 9, 13, 14, 5, 14, 13}, new byte[]{9, 14, 5, 15, 4, 12, 9, 6}, new byte[]{12, 2, 2, 10, 3, 1, 1, 14}, new byte[]{15, 1, 13, 10, 5, 10, 2, 3}};

    public byte[] f9482s = {12, 5, 6, 11, 9, 0, 10, 13, 3, 14, 15, 8, 4, 7, 1, 2};

    public byte[] f9464a = new byte[32];

    public byte[][] f9465b = (byte[][]) Array.newInstance(Byte.TYPE, 8, 8);

    public void a() {
        for (int i10 = 0; i10 < this.f9477n; i10++) {
            this.f9465b[i10 >>> this.f9475l][this.f9476m & i10] = (byte) (((this.f9464a[i10 >> 1] & 255) >>> ((i10 & 1) * 4)) & 15);
        }
        for (int i11 = 0; i11 < this.f9473j; i11++) {
            for (int i12 = 0; i12 < this.f9474k; i12++) {
                byte[] bArr = this.f9465b[i12];
                bArr[0] = (byte) (bArr[0] ^ this.f9480q[i12][i11]);
            }
            for (int i13 = 0; i13 < this.f9474k; i13++) {
                for (int i14 = 0; i14 < this.f9474k; i14++) {
                    byte[] bArr2 = this.f9465b[i13];
                    bArr2[i14] = this.f9482s[bArr2[i14]];
                }
            }
            int i15 = 1;
            while (true) {
                int i16 = this.f9474k;
                if (i15 >= i16) {
                    break;
                }
                System.arraycopy(this.f9465b[i15], 0, this.f9464a, 0, i16);
                System.arraycopy(this.f9464a, i15, this.f9465b[i15], 0, this.f9474k - i15);
                System.arraycopy(this.f9464a, 0, this.f9465b[i15], this.f9474k - i15, i15);
                i15++;
            }
            for (int i17 = 0; i17 < this.f9474k; i17++) {
                for (int i18 = 0; i18 < this.f9474k; i18++) {
                    byte b10 = 0;
                    for (int i19 = 0; i19 < this.f9474k; i19++) {
                        int i20 = this.f9481r[i18][i19];
                        byte b11 = this.f9465b[i19][i17];
                        int i21 = 0;
                        for (int i22 = 0; i22 < this.f9478o; i22++) {
                            if (((b11 >>> i22) & 1) != 0) {
                                i21 ^= i20;
                            }
                            int i23 = (i20 >>> this.f9479p) & 1;
                            i20 <<= 1;
                            if (i23 != 0) {
                                i20 ^= 3;
                            }
                        }
                        b10 = (byte) (b10 ^ (i21 & 15));
                    }
                    this.f9464a[i18] = b10;
                }
                for (int i24 = 0; i24 < this.f9474k; i24++) {
                    this.f9465b[i24][i17] = this.f9464a[i24];
                }
            }
        }
        for (int i25 = 0; i25 < this.f9477n; i25 += 2) {
            byte[][] bArr3 = this.f9465b;
            int i26 = this.f9475l;
            byte[] bArr4 = bArr3[i25 >>> i26];
            int i27 = this.f9476m;
            this.f9464a[i25 >>> 1] = (byte) (((bArr3[i25 >>> i26][(i25 + 1) & i27] & 15) << 4) | (bArr4[i25 & i27] & 15));
        }
    }

    @Override
    public String b() {
        return "Photon-Beetle Hash";
    }

    @Override
    public int c(byte[] bArr, int i10) {
        if (i10 + 32 > bArr.length) {
            throw new OutputLengthException("output buffer is too short");
        }
        byte[] byteArray = this.f9466c.toByteArray();
        int length = byteArray.length;
        if (length == 0) {
            byte[] bArr2 = this.f9464a;
            int i11 = this.f9470g - 1;
            bArr2[i11] = (byte) ((1 << this.f9472i) ^ bArr2[i11]);
        } else {
            byte[] bArr3 = this.f9464a;
            if (length <= 16) {
                System.arraycopy(byteArray, 0, bArr3, 0, length);
                if (length < 16) {
                    byte[] bArr4 = this.f9464a;
                    bArr4[length] = (byte) (bArr4[length] ^ 1);
                }
                byte[] bArr5 = this.f9464a;
                int i12 = this.f9470g - 1;
                bArr5[i12] = (byte) (((length >= 16 ? 2 : 1) << this.f9472i) ^ bArr5[i12]);
            } else {
                System.arraycopy(byteArray, 0, bArr3, 0, 16);
                int i13 = length - 16;
                int i14 = this.f9468e;
                int i15 = ((i13 + i14) - 1) / i14;
                int i16 = 0;
                while (true) {
                    int i17 = i15 - 1;
                    a();
                    if (i16 >= i17) {
                        break;
                    }
                    int i18 = this.f9468e;
                    org.bouncycastle.util.c.c(i18, byteArray, (i16 * i18) + 16, this.f9464a, 0);
                    i16++;
                }
                int i19 = this.f9468e;
                int i20 = i13 - (i16 * i19);
                org.bouncycastle.util.c.c(i20, byteArray, (i16 * i19) + 16, this.f9464a, 0);
                int i21 = this.f9468e;
                if (i20 < i21) {
                    byte[] bArr6 = this.f9464a;
                    bArr6[i20] = (byte) (bArr6[i20] ^ 1);
                }
                byte[] bArr7 = this.f9464a;
                int i22 = this.f9470g - 1;
                bArr7[i22] = (byte) (((i13 % i21 != 0 ? 2 : 1) << this.f9472i) ^ bArr7[i22]);
            }
        }
        a();
        System.arraycopy(this.f9464a, 0, bArr, i10, this.f9469f);
        a();
        byte[] bArr8 = this.f9464a;
        int i23 = this.f9469f;
        System.arraycopy(bArr8, 0, bArr, i10 + i23, this.f9471h - i23);
        return this.f9471h;
    }

    @Override
    public int f() {
        return this.f9471h;
    }

    @Override
    public void reset() {
        this.f9466c.reset();
        org.bouncycastle.util.a.e0(this.f9464a, (byte) 0);
    }

    @Override
    public void update(byte b10) {
        this.f9466c.write(b10);
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) {
        if (i10 + i11 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        this.f9466c.write(bArr, i10, i11);
    }
}
