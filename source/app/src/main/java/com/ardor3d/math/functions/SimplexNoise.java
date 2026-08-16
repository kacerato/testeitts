package com.ardor3d.math.functions;

import com.ardor3d.math.MathUtils;
import java.util.BitSet;

public class SimplexNoise {
    private static int[][] grad3 = {new int[]{1, 1, 0}, new int[]{-1, 1, 0}, new int[]{1, -1, 0}, new int[]{-1, -1, 0}, new int[]{1, 0, 1}, new int[]{-1, 0, 1}, new int[]{1, 0, -1}, new int[]{-1, 0, -1}, new int[]{0, 1, 1}, new int[]{0, -1, 1}, new int[]{0, 1, -1}, new int[]{0, -1, -1}};
    private static int[][] grad4 = {new int[]{0, 1, 1, 1}, new int[]{0, 1, 1, -1}, new int[]{0, 1, -1, 1}, new int[]{0, 1, -1, -1}, new int[]{0, -1, 1, 1}, new int[]{0, -1, 1, -1}, new int[]{0, -1, -1, 1}, new int[]{0, -1, -1, -1}, new int[]{1, 0, 1, 1}, new int[]{1, 0, 1, -1}, new int[]{1, 0, -1, 1}, new int[]{1, 0, -1, -1}, new int[]{-1, 0, 1, 1}, new int[]{-1, 0, 1, -1}, new int[]{-1, 0, -1, 1}, new int[]{-1, 0, -1, -1}, new int[]{1, 1, 0, 1}, new int[]{1, 1, 0, -1}, new int[]{1, -1, 0, 1}, new int[]{1, -1, 0, -1}, new int[]{-1, 1, 0, 1}, new int[]{-1, 1, 0, -1}, new int[]{-1, -1, 0, 1}, new int[]{-1, -1, 0, -1}, new int[]{1, 1, 1, 0}, new int[]{1, 1, -1, 0}, new int[]{1, -1, 1, 0}, new int[]{1, -1, -1, 0}, new int[]{-1, 1, 1, 0}, new int[]{-1, 1, -1, 0}, new int[]{-1, -1, 1, 0}, new int[]{-1, -1, -1, 0}};
    private static int[][] simplex = {new int[]{0, 1, 2, 3}, new int[]{0, 1, 3, 2}, new int[]{0, 0, 0, 0}, new int[]{0, 2, 3, 1}, new int[]{0, 0, 0, 0}, new int[]{0, 0, 0, 0}, new int[]{0, 0, 0, 0}, new int[]{1, 2, 3, 0}, new int[]{0, 2, 1, 3}, new int[]{0, 0, 0, 0}, new int[]{0, 3, 1, 2}, new int[]{0, 3, 2, 1}, new int[]{0, 0, 0, 0}, new int[]{0, 0, 0, 0}, new int[]{0, 0, 0, 0}, new int[]{1, 3, 2, 0}, new int[]{0, 0, 0, 0}, new int[]{0, 0, 0, 0}, new int[]{0, 0, 0, 0}, new int[]{0, 0, 0, 0}, new int[]{0, 0, 0, 0}, new int[]{0, 0, 0, 0}, new int[]{0, 0, 0, 0}, new int[]{0, 0, 0, 0}, new int[]{1, 2, 0, 3}, new int[]{0, 0, 0, 0}, new int[]{1, 3, 0, 2}, new int[]{0, 0, 0, 0}, new int[]{0, 0, 0, 0}, new int[]{0, 0, 0, 0}, new int[]{2, 3, 0, 1}, new int[]{2, 3, 1, 0}, new int[]{1, 0, 2, 3}, new int[]{1, 0, 3, 2}, new int[]{0, 0, 0, 0}, new int[]{0, 0, 0, 0}, new int[]{0, 0, 0, 0}, new int[]{2, 0, 3, 1}, new int[]{0, 0, 0, 0}, new int[]{2, 1, 3, 0}, new int[]{0, 0, 0, 0}, new int[]{0, 0, 0, 0}, new int[]{0, 0, 0, 0}, new int[]{0, 0, 0, 0}, new int[]{0, 0, 0, 0}, new int[]{0, 0, 0, 0}, new int[]{0, 0, 0, 0}, new int[]{0, 0, 0, 0}, new int[]{2, 0, 1, 3}, new int[]{0, 0, 0, 0}, new int[]{0, 0, 0, 0}, new int[]{0, 0, 0, 0}, new int[]{3, 0, 1, 2}, new int[]{3, 0, 2, 1}, new int[]{0, 0, 0, 0}, new int[]{3, 1, 2, 0}, new int[]{2, 1, 0, 3}, new int[]{0, 0, 0, 0}, new int[]{0, 0, 0, 0}, new int[]{0, 0, 0, 0}, new int[]{3, 1, 0, 2}, new int[]{0, 0, 0, 0}, new int[]{3, 2, 0, 1}, new int[]{3, 2, 1, 0}};
    private final int[] perm = new int[512];

    public SimplexNoise() {
        setPermutations(new int[]{151, 160, 137, 91, 90, 15, 131, 13, 201, 95, 96, 53, 194, 233, 7, 225, 140, 36, 103, 30, 69, 142, 8, 99, 37, 240, 21, 10, 23, 190, 6, 148, 247, 120, 234, 75, 0, 26, 197, 62, 94, 252, 219, 203, 117, 35, 11, 32, 57, 177, 33, 88, 237, 149, 56, 87, 174, 20, 125, 136, 171, 168, 68, 175, 74, 165, 71, 134, 139, 48, 27, 166, 77, 146, 158, 231, 83, 111, 229, 122, 60, 211, 133, 230, 220, 105, 92, 41, 55, 46, 245, 40, 244, 102, 143, 54, 65, 25, 63, 161, 1, 216, 80, 73, 209, 76, 132, 187, 208, 89, 18, 169, 200, 196, 135, 130, 116, 188, 159, 86, 164, 100, 109, 198, 173, 186, 3, 64, 52, 217, 226, 250, 124, 123, 5, 202, 38, 147, 118, 126, 255, 82, 85, 212, 207, 206, 59, 227, 47, 16, 58, 17, 182, 189, 28, 42, 223, 183, 170, 213, 119, 248, 152, 2, 44, 154, 163, 70, 221, 153, 101, 155, 167, 43, 172, 9, 129, 22, 39, 253, 19, 98, 108, 110, 79, 113, 224, 232, 178, 185, 112, 104, 218, 246, 97, 228, 251, 34, 242, 193, 238, 210, 144, 12, 191, 179, 162, 241, 81, 51, 145, 235, 249, 14, 239, 107, 49, 192, 214, 31, 181, 199, 106, 157, 184, 84, 204, 176, 115, 121, 50, 45, 127, 4, 150, 254, 138, 236, 205, 93, 222, 114, 67, 29, 24, 72, 243, 141, 128, 195, 78, 66, 215, 61, 156, 180});
    }

    private static double dot(int[] iArr, double d10, double d11) {
        return (iArr[0] * d10) + (iArr[1] * d11);
    }

    private void resetPerm(int[] iArr) {
        for (int i10 = 0; i10 < 512; i10++) {
            this.perm[i10] = iArr[i10 & 255];
        }
    }

    public double noise(double d10, double d11) {
        int i10;
        double dot;
        double dot2;
        double sqrt = (d10 + d11) * (Math.sqrt(3.0d) - 1.0d) * 0.5d;
        int floor = (int) MathUtils.floor(d10 + sqrt);
        int floor2 = (int) MathUtils.floor(d11 + sqrt);
        double sqrt2 = (3.0d - Math.sqrt(3.0d)) / 6.0d;
        double d12 = (floor + floor2) * sqrt2;
        double d13 = floor2 - d12;
        double d14 = d10 - (floor - d12);
        double d15 = d11 - d13;
        int i11 = 0;
        if (d14 > d15) {
            i10 = 0;
            i11 = 1;
        } else {
            i10 = 1;
        }
        double d16 = (d14 - i11) + sqrt2;
        double d17 = (d15 - i10) + sqrt2;
        double d18 = sqrt2 * 2.0d;
        double d19 = (d14 - 1.0d) + d18;
        double d20 = (d15 - 1.0d) + d18;
        int i12 = floor & 255;
        int i13 = floor2 & 255;
        int[] iArr = this.perm;
        int i14 = iArr[i12 + iArr[i13]] % 12;
        int i15 = iArr[(i11 + i12) + iArr[i10 + i13]] % 12;
        int i16 = iArr[(i12 + 1) + iArr[i13 + 1]] % 12;
        double d21 = (0.5d - (d14 * d14)) - (d15 * d15);
        double d22 = 0.0d;
        if (d21 < 0.0d) {
            dot = 0.0d;
        } else {
            double d23 = d21 * d21;
            dot = d23 * d23 * dot(grad3[i14], d14, d15);
        }
        double d24 = (0.5d - (d16 * d16)) - (d17 * d17);
        if (d24 < 0.0d) {
            dot2 = 0.0d;
        } else {
            double d25 = d24 * d24;
            dot2 = d25 * d25 * dot(grad3[i15], d16, d17);
        }
        double d26 = (0.5d - (d19 * d19)) - (d20 * d20);
        if (d26 >= 0.0d) {
            double d27 = d26 * d26;
            d22 = d27 * d27 * dot(grad3[i16], d19, d20);
        }
        return (dot + dot2 + d22) * 70.0d;
    }

    public void setPermutations(int[] iArr) {
        if (iArr.length != 256) {
            throw new IllegalArgumentException("not enough data, permutations should contain 0 thru 255 each exactly once");
        }
        BitSet bitSet = new BitSet(256);
        for (int i10 : iArr) {
            bitSet.set(i10);
        }
        if (bitSet.cardinality() != 256) {
            throw new IllegalArgumentException("permutations should contain 0 thru 255 each exactly once");
        }
        resetPerm(iArr);
    }

    private static double dot(int[] iArr, double d10, double d11, double d12) {
        return (iArr[0] * d10) + (iArr[1] * d11) + (iArr[2] * d12);
    }

    private static double dot(int[] iArr, double d10, double d11, double d12, double d13) {
        return (iArr[0] * d10) + (iArr[1] * d11) + (iArr[2] * d12) + (iArr[3] * d13);
    }

    public double noise(double d10, double d11, double d12) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        double dot;
        double dot2;
        double dot3;
        double d13 = (d10 + d11 + d12) * 0.3333333333333333d;
        int floor = (int) MathUtils.floor(d10 + d13);
        int floor2 = (int) MathUtils.floor(d11 + d13);
        int floor3 = (int) MathUtils.floor(d12 + d13);
        double d14 = (floor + floor2 + floor3) * 0.16666666666666666d;
        double d15 = d10 - (floor - d14);
        double d16 = d11 - (floor2 - d14);
        double d17 = d12 - (floor3 - d14);
        int i15 = 0;
        if (d15 < d16) {
            if (d16 < d17) {
                i12 = 0;
                i13 = 0;
                i10 = 1;
                i14 = 1;
            } else if (d15 < d17) {
                i10 = 0;
                i13 = 0;
                i12 = 1;
                i14 = 1;
            } else {
                i10 = 0;
                i11 = 0;
                i12 = 1;
                i13 = 1;
                i14 = i13;
            }
            i11 = i14;
        } else if (d16 >= d17) {
            i12 = 0;
            i10 = 0;
            i11 = 0;
            i15 = 1;
            i13 = 1;
            i14 = i13;
        } else {
            if (d15 >= d17) {
                i12 = 0;
                i10 = 0;
                i14 = 0;
                i15 = 1;
                i13 = 1;
            } else {
                i12 = 0;
                i14 = 0;
                i10 = 1;
                i13 = 1;
            }
            i11 = i13;
        }
        double d18 = (d15 - i15) + 0.16666666666666666d;
        double d19 = (d16 - i12) + 0.16666666666666666d;
        double d20 = (d17 - i10) + 0.16666666666666666d;
        double d21 = (d15 - i13) + 0.3333333333333333d;
        double d22 = (d16 - i14) + 0.3333333333333333d;
        double d23 = (d17 - i11) + 0.3333333333333333d;
        double d24 = (d15 - 1.0d) + 0.5d;
        double d25 = (d16 - 1.0d) + 0.5d;
        double d26 = (d17 - 1.0d) + 0.5d;
        int i16 = floor & 255;
        int i17 = floor2 & 255;
        int i18 = floor3 & 255;
        int[] iArr = this.perm;
        int i19 = iArr[iArr[iArr[i18] + i17] + i16] % 12;
        int i20 = iArr[(i15 + i16) + iArr[(i12 + i17) + iArr[i10 + i18]]] % 12;
        int i21 = iArr[(i13 + i16) + iArr[(i14 + i17) + iArr[i11 + i18]]] % 12;
        int i22 = iArr[(i16 + 1) + iArr[(i17 + 1) + iArr[i18 + 1]]] % 12;
        double d27 = ((0.6d - (d15 * d15)) - (d16 * d16)) - (d17 * d17);
        double d28 = 0.0d;
        if (d27 < 0.0d) {
            dot = 0.0d;
        } else {
            double d29 = d27 * d27;
            dot = d29 * d29 * dot(grad3[i19], d15, d16, d17);
        }
        double d30 = ((0.6d - (d18 * d18)) - (d19 * d19)) - (d20 * d20);
        if (d30 < 0.0d) {
            dot2 = 0.0d;
        } else {
            double d31 = d30 * d30;
            dot2 = d31 * d31 * dot(grad3[i20], d18, d19, d20);
        }
        double d32 = ((0.6d - (d21 * d21)) - (d22 * d22)) - (d23 * d23);
        if (d32 < 0.0d) {
            dot3 = 0.0d;
        } else {
            double d33 = d32 * d32;
            dot3 = d33 * d33 * dot(grad3[i21], d21, d22, d23);
        }
        double d34 = ((0.6d - (d24 * d24)) - (d25 * d25)) - (d26 * d26);
        if (d34 >= 0.0d) {
            double d35 = d34 * d34;
            d28 = d35 * d35 * dot(grad3[i22], d24, d25, d26);
        }
        return (dot + dot2 + dot3 + d28) * 32.0d;
    }

    public double noise(double d10, double d11, double d12, double d13) {
        int i10;
        int i11;
        double dot;
        double dot2;
        double dot3;
        double dot4;
        double sqrt = (Math.sqrt(5.0d) - 1.0d) / 4.0d;
        double sqrt2 = (5.0d - Math.sqrt(5.0d)) / 20.0d;
        double d14 = (d10 + d11 + d12 + d13) * sqrt;
        int floor = (int) MathUtils.floor(d10 + d14);
        int floor2 = (int) MathUtils.floor(d11 + d14);
        int floor3 = (int) MathUtils.floor(d12 + d14);
        int floor4 = (int) MathUtils.floor(d13 + d14);
        double d15 = (floor + floor2 + floor3 + floor4) * sqrt2;
        double d16 = d10 - (floor - d15);
        double d17 = d11 - (floor2 - d15);
        double d18 = d12 - (floor3 - d15);
        double d19 = d13 - (floor4 - d15);
        int i12 = d16 > d17 ? 32 : 0;
        int i13 = d16 > d18 ? 16 : 0;
        int i14 = d17 > d18 ? 8 : 0;
        int[] iArr = simplex[i12 + i13 + i14 + (d16 > d19 ? 4 : 0) + (d17 > d19 ? 2 : 0) + (d18 > d19 ? 1 : 0)];
        int i15 = iArr[0];
        int i16 = i15 >= 3 ? 1 : 0;
        int i17 = iArr[1];
        int i18 = i17 >= 3 ? 1 : 0;
        int i19 = iArr[2];
        int i20 = i19 >= 3 ? 1 : 0;
        int i21 = iArr[3];
        int i22 = i21 >= 3 ? 1 : 0;
        int i23 = i15 >= 2 ? 1 : 0;
        int i24 = i17 >= 2 ? 1 : 0;
        int i25 = i19 >= 2 ? 1 : 0;
        int i26 = i21 >= 2 ? 1 : 0;
        int i27 = i15 >= 1 ? 1 : 0;
        int i28 = i17 >= 1 ? 1 : 0;
        int i29 = i19 >= 1 ? 1 : 0;
        if (i21 >= 1) {
            i11 = 1;
            i10 = i20;
        } else {
            i10 = i20;
            i11 = 0;
        }
        double d20 = (d16 - i16) + sqrt2;
        double d21 = (d17 - i18) + sqrt2;
        int i30 = i10;
        double d22 = (d18 - i30) + sqrt2;
        double d23 = (d19 - i22) + sqrt2;
        double d24 = 2.0d * sqrt2;
        double d25 = (d16 - i23) + d24;
        int i31 = i24;
        double d26 = (d17 - i31) + d24;
        int i32 = i25;
        double d27 = (d18 - i32) + d24;
        double d28 = (d19 - i26) + d24;
        double d29 = 3.0d * sqrt2;
        double d30 = (d16 - i27) + d29;
        double d31 = (d17 - i28) + d29;
        double d32 = (d18 - i29) + d29;
        double d33 = (d19 - i11) + d29;
        double d34 = sqrt2 * 4.0d;
        double d35 = (d16 - 1.0d) + d34;
        double d36 = (d17 - 1.0d) + d34;
        double d37 = (d18 - 1.0d) + d34;
        double d38 = (d19 - 1.0d) + d34;
        int i33 = floor & 255;
        int i34 = floor2 & 255;
        int i35 = floor3 & 255;
        int i36 = floor4 & 255;
        int i37 = i11;
        int[] iArr2 = this.perm;
        int i38 = iArr2[i33 + iArr2[i34 + iArr2[i35 + iArr2[i36]]]] % 32;
        int i39 = iArr2[(i16 + i33) + iArr2[(i18 + i34) + iArr2[(i35 + i30) + iArr2[i22 + i36]]]] % 32;
        int i40 = iArr2[(i23 + i33) + iArr2[(i34 + i31) + iArr2[(i35 + i32) + iArr2[i26 + i36]]]] % 32;
        int i41 = iArr2[(i27 + i33) + iArr2[(i28 + i34) + iArr2[(i29 + i35) + iArr2[i36 + i37]]]] % 32;
        int i42 = iArr2[(i33 + 1) + iArr2[(i34 + 1) + iArr2[(i35 + 1) + iArr2[i36 + 1]]]] % 32;
        double d39 = (((0.6d - (d16 * d16)) - (d17 * d17)) - (d18 * d18)) - (d19 * d19);
        double d40 = 0.0d;
        if (d39 < 0.0d) {
            dot = 0.0d;
        } else {
            double d41 = d39 * d39;
            dot = d41 * d41 * dot(grad4[i38], d16, d17, d18, d19);
        }
        double d42 = (((0.6d - (d20 * d20)) - (d21 * d21)) - (d22 * d22)) - (d23 * d23);
        if (d42 < 0.0d) {
            dot2 = 0.0d;
        } else {
            double d43 = d42 * d42;
            dot2 = d43 * d43 * dot(grad4[i39], d20, d21, d22, d23);
        }
        double d44 = (((0.6d - (d25 * d25)) - (d26 * d26)) - (d27 * d27)) - (d28 * d28);
        if (d44 < 0.0d) {
            dot3 = 0.0d;
        } else {
            double d45 = d44 * d44;
            dot3 = d45 * d45 * dot(grad4[i40], d25, d26, d27, d28);
        }
        double d46 = (((0.6d - (d30 * d30)) - (d31 * d31)) - (d32 * d32)) - (d33 * d33);
        if (d46 < 0.0d) {
            dot4 = 0.0d;
        } else {
            double d47 = d46 * d46;
            dot4 = d47 * d47 * dot(grad4[i41], d30, d31, d32, d33);
        }
        double d48 = (((0.6d - (d35 * d35)) - (d36 * d36)) - (d37 * d37)) - (d38 * d38);
        if (d48 >= 0.0d) {
            double d49 = d48 * d48;
            d40 = d49 * d49 * dot(grad4[i42], d35, d36, d37, d38);
        }
        return (dot + dot2 + dot3 + dot4 + d40) * 27.0d;
    }
}
