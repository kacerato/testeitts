package Wl;

import android.text.Spanned;
import java.math.BigInteger;
import java.util.Random;
import ok.AbstractC14580b;
import org.eclipse.jdt.internal.core.nd.db.Database;
import org.luaj.vm2.Lua;

public class f {

    public static Random f27805d = new Random();

    public static final boolean[] f27806e = {false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false};

    public static final short[] f27807f = {0, 1, 4, 5, 16, 17, 20, 21, 64, 65, 68, 69, 80, 81, 84, 85, Database.POOL_FIRST_NODE_TYPE, 257, 260, 261, 272, 273, 276, 277, 320, 321, 324, 325, 336, 337, 340, 341, 1024, 1025, 1028, 1029, 1040, 1041, 1044, 1045, 1088, 1089, 1092, 1093, 1104, 1105, 1108, 1109, 1280, 1281, 1284, 1285, 1296, 1297, 1300, 1301, 1344, 1345, 1348, 1349, 1360, 1361, 1364, 1365, 4096, 4097, 4100, 4101, 4112, 4113, 4116, 4117, 4160, 4161, 4164, 4165, 4176, 4177, 4180, 4181, 4352, 4353, 4356, 4357, 4368, 4369, 4372, 4373, 4416, 4417, 4420, 4421, 4432, 4433, 4436, 4437, 5120, 5121, 5124, 5125, 5136, 5137, 5140, 5141, 5184, 5185, 5188, 5189, 5200, 5201, 5204, 5205, 5376, 5377, 5380, 5381, 5392, 5393, 5396, 5397, 5440, 5441, 5444, 5445, 5456, 5457, 5460, 5461, com.google.common.primitives.s.f67074b, 16385, 16388, 16389, 16400, 16401, 16404, 16405, 16448, 16449, 16452, 16453, 16464, 16465, 16468, 16469, 16640, 16641, 16644, 16645, 16656, 16657, 16660, 16661, 16704, 16705, 16708, 16709, 16720, 16721, 16724, 16725, 17408, 17409, 17412, 17413, 17424, 17425, 17428, 17429, 17472, 17473, 17476, 17477, 17488, 17489, 17492, 17493, 17664, 17665, 17668, 17669, 17680, 17681, 17684, 17685, 17728, 17729, 17732, 17733, 17744, 17745, 17748, 17749, 20480, 20481, 20484, 20485, 20496, 20497, 20500, 20501, 20544, 20545, 20548, 20549, 20560, 20561, 20564, 20565, 20736, 20737, 20740, 20741, 20752, 20753, 20756, 20757, 20800, 20801, 20804, 20805, 20816, 20817, 20820, 20821, 21504, 21505, 21508, 21509, 21520, 21521, 21524, 21525, 21568, 21569, 21572, 21573, 21584, 21585, 21588, 21589, 21760, 21761, 21764, 21765, 21776, 21777, 21780, 21781, 21824, 21825, 21828, 21829, 21840, 21841, 21844, 21845};

    public static final int[] f27808g = {1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768, 65536, 131072, 262144, 524288, 1048576, 2097152, 4194304, 8388608, 16777216, 33554432, 67108864, 134217728, 268435456, 536870912, 1073741824, Integer.MIN_VALUE, 0};

    public static final int[] f27809h = {0, 1, 3, 7, 15, 31, 63, 127, 255, 511, 1023, 2047, 4095, 8191, 16383, 32767, 65535, Lua.MAXARG_sBx, 262143, 524287, 1048575, 2097151, 4194303, 8388607, 16777215, AbstractC14580b.f99078c, 67108863, 134217727, ok.d.f99088b, 536870911, 1073741823, Integer.MAX_VALUE, -1};

    public int f27810a;

    public int f27811b;

    public int[] f27812c;

    public f(int i10) {
        i10 = i10 < 1 ? 1 : i10;
        int i11 = ((i10 - 1) >> 5) + 1;
        this.f27811b = i11;
        this.f27812c = new int[i11];
        this.f27810a = i10;
    }

    public static int[] t(int[] iArr, int[] iArr2) {
        int[] iArr3 = new int[8];
        int[] iArr4 = new int[2];
        System.arraycopy(iArr, 0, iArr4, 0, Math.min(2, iArr.length));
        int[] iArr5 = new int[2];
        if (iArr.length > 2) {
            System.arraycopy(iArr, 2, iArr5, 0, Math.min(2, iArr.length - 2));
        }
        int[] iArr6 = new int[2];
        System.arraycopy(iArr2, 0, iArr6, 0, Math.min(2, iArr2.length));
        int[] iArr7 = new int[2];
        if (iArr2.length > 2) {
            System.arraycopy(iArr2, 2, iArr7, 0, Math.min(2, iArr2.length - 2));
        }
        if (iArr5[1] == 0 && iArr7[1] == 0) {
            int i10 = iArr5[0];
            if (i10 != 0 || iArr7[0] != 0) {
                int[] v10 = v(i10, iArr7[0]);
                int i11 = iArr3[5];
                int i12 = v10[1];
                iArr3[5] = i11 ^ i12;
                int i13 = iArr3[4];
                int i14 = v10[0];
                iArr3[4] = i13 ^ i14;
                iArr3[3] = iArr3[3] ^ i12;
                iArr3[2] = i14 ^ iArr3[2];
            }
        } else {
            int[] x10 = x(iArr5, iArr7);
            int i15 = iArr3[7];
            int i16 = x10[3];
            iArr3[7] = i15 ^ i16;
            int i17 = iArr3[6];
            int i18 = x10[2];
            iArr3[6] = i17 ^ i18;
            int i19 = iArr3[5];
            int i20 = x10[1];
            iArr3[5] = i19 ^ (i16 ^ i20);
            int i21 = iArr3[4];
            int i22 = x10[0];
            iArr3[4] = i21 ^ (i22 ^ i18);
            iArr3[3] = iArr3[3] ^ i20;
            iArr3[2] = i22 ^ iArr3[2];
        }
        iArr5[0] = iArr5[0] ^ iArr4[0];
        iArr5[1] = iArr5[1] ^ iArr4[1];
        int i23 = iArr7[0] ^ iArr6[0];
        iArr7[0] = i23;
        int i24 = iArr7[1] ^ iArr6[1];
        iArr7[1] = i24;
        if (iArr5[1] == 0 && i24 == 0) {
            int[] v11 = v(iArr5[0], i23);
            iArr3[3] = iArr3[3] ^ v11[1];
            iArr3[2] = v11[0] ^ iArr3[2];
        } else {
            int[] x11 = x(iArr5, iArr7);
            iArr3[5] = iArr3[5] ^ x11[3];
            iArr3[4] = iArr3[4] ^ x11[2];
            iArr3[3] = iArr3[3] ^ x11[1];
            iArr3[2] = x11[0] ^ iArr3[2];
        }
        if (iArr4[1] == 0 && iArr6[1] == 0) {
            int[] v12 = v(iArr4[0], iArr6[0]);
            int i25 = iArr3[3];
            int i26 = v12[1];
            iArr3[3] = i25 ^ i26;
            int i27 = iArr3[2];
            int i28 = v12[0];
            iArr3[2] = i27 ^ i28;
            iArr3[1] = iArr3[1] ^ i26;
            iArr3[0] = i28 ^ iArr3[0];
        } else {
            int[] x12 = x(iArr4, iArr6);
            int i29 = iArr3[5];
            int i30 = x12[3];
            iArr3[5] = i29 ^ i30;
            int i31 = iArr3[4];
            int i32 = x12[2];
            iArr3[4] = i31 ^ i32;
            int i33 = iArr3[3];
            int i34 = x12[1];
            iArr3[3] = i33 ^ (i30 ^ i34);
            int i35 = iArr3[2];
            int i36 = x12[0];
            iArr3[2] = i35 ^ (i36 ^ i32);
            iArr3[1] = iArr3[1] ^ i34;
            iArr3[0] = i36 ^ iArr3[0];
        }
        return iArr3;
    }

    public static int[] u(int[] iArr, int[] iArr2) {
        int[] iArr3 = new int[16];
        int[] iArr4 = new int[4];
        System.arraycopy(iArr, 0, iArr4, 0, Math.min(4, iArr.length));
        int[] iArr5 = new int[4];
        if (iArr.length > 4) {
            System.arraycopy(iArr, 4, iArr5, 0, Math.min(4, iArr.length - 4));
        }
        int[] iArr6 = new int[4];
        System.arraycopy(iArr2, 0, iArr6, 0, Math.min(4, iArr2.length));
        int[] iArr7 = new int[4];
        if (iArr2.length > 4) {
            System.arraycopy(iArr2, 4, iArr7, 0, Math.min(4, iArr2.length - 4));
        }
        if (iArr5[3] != 0 || iArr5[2] != 0 || iArr7[3] != 0 || iArr7[2] != 0) {
            int[] t10 = t(iArr5, iArr7);
            int i10 = iArr3[15];
            int i11 = t10[7];
            iArr3[15] = i10 ^ i11;
            int i12 = iArr3[14];
            int i13 = t10[6];
            iArr3[14] = i12 ^ i13;
            int i14 = iArr3[13];
            int i15 = t10[5];
            iArr3[13] = i14 ^ i15;
            int i16 = iArr3[12];
            int i17 = t10[4];
            iArr3[12] = i16 ^ i17;
            int i18 = iArr3[11];
            int i19 = t10[3];
            iArr3[11] = i18 ^ (i19 ^ i11);
            int i20 = iArr3[10];
            int i21 = t10[2];
            iArr3[10] = i20 ^ (i21 ^ i13);
            int i22 = iArr3[9];
            int i23 = t10[1];
            iArr3[9] = i22 ^ (i23 ^ i15);
            int i24 = iArr3[8];
            int i25 = t10[0];
            iArr3[8] = i24 ^ (i25 ^ i17);
            iArr3[7] = iArr3[7] ^ i19;
            iArr3[6] = iArr3[6] ^ i21;
            iArr3[5] = iArr3[5] ^ i23;
            iArr3[4] = i25 ^ iArr3[4];
        } else if (iArr5[1] == 0 && iArr7[1] == 0) {
            int i26 = iArr5[0];
            if (i26 != 0 || iArr7[0] != 0) {
                int[] v10 = v(i26, iArr7[0]);
                int i27 = iArr3[9];
                int i28 = v10[1];
                iArr3[9] = i27 ^ i28;
                int i29 = iArr3[8];
                int i30 = v10[0];
                iArr3[8] = i29 ^ i30;
                iArr3[5] = iArr3[5] ^ i28;
                iArr3[4] = i30 ^ iArr3[4];
            }
        } else {
            int[] x10 = x(iArr5, iArr7);
            int i31 = iArr3[11];
            int i32 = x10[3];
            iArr3[11] = i31 ^ i32;
            int i33 = iArr3[10];
            int i34 = x10[2];
            iArr3[10] = i33 ^ i34;
            int i35 = iArr3[9];
            int i36 = x10[1];
            iArr3[9] = i35 ^ i36;
            int i37 = iArr3[8];
            int i38 = x10[0];
            iArr3[8] = i37 ^ i38;
            iArr3[7] = iArr3[7] ^ i32;
            iArr3[6] = iArr3[6] ^ i34;
            iArr3[5] = iArr3[5] ^ i36;
            iArr3[4] = i38 ^ iArr3[4];
        }
        iArr5[0] = iArr5[0] ^ iArr4[0];
        iArr5[1] = iArr5[1] ^ iArr4[1];
        iArr5[2] = iArr5[2] ^ iArr4[2];
        iArr5[3] = iArr5[3] ^ iArr4[3];
        iArr7[0] = iArr7[0] ^ iArr6[0];
        iArr7[1] = iArr7[1] ^ iArr6[1];
        iArr7[2] = iArr7[2] ^ iArr6[2];
        iArr7[3] = iArr7[3] ^ iArr6[3];
        int[] t11 = t(iArr5, iArr7);
        iArr3[11] = iArr3[11] ^ t11[7];
        iArr3[10] = iArr3[10] ^ t11[6];
        iArr3[9] = iArr3[9] ^ t11[5];
        iArr3[8] = iArr3[8] ^ t11[4];
        iArr3[7] = iArr3[7] ^ t11[3];
        iArr3[6] = iArr3[6] ^ t11[2];
        iArr3[5] = iArr3[5] ^ t11[1];
        iArr3[4] = t11[0] ^ iArr3[4];
        int[] t12 = t(iArr4, iArr6);
        int i39 = iArr3[11];
        int i40 = t12[7];
        iArr3[11] = i39 ^ i40;
        int i41 = iArr3[10];
        int i42 = t12[6];
        iArr3[10] = i41 ^ i42;
        int i43 = iArr3[9];
        int i44 = t12[5];
        iArr3[9] = i43 ^ i44;
        int i45 = iArr3[8];
        int i46 = t12[4];
        iArr3[8] = i45 ^ i46;
        int i47 = iArr3[7];
        int i48 = t12[3];
        iArr3[7] = i47 ^ (i40 ^ i48);
        int i49 = iArr3[6];
        int i50 = t12[2];
        iArr3[6] = i49 ^ (i42 ^ i50);
        int i51 = iArr3[5];
        int i52 = t12[1];
        iArr3[5] = i51 ^ (i44 ^ i52);
        int i53 = iArr3[4];
        int i54 = t12[0];
        iArr3[4] = i53 ^ (i54 ^ i46);
        iArr3[3] = iArr3[3] ^ i48;
        iArr3[2] = iArr3[2] ^ i50;
        iArr3[1] = iArr3[1] ^ i52;
        iArr3[0] = i54 ^ iArr3[0];
        return iArr3;
    }

    public static int[] v(int i10, int i11) {
        int[] iArr = new int[2];
        if (i10 != 0 && i11 != 0) {
            long j10 = i11 & 4294967295L;
            long j11 = 0;
            for (int i12 = 1; i12 <= 32; i12++) {
                if ((f27808g[i12 - 1] & i10) != 0) {
                    j11 ^= j10;
                }
                j10 <<= 1;
            }
            iArr[1] = (int) (j11 >>> 32);
            iArr[0] = (int) (j11 & 4294967295L);
        }
        return iArr;
    }

    public static int[] w(int[] iArr, int[] iArr2) {
        int[] iArr3 = new int[32];
        int[] iArr4 = new int[8];
        System.arraycopy(iArr, 0, iArr4, 0, Math.min(8, iArr.length));
        int[] iArr5 = new int[8];
        if (iArr.length > 8) {
            System.arraycopy(iArr, 8, iArr5, 0, Math.min(8, iArr.length - 8));
        }
        int[] iArr6 = new int[8];
        System.arraycopy(iArr2, 0, iArr6, 0, Math.min(8, iArr2.length));
        int[] iArr7 = new int[8];
        if (iArr2.length > 8) {
            System.arraycopy(iArr2, 8, iArr7, 0, Math.min(8, iArr2.length - 8));
        }
        int[] u10 = u(iArr5, iArr7);
        int i10 = iArr3[31];
        int i11 = u10[15];
        iArr3[31] = i10 ^ i11;
        int i12 = iArr3[30];
        int i13 = u10[14];
        iArr3[30] = i12 ^ i13;
        int i14 = iArr3[29];
        int i15 = u10[13];
        iArr3[29] = i14 ^ i15;
        int i16 = iArr3[28];
        int i17 = u10[12];
        iArr3[28] = i16 ^ i17;
        int i18 = iArr3[27];
        int i19 = u10[11];
        iArr3[27] = i18 ^ i19;
        int i20 = iArr3[26];
        int i21 = u10[10];
        iArr3[26] = i20 ^ i21;
        int i22 = iArr3[25];
        int i23 = u10[9];
        iArr3[25] = i22 ^ i23;
        int i24 = iArr3[24];
        int i25 = u10[8];
        iArr3[24] = i24 ^ i25;
        int i26 = iArr3[23];
        int i27 = u10[7];
        iArr3[23] = i26 ^ (i27 ^ i11);
        int i28 = iArr3[22];
        int i29 = u10[6];
        iArr3[22] = i28 ^ (i29 ^ i13);
        int i30 = iArr3[21];
        int i31 = u10[5];
        iArr3[21] = i30 ^ (i31 ^ i15);
        int i32 = iArr3[20];
        int i33 = u10[4];
        iArr3[20] = i32 ^ (i33 ^ i17);
        int i34 = iArr3[19];
        int i35 = u10[3];
        iArr3[19] = i34 ^ (i35 ^ i19);
        int i36 = iArr3[18];
        int i37 = u10[2];
        iArr3[18] = i36 ^ (i37 ^ i21);
        int i38 = iArr3[17];
        int i39 = u10[1];
        iArr3[17] = i38 ^ (i39 ^ i23);
        int i40 = iArr3[16];
        int i41 = u10[0];
        iArr3[16] = i40 ^ (i41 ^ i25);
        iArr3[15] = iArr3[15] ^ i27;
        iArr3[14] = iArr3[14] ^ i29;
        iArr3[13] = iArr3[13] ^ i31;
        iArr3[12] = iArr3[12] ^ i33;
        iArr3[11] = iArr3[11] ^ i35;
        iArr3[10] = iArr3[10] ^ i37;
        iArr3[9] = iArr3[9] ^ i39;
        iArr3[8] = iArr3[8] ^ i41;
        iArr5[0] = iArr5[0] ^ iArr4[0];
        iArr5[1] = iArr5[1] ^ iArr4[1];
        iArr5[2] = iArr5[2] ^ iArr4[2];
        iArr5[3] = iArr5[3] ^ iArr4[3];
        iArr5[4] = iArr5[4] ^ iArr4[4];
        iArr5[5] = iArr5[5] ^ iArr4[5];
        iArr5[6] = iArr5[6] ^ iArr4[6];
        iArr5[7] = iArr5[7] ^ iArr4[7];
        iArr7[0] = iArr7[0] ^ iArr6[0];
        iArr7[1] = iArr7[1] ^ iArr6[1];
        iArr7[2] = iArr7[2] ^ iArr6[2];
        iArr7[3] = iArr7[3] ^ iArr6[3];
        iArr7[4] = iArr7[4] ^ iArr6[4];
        iArr7[5] = iArr7[5] ^ iArr6[5];
        iArr7[6] = iArr7[6] ^ iArr6[6];
        iArr7[7] = iArr7[7] ^ iArr6[7];
        int[] u11 = u(iArr5, iArr7);
        iArr3[23] = iArr3[23] ^ u11[15];
        iArr3[22] = iArr3[22] ^ u11[14];
        iArr3[21] = iArr3[21] ^ u11[13];
        iArr3[20] = iArr3[20] ^ u11[12];
        iArr3[19] = iArr3[19] ^ u11[11];
        iArr3[18] = iArr3[18] ^ u11[10];
        iArr3[17] = iArr3[17] ^ u11[9];
        iArr3[16] = iArr3[16] ^ u11[8];
        iArr3[15] = iArr3[15] ^ u11[7];
        iArr3[14] = iArr3[14] ^ u11[6];
        iArr3[13] = iArr3[13] ^ u11[5];
        iArr3[12] = iArr3[12] ^ u11[4];
        iArr3[11] = iArr3[11] ^ u11[3];
        iArr3[10] = iArr3[10] ^ u11[2];
        iArr3[9] = iArr3[9] ^ u11[1];
        iArr3[8] = u11[0] ^ iArr3[8];
        int[] u12 = u(iArr4, iArr6);
        int i42 = iArr3[23];
        int i43 = u12[15];
        iArr3[23] = i42 ^ i43;
        int i44 = iArr3[22];
        int i45 = u12[14];
        iArr3[22] = i44 ^ i45;
        int i46 = iArr3[21];
        int i47 = u12[13];
        iArr3[21] = i46 ^ i47;
        int i48 = iArr3[20];
        int i49 = u12[12];
        iArr3[20] = i48 ^ i49;
        int i50 = iArr3[19];
        int i51 = u12[11];
        iArr3[19] = i50 ^ i51;
        int i52 = iArr3[18];
        int i53 = u12[10];
        iArr3[18] = i52 ^ i53;
        int i54 = iArr3[17];
        int i55 = u12[9];
        iArr3[17] = i54 ^ i55;
        int i56 = iArr3[16];
        int i57 = u12[8];
        iArr3[16] = i56 ^ i57;
        int i58 = iArr3[15];
        int i59 = u12[7];
        iArr3[15] = i58 ^ (i43 ^ i59);
        int i60 = iArr3[14];
        int i61 = u12[6];
        iArr3[14] = i60 ^ (i45 ^ i61);
        int i62 = iArr3[13];
        int i63 = u12[5];
        iArr3[13] = i62 ^ (i47 ^ i63);
        int i64 = iArr3[12];
        int i65 = u12[4];
        iArr3[12] = i64 ^ (i49 ^ i65);
        int i66 = iArr3[11];
        int i67 = u12[3];
        iArr3[11] = i66 ^ (i51 ^ i67);
        int i68 = iArr3[10];
        int i69 = u12[2];
        iArr3[10] = i68 ^ (i69 ^ i53);
        int i70 = iArr3[9];
        int i71 = u12[1];
        iArr3[9] = i70 ^ (i71 ^ i55);
        int i72 = iArr3[8];
        int i73 = u12[0];
        iArr3[8] = i72 ^ (i73 ^ i57);
        iArr3[7] = iArr3[7] ^ i59;
        iArr3[6] = iArr3[6] ^ i61;
        iArr3[5] = iArr3[5] ^ i63;
        iArr3[4] = iArr3[4] ^ i65;
        iArr3[3] = iArr3[3] ^ i67;
        iArr3[2] = iArr3[2] ^ i69;
        iArr3[1] = iArr3[1] ^ i71;
        iArr3[0] = i73 ^ iArr3[0];
        return iArr3;
    }

    public static int[] x(int[] iArr, int[] iArr2) {
        int[] iArr3 = new int[4];
        int i10 = iArr[0];
        int i11 = iArr.length > 1 ? iArr[1] : 0;
        int i12 = iArr2[0];
        int i13 = iArr2.length > 1 ? iArr2[1] : 0;
        if (i11 != 0 || i13 != 0) {
            int[] v10 = v(i11, i13);
            int i14 = iArr3[3];
            int i15 = v10[1];
            iArr3[3] = i14 ^ i15;
            int i16 = iArr3[2];
            int i17 = v10[0];
            iArr3[2] = i16 ^ (i17 ^ i15);
            iArr3[1] = i17 ^ iArr3[1];
        }
        int[] v11 = v(i11 ^ i10, i13 ^ i12);
        iArr3[2] = iArr3[2] ^ v11[1];
        iArr3[1] = v11[0] ^ iArr3[1];
        int[] v12 = v(i10, i12);
        int i18 = iArr3[2];
        int i19 = v12[1];
        iArr3[2] = i18 ^ i19;
        int i20 = iArr3[1];
        int i21 = v12[0];
        iArr3[1] = i20 ^ (i19 ^ i21);
        iArr3[0] = i21 ^ iArr3[0];
        return iArr3;
    }

    public f A(f fVar) throws RuntimeException {
        f fVar2 = new f(this.f27810a);
        f fVar3 = new f(this);
        f fVar4 = new f(fVar);
        if (fVar4.q()) {
            throw new RuntimeException();
        }
        fVar3.D();
        fVar4.D();
        int i10 = fVar3.f27810a;
        int i11 = fVar4.f27810a;
        if (i10 < i11) {
            return new f(0);
        }
        int i12 = i10 - i11;
        fVar2.i(i12 + 1);
        while (i12 >= 0) {
            fVar3.T(fVar4.L(i12));
            fVar3.D();
            fVar2.c0(i12);
            i12 = fVar3.f27810a - fVar4.f27810a;
        }
        return fVar2;
    }

    public void B() {
        for (int i10 = 0; i10 < this.f27811b; i10++) {
            this.f27812c[i10] = f27805d.nextInt();
        }
        e0();
    }

    public void C(Random random) {
        for (int i10 = 0; i10 < this.f27811b; i10++) {
            this.f27812c[i10] = random.nextInt();
        }
        e0();
    }

    public void D() {
        int i10;
        int i11 = this.f27811b;
        do {
            i11--;
            i10 = this.f27812c[i11];
            if (i10 != 0) {
                break;
            }
        } while (i11 > 0);
        int i12 = 0;
        while (i10 != 0) {
            i10 >>>= 1;
            i12++;
        }
        this.f27810a = (i11 << 5) + i12;
        this.f27811b = i11 + 1;
    }

    public void E(int i10, int[] iArr) {
        f fVar = this;
        int i11 = i10 >>> 5;
        int i12 = i10 & 31;
        int i13 = 32 - i12;
        boolean z10 = false;
        int i14 = iArr[0];
        int i15 = (i10 - i14) >>> 5;
        int i16 = 32 - ((i10 - i14) & 31);
        int i17 = iArr[1];
        int i18 = (i10 - i17) >>> 5;
        int i19 = 32 - ((i10 - i17) & 31);
        int i20 = iArr[2];
        int i21 = (i10 - i20) >>> 5;
        int i22 = 32 - ((i10 - i20) & 31);
        int i23 = ((i10 << 1) - 2) >>> 5;
        while (i23 > i11) {
            int[] iArr2 = fVar.f27812c;
            long j10 = iArr2[i23] & 4294967295L;
            int i24 = i23 - i11;
            int i25 = i24 - 1;
            int i26 = i11;
            int i27 = i12;
            iArr2[i25] = ((int) (j10 << i13)) ^ iArr2[i25];
            iArr2[i24] = (int) (iArr2[i24] ^ (j10 >>> (32 - i13)));
            int i28 = i23 - i15;
            int i29 = i28 - 1;
            iArr2[i29] = iArr2[i29] ^ ((int) (j10 << i16));
            iArr2[i28] = (int) (iArr2[i28] ^ (j10 >>> (32 - i16)));
            int i30 = i23 - i18;
            int i31 = i30 - 1;
            iArr2[i31] = iArr2[i31] ^ ((int) (j10 << i19));
            iArr2[i30] = (int) (iArr2[i30] ^ (j10 >>> (32 - i19)));
            int i32 = i23 - i21;
            int i33 = i32 - 1;
            iArr2[i33] = iArr2[i33] ^ ((int) (j10 << i22));
            iArr2[i32] = (int) ((j10 >>> (32 - i22)) ^ iArr2[i32]);
            iArr2[i23] = 0;
            i23--;
            z10 = false;
            i11 = i26;
            i12 = i27;
            fVar = this;
        }
        int i34 = i11;
        int i35 = i12;
        int[] iArr3 = fVar.f27812c;
        long j11 = iArr3[i34] & 4294967295L & (4294967295 << i35);
        iArr3[0] = (int) ((j11 >>> (32 - i13)) ^ iArr3[0]);
        int i36 = i34 - i15;
        int i37 = i36 - 1;
        if (i37 >= 0) {
            iArr3[i37] = iArr3[i37] ^ ((int) (j11 << i16));
        }
        iArr3[i36] = (int) (iArr3[i36] ^ (j11 >>> (32 - i16)));
        int i38 = i34 - i18;
        int i39 = i38 - 1;
        if (i39 >= 0) {
            iArr3[i39] = iArr3[i39] ^ ((int) (j11 << i19));
        }
        iArr3[i38] = (int) (iArr3[i38] ^ (j11 >>> (32 - i19)));
        int i40 = i34 - i21;
        int i41 = i40 - 1;
        if (i41 >= 0) {
            iArr3[i41] = iArr3[i41] ^ ((int) (j11 << i22));
        }
        iArr3[i40] = (int) ((j11 >>> (32 - i22)) ^ iArr3[i40]);
        iArr3[i34] = iArr3[i34] & f27809h[i35];
        this.f27811b = ((i10 - 1) >>> 5) + 1;
        this.f27810a = i10;
    }

    public void F(int i10, int i11) {
        int i12 = i10 >>> 5;
        int i13 = i10 & 31;
        int i14 = 32 - i13;
        int i15 = i10 - i11;
        int i16 = i15 >>> 5;
        int i17 = 32 - (i15 & 31);
        int i18 = ((i10 << 1) - 2) >>> 5;
        while (i18 > i12) {
            int[] iArr = this.f27812c;
            long j10 = 4294967295L & iArr[i18];
            int i19 = i18 - i12;
            int i20 = i19 - 1;
            int i21 = i12;
            iArr[i20] = ((int) (j10 << i14)) ^ iArr[i20];
            iArr[i19] = (int) (iArr[i19] ^ (j10 >>> (32 - i14)));
            int i22 = i18 - i16;
            int i23 = i22 - 1;
            iArr[i23] = iArr[i23] ^ ((int) (j10 << i17));
            iArr[i22] = (int) ((j10 >>> (32 - i17)) ^ iArr[i22]);
            iArr[i18] = 0;
            i18--;
            i12 = i21;
        }
        int i24 = i12;
        int[] iArr2 = this.f27812c;
        long j11 = (4294967295 << i13) & iArr2[i24] & 4294967295L;
        iArr2[0] = (int) (iArr2[0] ^ (j11 >>> (32 - i14)));
        int i25 = i24 - i16;
        int i26 = i25 - 1;
        if (i26 >= 0) {
            iArr2[i26] = iArr2[i26] ^ ((int) (j11 << i17));
        }
        iArr2[i25] = (int) ((j11 >>> (32 - i17)) ^ iArr2[i25]);
        iArr2[i24] = iArr2[i24] & f27809h[i13];
        this.f27811b = ((i10 - 1) >>> 5) + 1;
        this.f27810a = i10;
    }

    public f G(f fVar) throws RuntimeException {
        f fVar2 = new f(this);
        f fVar3 = new f(fVar);
        if (fVar3.q()) {
            throw new RuntimeException();
        }
        fVar2.D();
        fVar3.D();
        int i10 = fVar2.f27810a;
        int i11 = fVar3.f27810a;
        if (i10 < i11) {
            return fVar2;
        }
        while (true) {
            int i12 = i10 - i11;
            if (i12 < 0) {
                return fVar2;
            }
            fVar2.T(fVar3.L(i12));
            fVar2.D();
            i10 = fVar2.f27810a;
            i11 = fVar3.f27810a;
        }
    }

    public void H(int i10) throws RuntimeException {
        if (i10 < 0) {
            throw new RuntimeException();
        }
        if (i10 > this.f27810a - 1) {
            return;
        }
        int[] iArr = this.f27812c;
        int i11 = i10 >>> 5;
        iArr[i11] = (~f27808g[i10 & 31]) & iArr[i11];
    }

    public void I(int i10) throws RuntimeException {
        if (i10 < 0 || i10 > this.f27810a - 1) {
            throw new RuntimeException();
        }
        int[] iArr = this.f27812c;
        int i11 = i10 >>> 5;
        iArr[i11] = f27808g[i10 & 31] | iArr[i11];
    }

    public void J() {
        int i10 = this.f27811b;
        int i11 = i10 + 1;
        this.f27811b = i11;
        this.f27810a += 32;
        int[] iArr = this.f27812c;
        if (i11 > iArr.length) {
            int[] iArr2 = new int[i11];
            System.arraycopy(iArr, 0, iArr2, 1, i10);
            this.f27812c = iArr2;
        } else {
            while (i10 >= 1) {
                int[] iArr3 = this.f27812c;
                iArr3[i10] = iArr3[i10 - 1];
                i10--;
            }
            this.f27812c[0] = 0;
        }
    }

    public f K() {
        f fVar = new f(this.f27810a + 1, this.f27812c);
        for (int i10 = fVar.f27811b - 1; i10 >= 1; i10--) {
            int[] iArr = fVar.f27812c;
            int i11 = iArr[i10] << 1;
            iArr[i10] = i11;
            iArr[i10] = i11 | (iArr[i10 - 1] >>> 31);
        }
        int[] iArr2 = fVar.f27812c;
        iArr2[0] = iArr2[0] << 1;
        return fVar;
    }

    public f L(int i10) {
        f fVar = new f(this.f27810a + i10, this.f27812c);
        if (i10 >= 32) {
            fVar.h(i10 >>> 5);
        }
        int i11 = i10 & 31;
        if (i11 != 0) {
            for (int i12 = fVar.f27811b - 1; i12 >= 1; i12--) {
                int[] iArr = fVar.f27812c;
                int i13 = iArr[i12] << i11;
                iArr[i12] = i13;
                iArr[i12] = i13 | (iArr[i12 - 1] >>> (32 - i11));
            }
            int[] iArr2 = fVar.f27812c;
            iArr2[0] = iArr2[0] << i11;
        }
        return fVar;
    }

    public void M(f fVar, int i10) {
        int i11;
        if (i10 == 0) {
            b(fVar);
            return;
        }
        i(fVar.f27810a + i10);
        int i12 = i10 >>> 5;
        for (int i13 = fVar.f27811b - 1; i13 >= 0; i13--) {
            int i14 = i13 + i12;
            int i15 = i14 + 1;
            if (i15 < this.f27811b && (i11 = i10 & 31) != 0) {
                int[] iArr = this.f27812c;
                iArr[i15] = (fVar.f27812c[i13] >>> (32 - i11)) ^ iArr[i15];
            }
            int[] iArr2 = this.f27812c;
            iArr2[i14] = iArr2[i14] ^ (fVar.f27812c[i13] << (i10 & 31));
        }
    }

    public void N() {
        int i10 = this.f27810a;
        int i11 = i10 & 31;
        this.f27810a = i10 + 1;
        int i12 = this.f27811b;
        if (i11 != 0) {
            for (int i13 = i12 - 1; i13 >= 1; i13--) {
                int[] iArr = this.f27812c;
                int i14 = iArr[i13] << 1;
                iArr[i13] = i14;
                iArr[i13] = i14 | (iArr[i13 - 1] >>> 31);
            }
            int[] iArr2 = this.f27812c;
            iArr2[0] = iArr2[0] << 1;
            return;
        }
        int i15 = i12 + 1;
        this.f27811b = i15;
        int[] iArr3 = this.f27812c;
        if (i15 > iArr3.length) {
            int[] iArr4 = new int[i15];
            System.arraycopy(iArr3, 0, iArr4, 0, iArr3.length);
            this.f27812c = iArr4;
        }
        for (int i16 = this.f27811b - 1; i16 >= 1; i16--) {
            int[] iArr5 = this.f27812c;
            int i17 = i16 - 1;
            iArr5[i16] = iArr5[i16] | (iArr5[i17] >>> 31);
            iArr5[i17] = iArr5[i17] << 1;
        }
    }

    public f O() {
        int i10;
        f fVar = new f(this.f27810a - 1);
        int i11 = 0;
        System.arraycopy(this.f27812c, 0, fVar.f27812c, 0, fVar.f27811b);
        while (true) {
            i10 = fVar.f27811b;
            if (i11 > i10 - 2) {
                break;
            }
            int[] iArr = fVar.f27812c;
            int i12 = iArr[i11] >>> 1;
            iArr[i11] = i12;
            int i13 = i11 + 1;
            iArr[i11] = i12 | (iArr[i13] << 31);
            i11 = i13;
        }
        int[] iArr2 = fVar.f27812c;
        int i14 = i10 - 1;
        iArr2[i14] = iArr2[i14] >>> 1;
        if (i10 < this.f27811b) {
            int i15 = i10 - 1;
            iArr2[i15] = (this.f27812c[i10] << 31) | iArr2[i15];
        }
        return fVar;
    }

    public void P() {
        int i10;
        int i11 = this.f27810a;
        this.f27810a = i11 - 1;
        this.f27811b = ((i11 - 2) >>> 5) + 1;
        int i12 = 0;
        while (true) {
            i10 = this.f27811b;
            if (i12 > i10 - 2) {
                break;
            }
            int[] iArr = this.f27812c;
            int i13 = iArr[i12] >>> 1;
            iArr[i12] = i13;
            int i14 = i12 + 1;
            iArr[i12] = i13 | (iArr[i14] << 31);
            i12 = i14;
        }
        int[] iArr2 = this.f27812c;
        int i15 = i10 - 1;
        iArr2[i15] = iArr2[i15] >>> 1;
        if ((this.f27810a & 31) == 0) {
            int i16 = i10 - 1;
            iArr2[i16] = (iArr2[i10] << 31) | iArr2[i16];
        }
    }

    public void Q() {
        if (q()) {
            return;
        }
        int i10 = this.f27811b;
        int i11 = i10 << 1;
        int[] iArr = new int[i11];
        for (int i12 = i10 - 1; i12 >= 0; i12--) {
            int i13 = this.f27812c[i12];
            int i14 = 1;
            for (int i15 = 0; i15 < 16; i15++) {
                if ((i13 & 1) != 0) {
                    int i16 = i12 << 1;
                    iArr[i16] = iArr[i16] | i14;
                }
                if ((65536 & i13) != 0) {
                    int i17 = (i12 << 1) + 1;
                    iArr[i17] = iArr[i17] | i14;
                }
                i14 <<= 2;
                i13 >>>= 1;
            }
        }
        this.f27812c = iArr;
        this.f27811b = i11;
        this.f27810a = (this.f27810a << 1) - 1;
    }

    public void R() {
        int i10;
        int i11;
        if (q()) {
            return;
        }
        int length = this.f27812c.length;
        int i12 = this.f27811b;
        if (length >= (i12 << 1)) {
            for (int i13 = i12 - 1; i13 >= 0; i13--) {
                int[] iArr = this.f27812c;
                int i14 = i13 << 1;
                short[] sArr = f27807f;
                int i15 = iArr[i13];
                iArr[i14 + 1] = (sArr[(i15 & (-16777216)) >>> 24] << 16) | sArr[(i15 & Spanned.SPAN_PRIORITY) >>> 16];
                int i16 = iArr[i13];
                iArr[i14] = (sArr[(i16 & 65280) >>> 8] << 16) | sArr[i16 & 255];
            }
            i11 = this.f27811b << 1;
        } else {
            int[] iArr2 = new int[i12 << 1];
            int i17 = 0;
            while (true) {
                i10 = this.f27811b;
                if (i17 >= i10) {
                    break;
                }
                int i18 = i17 << 1;
                short[] sArr2 = f27807f;
                int[] iArr3 = this.f27812c;
                int i19 = iArr3[i17];
                iArr2[i18] = (sArr2[(i19 & 65280) >>> 8] << 16) | sArr2[i19 & 255];
                int i20 = iArr3[i17];
                iArr2[i18 + 1] = (sArr2[(i20 & (-16777216)) >>> 24] << 16) | sArr2[(i20 & Spanned.SPAN_PRIORITY) >>> 16];
                i17++;
            }
            this.f27812c = iArr2;
            i11 = i10 << 1;
        }
        this.f27811b = i11;
        this.f27810a = (this.f27810a << 1) - 1;
    }

    public f S(f fVar) {
        return b0(fVar);
    }

    public void T(f fVar) {
        i(fVar.f27810a);
        d0(fVar);
    }

    public boolean U(int i10) {
        if (i10 < 0) {
            throw new RuntimeException();
        }
        if (i10 > this.f27810a - 1) {
            return false;
        }
        return (f27808g[i10 & 31] & this.f27812c[i10 >>> 5]) != 0;
    }

    public byte[] V() {
        int i10 = ((this.f27810a - 1) >> 3) + 1;
        int i11 = i10 & 3;
        byte[] bArr = new byte[i10];
        for (int i12 = 0; i12 < (i10 >> 2); i12++) {
            int i13 = i10 - (i12 << 2);
            int i14 = this.f27812c[i12];
            bArr[i13 - 1] = (byte) (i14 & 255);
            bArr[i13 - 2] = (byte) ((65280 & i14) >>> 8);
            bArr[i13 - 3] = (byte) ((16711680 & i14) >>> 16);
            bArr[i13 - 4] = (byte) (((-16777216) & i14) >>> 24);
        }
        for (int i15 = 0; i15 < i11; i15++) {
            int i16 = ((i11 - i15) - 1) << 3;
            bArr[i15] = (byte) ((this.f27812c[this.f27811b - 1] & (255 << i16)) >>> i16);
        }
        return bArr;
    }

    public BigInteger W() {
        return (this.f27810a == 0 || q()) ? new BigInteger(0, new byte[0]) : new BigInteger(1, V());
    }

    public int[] X() {
        int i10 = this.f27811b;
        int[] iArr = new int[i10];
        System.arraycopy(this.f27812c, 0, iArr, 0, i10);
        return iArr;
    }

    public String Y(int i10) {
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        String[] strArr = {"0000", "0001", "0010", "0011", "0100", "0101", "0110", "0111", "1000", "1001", "1010", "1011", "1100", "1101", "1110", "1111"};
        String str = new String();
        if (i10 == 16) {
            for (int i11 = this.f27811b - 1; i11 >= 0; i11--) {
                str = ((((((((str + cArr[(this.f27812c[i11] >>> 28) & 15]) + cArr[(this.f27812c[i11] >>> 24) & 15]) + cArr[(this.f27812c[i11] >>> 20) & 15]) + cArr[(this.f27812c[i11] >>> 16) & 15]) + cArr[(this.f27812c[i11] >>> 12) & 15]) + cArr[(this.f27812c[i11] >>> 8) & 15]) + cArr[(this.f27812c[i11] >>> 4) & 15]) + cArr[this.f27812c[i11] & 15]) + " ";
            }
        } else {
            for (int i12 = this.f27811b - 1; i12 >= 0; i12--) {
                str = ((((((((str + strArr[(this.f27812c[i12] >>> 28) & 15]) + strArr[(this.f27812c[i12] >>> 24) & 15]) + strArr[(this.f27812c[i12] >>> 20) & 15]) + strArr[(this.f27812c[i12] >>> 16) & 15]) + strArr[(this.f27812c[i12] >>> 12) & 15]) + strArr[(this.f27812c[i12] >>> 8) & 15]) + strArr[(this.f27812c[i12] >>> 4) & 15]) + strArr[this.f27812c[i12] & 15]) + " ";
            }
        }
        return str;
    }

    public final f Z(int i10) {
        int min = Math.min(i10, this.f27811b - i10);
        f fVar = new f(min << 5);
        if (this.f27811b >= i10) {
            System.arraycopy(this.f27812c, i10, fVar.f27812c, 0, min);
        }
        return fVar;
    }

    public f a(f fVar) {
        return b0(fVar);
    }

    public boolean a0(f fVar) throws RuntimeException {
        if (this.f27810a != fVar.f27810a) {
            throw new RuntimeException();
        }
        boolean z10 = false;
        for (int i10 = 0; i10 < this.f27811b; i10++) {
            int i11 = this.f27812c[i10] & fVar.f27812c[i10];
            boolean[] zArr = f27806e;
            z10 = (((z10 ^ zArr[i11 & 255]) ^ zArr[(i11 >>> 8) & 255]) ^ zArr[(i11 >>> 16) & 255]) ^ zArr[(i11 >>> 24) & 255];
        }
        return z10;
    }

    public void b(f fVar) {
        i(fVar.f27810a);
        d0(fVar);
    }

    public f b0(f fVar) {
        f fVar2;
        int min = Math.min(this.f27811b, fVar.f27811b);
        int i10 = 0;
        if (this.f27810a >= fVar.f27810a) {
            fVar2 = new f(this);
            while (i10 < min) {
                int[] iArr = fVar2.f27812c;
                iArr[i10] = iArr[i10] ^ fVar.f27812c[i10];
                i10++;
            }
        } else {
            fVar2 = new f(fVar);
            while (i10 < min) {
                int[] iArr2 = fVar2.f27812c;
                iArr2[i10] = iArr2[i10] ^ this.f27812c[i10];
                i10++;
            }
        }
        fVar2.e0();
        return fVar2;
    }

    public void c() {
        for (int i10 = 0; i10 < this.f27811b; i10++) {
            this.f27812c[i10] = -1;
        }
        e0();
    }

    public void c0(int i10) throws RuntimeException {
        if (i10 < 0 || i10 > this.f27810a - 1) {
            throw new RuntimeException();
        }
        int[] iArr = this.f27812c;
        int i11 = i10 >>> 5;
        iArr[i11] = f27808g[i10 & 31] ^ iArr[i11];
    }

    public Object clone() {
        return new f(this);
    }

    public void d() {
        for (int i10 = 1; i10 < this.f27811b; i10++) {
            this.f27812c[i10] = 0;
        }
        this.f27812c[0] = 1;
    }

    public void d0(f fVar) {
        for (int i10 = 0; i10 < Math.min(this.f27811b, fVar.f27811b); i10++) {
            int[] iArr = this.f27812c;
            iArr[i10] = iArr[i10] ^ fVar.f27812c[i10];
        }
        e0();
    }

    public void e() {
        for (int i10 = 1; i10 < this.f27811b; i10++) {
            this.f27812c[i10] = 0;
        }
        this.f27812c[0] = 2;
    }

    public final void e0() {
        int i10 = this.f27810a;
        if ((i10 & 31) != 0) {
            int[] iArr = this.f27812c;
            int i11 = this.f27811b - 1;
            iArr[i11] = f27809h[i10 & 31] & iArr[i11];
        }
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        if (this.f27810a != fVar.f27810a) {
            return false;
        }
        for (int i10 = 0; i10 < this.f27811b; i10++) {
            if (this.f27812c[i10] != fVar.f27812c[i10]) {
                return false;
            }
        }
        return true;
    }

    public void f() {
        for (int i10 = 0; i10 < this.f27811b; i10++) {
            this.f27812c[i10] = 0;
        }
    }

    public f[] g(f fVar) throws RuntimeException {
        f[] fVarArr = new f[2];
        f fVar2 = new f(this.f27810a);
        f fVar3 = new f(this);
        f fVar4 = new f(fVar);
        if (fVar4.q()) {
            throw new RuntimeException();
        }
        fVar3.D();
        fVar4.D();
        int i10 = fVar3.f27810a;
        int i11 = fVar4.f27810a;
        if (i10 < i11) {
            fVarArr[0] = new f(0);
            fVarArr[1] = fVar3;
            return fVarArr;
        }
        int i12 = i10 - i11;
        fVar2.i(i12 + 1);
        while (i12 >= 0) {
            fVar3.T(fVar4.L(i12));
            fVar3.D();
            fVar2.c0(i12);
            i12 = fVar3.f27810a - fVar4.f27810a;
        }
        fVarArr[0] = fVar2;
        fVarArr[1] = fVar3;
        return fVarArr;
    }

    public final void h(int i10) {
        int i11 = this.f27811b;
        int[] iArr = this.f27812c;
        if (i11 > iArr.length) {
            int[] iArr2 = new int[i11];
            System.arraycopy(iArr, 0, iArr2, i10, i11 - i10);
            this.f27812c = iArr2;
            return;
        }
        for (int i12 = i11 - 1; i12 >= i10; i12--) {
            int[] iArr3 = this.f27812c;
            iArr3[i12] = iArr3[i12 - i10];
        }
        for (int i13 = 0; i13 < i10; i13++) {
            this.f27812c[i13] = 0;
        }
    }

    public int hashCode() {
        return this.f27810a + org.bouncycastle.util.a.w0(this.f27812c);
    }

    public void i(int i10) {
        if (this.f27810a >= i10) {
            return;
        }
        this.f27810a = i10;
        int i11 = ((i10 - 1) >>> 5) + 1;
        int i12 = this.f27811b;
        if (i12 >= i11) {
            return;
        }
        int[] iArr = this.f27812c;
        if (iArr.length >= i11) {
            while (i12 < i11) {
                this.f27812c[i12] = 0;
                i12++;
            }
            this.f27811b = i11;
            return;
        }
        int[] iArr2 = new int[i11];
        System.arraycopy(iArr, 0, iArr2, 0, i12);
        this.f27811b = i11;
        this.f27812c = iArr2;
    }

    public f j(f fVar) throws RuntimeException {
        if (q() && fVar.q()) {
            throw new ArithmeticException("Both operands of gcd equal zero.");
        }
        if (q()) {
            return new f(fVar);
        }
        if (fVar.q()) {
            return new f(this);
        }
        f fVar2 = new f(this);
        f fVar3 = new f(fVar);
        f fVar4 = fVar2;
        f fVar5 = fVar3;
        while (!fVar5.q()) {
            f fVar6 = fVar5;
            fVar5 = fVar4.G(fVar5);
            fVar4 = fVar6;
        }
        return fVar4;
    }

    public int k(int i10) {
        if (i10 < 0) {
            throw new RuntimeException();
        }
        if (i10 > this.f27810a - 1) {
            return 0;
        }
        return (f27808g[i10 & 31] & this.f27812c[i10 >>> 5]) != 0 ? 1 : 0;
    }

    public int l() {
        return this.f27810a;
    }

    public f m() {
        f fVar = new f(this);
        fVar.n();
        return fVar;
    }

    public void n() {
        c0(0);
    }

    public boolean o() {
        if (q()) {
            return false;
        }
        f fVar = new f(this);
        fVar.D();
        int i10 = fVar.f27810a;
        int i11 = i10 - 1;
        f fVar2 = new f(i10, "X");
        for (int i12 = 1; i12 <= (i11 >> 1); i12++) {
            fVar2.R();
            fVar2 = fVar2.G(fVar);
            f a10 = fVar2.a(new f(32, "X"));
            if (a10.q() || !fVar.j(a10).p()) {
                return false;
            }
        }
        return true;
    }

    public boolean p() {
        for (int i10 = 1; i10 < this.f27811b; i10++) {
            if (this.f27812c[i10] != 0) {
                return false;
            }
        }
        return this.f27812c[0] == 1;
    }

    public boolean q() {
        if (this.f27810a == 0) {
            return true;
        }
        for (int i10 = 0; i10 < this.f27811b; i10++) {
            if (this.f27812c[i10] != 0) {
                return false;
            }
        }
        return true;
    }

    public final f r(f fVar) {
        f fVar2 = new f(this.f27810a << 1);
        int i10 = this.f27810a;
        if (i10 <= 32) {
            fVar2.f27812c = v(this.f27812c[0], fVar.f27812c[0]);
            return fVar2;
        }
        if (i10 <= 64) {
            fVar2.f27812c = x(this.f27812c, fVar.f27812c);
            return fVar2;
        }
        if (i10 <= 128) {
            fVar2.f27812c = t(this.f27812c, fVar.f27812c);
            return fVar2;
        }
        if (i10 <= 256) {
            fVar2.f27812c = u(this.f27812c, fVar.f27812c);
            return fVar2;
        }
        if (i10 <= 512) {
            fVar2.f27812c = w(this.f27812c, fVar.f27812c);
            return fVar2;
        }
        int i11 = f27808g[u.l(i10 - 1)];
        int i12 = ((i11 - 1) >> 5) + 1;
        f s10 = s(i12);
        f Z10 = Z(i12);
        f s11 = fVar.s(i12);
        f Z11 = fVar.Z(i12);
        f r10 = Z10.r(Z11);
        f r11 = s10.r(s11);
        s10.b(Z10);
        s11.b(Z11);
        f r12 = s10.r(s11);
        fVar2.M(r10, i11 << 1);
        fVar2.M(r10, i11);
        fVar2.M(r12, i11);
        fVar2.M(r11, i11);
        fVar2.b(r11);
        return fVar2;
    }

    public final f s(int i10) {
        f fVar = new f(i10 << 5);
        System.arraycopy(this.f27812c, 0, fVar.f27812c, 0, Math.min(i10, this.f27811b));
        return fVar;
    }

    public f y(f fVar) {
        int max = Math.max(this.f27810a, fVar.f27810a);
        i(max);
        fVar.i(max);
        return r(fVar);
    }

    public f z(f fVar) {
        f fVar2 = new f(Math.max(this.f27810a, fVar.f27810a) << 1);
        f[] fVarArr = new f[32];
        fVarArr[0] = new f(this);
        for (int i10 = 1; i10 <= 31; i10++) {
            fVarArr[i10] = fVarArr[i10 - 1].K();
        }
        for (int i11 = 0; i11 < fVar.f27811b; i11++) {
            for (int i12 = 0; i12 <= 31; i12++) {
                if ((fVar.f27812c[i11] & f27808g[i12]) != 0) {
                    fVar2.d0(fVarArr[i12]);
                }
            }
            for (int i13 = 0; i13 <= 31; i13++) {
                fVarArr[i13].J();
            }
        }
        return fVar2;
    }

    public f(int i10, String str) {
        i10 = i10 < 1 ? 1 : i10;
        int i11 = ((i10 - 1) >> 5) + 1;
        this.f27811b = i11;
        this.f27812c = new int[i11];
        this.f27810a = i10;
        if (str.equalsIgnoreCase("ZERO")) {
            f();
            return;
        }
        if (str.equalsIgnoreCase("ONE")) {
            d();
            return;
        }
        if (str.equalsIgnoreCase("RANDOM")) {
            B();
            return;
        }
        if (str.equalsIgnoreCase("X")) {
            e();
            return;
        }
        if (str.equalsIgnoreCase("ALL")) {
            c();
            return;
        }
        throw new IllegalArgumentException("Error: GF2Polynomial was called using " + str + " as value!");
    }

    public f(int i10, BigInteger bigInteger) {
        i10 = i10 < 1 ? 1 : i10;
        int i11 = ((i10 - 1) >> 5) + 1;
        this.f27811b = i11;
        this.f27812c = new int[i11];
        this.f27810a = i10;
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray[0] == 0) {
            int length = byteArray.length - 1;
            byte[] bArr = new byte[length];
            System.arraycopy(byteArray, 1, bArr, 0, length);
            byteArray = bArr;
        }
        int length2 = byteArray.length & 3;
        int length3 = (byteArray.length - 1) >> 2;
        for (int i12 = 0; i12 < length2; i12++) {
            int[] iArr = this.f27812c;
            iArr[length3] = iArr[length3] | ((byteArray[i12] & 255) << (((length2 - 1) - i12) << 3));
        }
        for (int i13 = 0; i13 <= ((byteArray.length - 4) >> 2); i13++) {
            int length4 = (byteArray.length - 1) - (i13 << 2);
            int[] iArr2 = this.f27812c;
            int i14 = byteArray[length4] & 255;
            iArr2[i13] = i14;
            int i15 = i14 | ((byteArray[length4 - 1] << 8) & 65280);
            iArr2[i13] = i15;
            int i16 = i15 | ((byteArray[length4 - 2] << 16) & Spanned.SPAN_PRIORITY);
            iArr2[i13] = i16;
            iArr2[i13] = ((byteArray[length4 - 3] << 24) & (-16777216)) | i16;
        }
        int i17 = this.f27810a;
        if ((i17 & 31) != 0) {
            int[] iArr3 = this.f27812c;
            int i18 = this.f27811b - 1;
            iArr3[i18] = f27809h[i17 & 31] & iArr3[i18];
        }
        D();
    }

    public f(int i10, Random random) {
        i10 = i10 < 1 ? 1 : i10;
        int i11 = ((i10 - 1) >> 5) + 1;
        this.f27811b = i11;
        this.f27812c = new int[i11];
        this.f27810a = i10;
        C(random);
    }

    public f(int i10, byte[] bArr) {
        int i11;
        i10 = i10 < 1 ? 1 : i10;
        int i12 = ((i10 - 1) >> 5) + 1;
        this.f27811b = i12;
        this.f27812c = new int[i12];
        this.f27810a = i10;
        int min = Math.min(((bArr.length - 1) >> 2) + 1, i12);
        int i13 = 0;
        while (true) {
            i11 = min - 1;
            if (i13 >= i11) {
                break;
            }
            int length = bArr.length - (i13 << 2);
            int[] iArr = this.f27812c;
            int i14 = bArr[length - 1] & 255;
            iArr[i13] = i14;
            int i15 = (65280 & (bArr[length - 2] << 8)) | i14;
            iArr[i13] = i15;
            int i16 = (16711680 & (bArr[length - 3] << 16)) | i15;
            iArr[i13] = i16;
            iArr[i13] = ((bArr[length - 4] << 24) & (-16777216)) | i16;
            i13++;
        }
        int length2 = bArr.length - (i11 << 2);
        int i17 = length2 - 1;
        int[] iArr2 = this.f27812c;
        int i18 = bArr[i17] & 255;
        iArr2[i11] = i18;
        if (i17 > 0) {
            iArr2[i11] = (65280 & (bArr[length2 - 2] << 8)) | i18;
        }
        if (i17 > 1) {
            iArr2[i11] = iArr2[i11] | (16711680 & (bArr[length2 - 3] << 16));
        }
        if (i17 > 2) {
            iArr2[i11] = ((bArr[length2 - 4] << 24) & (-16777216)) | iArr2[i11];
        }
        e0();
        D();
    }

    public f(int i10, int[] iArr) {
        i10 = i10 < 1 ? 1 : i10;
        int i11 = ((i10 - 1) >> 5) + 1;
        this.f27811b = i11;
        this.f27812c = new int[i11];
        this.f27810a = i10;
        System.arraycopy(iArr, 0, this.f27812c, 0, Math.min(i11, iArr.length));
        e0();
    }

    public f(f fVar) {
        this.f27810a = fVar.f27810a;
        this.f27811b = fVar.f27811b;
        this.f27812c = t.a(fVar.f27812c);
    }
}
