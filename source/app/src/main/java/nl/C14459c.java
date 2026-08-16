package nl;

import org.bouncycastle.util.p;

public class C14459c {

    public static final int f98306a = 12;

    public static void b(int i10, int[] iArr) {
        int i11 = 16;
        if (iArr.length != 16) {
            throw new IllegalArgumentException();
        }
        if (i10 % 2 != 0) {
            throw new IllegalArgumentException("Number of rounds must be even");
        }
        char c10 = 0;
        int i12 = iArr[0];
        int i13 = iArr[1];
        int i14 = iArr[2];
        int i15 = iArr[3];
        int i16 = iArr[4];
        int i17 = iArr[5];
        int i18 = iArr[6];
        int i19 = 7;
        int i20 = iArr[7];
        int i21 = 8;
        int i22 = iArr[8];
        int i23 = iArr[9];
        int i24 = iArr[10];
        int i25 = iArr[11];
        int i26 = iArr[12];
        int i27 = iArr[13];
        int i28 = iArr[14];
        int i29 = iArr[15];
        int i30 = i28;
        int i31 = i27;
        int i32 = i26;
        int i33 = i25;
        int i34 = i24;
        int i35 = i23;
        int i36 = i22;
        int i37 = i20;
        int i38 = i18;
        int i39 = i17;
        int i40 = i16;
        int i41 = i15;
        int i42 = i14;
        int i43 = i13;
        int i44 = i12;
        int i45 = i10;
        while (i45 > 0) {
            int i46 = i44 + i40;
            int c11 = c(i32 ^ i46, i11);
            int i47 = i36 + c11;
            int c12 = c(i40 ^ i47, 12);
            int i48 = i46 + c12;
            int c13 = c(c11 ^ i48, i21);
            int i49 = i47 + c13;
            int c14 = c(c12 ^ i49, i19);
            int i50 = i43 + i39;
            int c15 = c(i31 ^ i50, i11);
            int i51 = i35 + c15;
            int c16 = c(i39 ^ i51, 12);
            int i52 = i50 + c16;
            int c17 = c(c15 ^ i52, i21);
            int i53 = i51 + c17;
            int c18 = c(c16 ^ i53, i19);
            int i54 = i42 + i38;
            int c19 = c(i30 ^ i54, i11);
            int i55 = i34 + c19;
            int c20 = c(i38 ^ i55, 12);
            int i56 = i54 + c20;
            int c21 = c(c19 ^ i56, i21);
            int i57 = i55 + c21;
            int c22 = c(c20 ^ i57, i19);
            int i58 = i41 + i37;
            int c23 = c(i29 ^ i58, i11);
            int i59 = i33 + c23;
            int c24 = c(i37 ^ i59, 12);
            int i60 = i58 + c24;
            int c25 = c(c23 ^ i60, i21);
            int i61 = i59 + c25;
            int c26 = c(c24 ^ i61, 7);
            int i62 = i48 + c18;
            int c27 = c(c25 ^ i62, 16);
            int i63 = i57 + c27;
            int c28 = c(c18 ^ i63, 12);
            i44 = i62 + c28;
            i29 = c(c27 ^ i44, 8);
            i34 = i63 + i29;
            i39 = c(c28 ^ i34, 7);
            int i64 = i52 + c22;
            int c29 = c(c13 ^ i64, 16);
            int i65 = i61 + c29;
            int c30 = c(c22 ^ i65, 12);
            i43 = i64 + c30;
            i32 = c(c29 ^ i43, 8);
            i33 = i65 + i32;
            i38 = c(c30 ^ i33, 7);
            int i66 = i56 + c26;
            int c31 = c(c17 ^ i66, 16);
            int i67 = i49 + c31;
            int c32 = c(c26 ^ i67, 12);
            i42 = i66 + c32;
            i31 = c(c31 ^ i42, 8);
            i36 = i67 + i31;
            i37 = c(c32 ^ i36, 7);
            int i68 = i60 + c14;
            i11 = 16;
            int c33 = c(c21 ^ i68, 16);
            int i69 = i53 + c33;
            int c34 = c(c14 ^ i69, 12);
            i41 = i68 + c34;
            i30 = c(c33 ^ i41, 8);
            i35 = i69 + i30;
            i40 = c(c34 ^ i35, 7);
            i45 -= 2;
            i19 = 7;
            c10 = 0;
            i21 = 8;
        }
        iArr[c10] = i44;
        iArr[1] = i43;
        iArr[2] = i42;
        iArr[3] = i41;
        iArr[4] = i40;
        iArr[5] = i39;
        iArr[6] = i38;
        iArr[i19] = i37;
        iArr[8] = i36;
        iArr[9] = i35;
        iArr[10] = i34;
        iArr[11] = i33;
        iArr[12] = i32;
        iArr[13] = i31;
        iArr[14] = i30;
        iArr[15] = i29;
    }

    public static int c(int i10, int i11) {
        return (i10 >>> (-i11)) | (i10 << i11);
    }

    public void a(byte[] bArr, byte[] bArr2) {
        int[] iArr = new int[16];
        for (int i10 = 0; i10 < 16; i10++) {
            iArr[i10] = p.r(bArr2, i10 * 4);
        }
        b(12, iArr);
        for (int i11 = 0; i11 < 16; i11++) {
            p.m(iArr[i11], bArr, i11 * 4);
        }
    }
}
