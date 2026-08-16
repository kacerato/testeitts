package org.apache.commons.math3.analysis.differentiation;

import androidx.lifecycle.c;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.MathInternalError;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.util.CombinatoricsUtils;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;

public class DSCompiler {
    private static AtomicReference<DSCompiler[][]> compilers = new AtomicReference<>(null);
    private final int[][][] compIndirection;
    private final int[][] derivativesIndirection;
    private final int[] lowerIndirection;
    private final int[][][] multIndirection;
    private final int order;
    private final int parameters;
    private final int[][] sizes;

    private DSCompiler(int i10, int i11, DSCompiler dSCompiler, DSCompiler dSCompiler2) throws NumberIsTooLargeException {
        this.parameters = i10;
        this.order = i11;
        int[][] compileSizes = compileSizes(i10, i11, dSCompiler);
        this.sizes = compileSizes;
        int[][] compileDerivativesIndirection = compileDerivativesIndirection(i10, i11, dSCompiler, dSCompiler2);
        this.derivativesIndirection = compileDerivativesIndirection;
        int[] compileLowerIndirection = compileLowerIndirection(i10, i11, dSCompiler, dSCompiler2);
        this.lowerIndirection = compileLowerIndirection;
        this.multIndirection = compileMultiplicationIndirection(i10, i11, dSCompiler, dSCompiler2, compileLowerIndirection);
        this.compIndirection = compileCompositionIndirection(i10, i11, dSCompiler, dSCompiler2, compileSizes, compileDerivativesIndirection);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static int[][][] compileCompositionIndirection(int i10, int i11, DSCompiler dSCompiler, DSCompiler dSCompiler2, int[][] iArr, int[][] iArr2) throws NumberIsTooLargeException {
        DSCompiler dSCompiler3 = dSCompiler2;
        int i12 = 0;
        int i13 = 1;
        if (i10 == 0 || i11 == 0) {
            return new int[][][]{new int[][]{new int[]{1, 0}}};
        }
        int[][][] iArr3 = dSCompiler.compIndirection;
        int length = iArr3.length;
        int length2 = dSCompiler3.compIndirection.length;
        int[][][] iArr4 = new int[length + length2][];
        System.arraycopy(iArr3, 0, iArr4, 0, length);
        int i14 = 0;
        while (i14 < length2) {
            ArrayList arrayList = new ArrayList();
            int[][] iArr5 = dSCompiler3.compIndirection[i14];
            int length3 = iArr5.length;
            int i15 = i12;
            while (i15 < length3) {
                int[] iArr6 = iArr5[i15];
                int length4 = iArr6.length + i13;
                int[] iArr7 = new int[length4];
                iArr7[i12] = iArr6[i12];
                iArr7[1] = iArr6[1] + 1;
                int[] iArr8 = new int[i10];
                int i16 = i10 - 1;
                iArr8[i16] = 1;
                iArr7[iArr6.length] = getPartialDerivativeIndex(i10, i11, iArr, iArr8);
                int i17 = length2;
                int i18 = 2;
                while (i18 < iArr6.length) {
                    iArr7[i18] = convertIndex(iArr6[i18], i10, dSCompiler3.derivativesIndirection, i10, i11, iArr);
                    i18++;
                    length = length;
                    i15 = i15;
                    iArr4 = iArr4;
                    iArr6 = iArr6;
                    length3 = length3;
                    iArr5 = iArr5;
                    arrayList = arrayList;
                }
                int i19 = i15;
                int i20 = length3;
                int[][] iArr9 = iArr5;
                ArrayList arrayList2 = arrayList;
                int i21 = length;
                int[][][] iArr10 = iArr4;
                int i22 = 2;
                Arrays.sort(iArr7, 2, length4);
                arrayList2.add(iArr7);
                int i23 = 2;
                int[] iArr11 = iArr6;
                while (i23 < iArr11.length) {
                    int length5 = iArr11.length;
                    int[] iArr12 = new int[length5];
                    iArr12[0] = iArr11[0];
                    iArr12[1] = iArr11[1];
                    int i24 = i22;
                    while (i24 < iArr11.length) {
                        int i25 = iArr11[i24];
                        int[][] iArr13 = dSCompiler3.derivativesIndirection;
                        int i26 = i24;
                        int[] iArr14 = iArr12;
                        int[] iArr15 = iArr11;
                        int i27 = length5;
                        int convertIndex = convertIndex(i25, i10, iArr13, i10, i11, iArr);
                        iArr14[i26] = convertIndex;
                        if (i26 == i23) {
                            System.arraycopy(iArr2[convertIndex], 0, iArr8, 0, i10);
                            iArr8[i16] = iArr8[i16] + 1;
                            iArr14[i26] = getPartialDerivativeIndex(i10, i11, iArr, iArr8);
                        }
                        i24 = i26 + 1;
                        iArr12 = iArr14;
                        length5 = i27;
                        iArr11 = iArr15;
                        i22 = 2;
                        dSCompiler3 = dSCompiler2;
                    }
                    int[] iArr16 = iArr12;
                    Arrays.sort(iArr16, i22, length5);
                    arrayList2.add(iArr16);
                    i23++;
                    dSCompiler3 = dSCompiler2;
                    iArr11 = iArr11;
                }
                i15 = i19 + 1;
                dSCompiler3 = dSCompiler2;
                arrayList = arrayList2;
                length2 = i17;
                length = i21;
                iArr4 = iArr10;
                length3 = i20;
                iArr5 = iArr9;
                i12 = 0;
                i13 = 1;
            }
            int i28 = length;
            int i29 = length2;
            int[][][] iArr17 = iArr4;
            ArrayList arrayList3 = arrayList;
            ArrayList arrayList4 = new ArrayList(arrayList3.size());
            for (int i30 = 0; i30 < arrayList3.size(); i30++) {
                int[] iArr18 = (int[]) arrayList3.get(i30);
                if (iArr18[0] > 0) {
                    for (int i31 = i30 + 1; i31 < arrayList3.size(); i31++) {
                        int[] iArr19 = (int[]) arrayList3.get(i31);
                        boolean z10 = iArr18.length == iArr19.length;
                        for (int i32 = 1; z10 && i32 < iArr18.length; i32++) {
                            z10 &= iArr18[i32] == iArr19[i32];
                        }
                        if (z10) {
                            iArr18[0] = iArr18[0] + iArr19[0];
                            iArr19[0] = 0;
                        }
                    }
                    arrayList4.add(iArr18);
                }
            }
            iArr17[i28 + i14] = (int[][]) arrayList4.toArray(new int[arrayList4.size()]);
            i14++;
            dSCompiler3 = dSCompiler2;
            length2 = i29;
            length = i28;
            iArr4 = iArr17;
            i12 = 0;
            i13 = 1;
        }
        return iArr4;
    }

    private static int[][] compileDerivativesIndirection(int i10, int i11, DSCompiler dSCompiler, DSCompiler dSCompiler2) {
        if (i10 == 0 || i11 == 0) {
            return (int[][]) Array.newInstance(Integer.TYPE, 1, i10);
        }
        int length = dSCompiler.derivativesIndirection.length;
        int length2 = dSCompiler2.derivativesIndirection.length;
        int[][] iArr = (int[][]) Array.newInstance(Integer.TYPE, length + length2, i10);
        for (int i12 = 0; i12 < length; i12++) {
            System.arraycopy(dSCompiler.derivativesIndirection[i12], 0, iArr[i12], 0, i10 - 1);
        }
        for (int i13 = 0; i13 < length2; i13++) {
            int i14 = length + i13;
            System.arraycopy(dSCompiler2.derivativesIndirection[i13], 0, iArr[i14], 0, i10);
            int[] iArr2 = iArr[i14];
            int i15 = i10 - 1;
            iArr2[i15] = iArr2[i15] + 1;
        }
        return iArr;
    }

    private static int[] compileLowerIndirection(int i10, int i11, DSCompiler dSCompiler, DSCompiler dSCompiler2) {
        if (i10 == 0 || i11 <= 1) {
            return new int[]{0};
        }
        int[] iArr = dSCompiler.lowerIndirection;
        int length = iArr.length;
        int length2 = dSCompiler2.lowerIndirection.length;
        int[] iArr2 = new int[length + length2];
        System.arraycopy(iArr, 0, iArr2, 0, length);
        for (int i12 = 0; i12 < length2; i12++) {
            iArr2[length + i12] = dSCompiler.getSize() + dSCompiler2.lowerIndirection[i12];
        }
        return iArr2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static int[][][] compileMultiplicationIndirection(int i10, int i11, DSCompiler dSCompiler, DSCompiler dSCompiler2, int[] iArr) {
        if (i10 == 0 || i11 == 0) {
            return new int[][][]{new int[][]{new int[]{1, 0, 0}}};
        }
        int[][][] iArr2 = dSCompiler.multIndirection;
        int length = iArr2.length;
        int length2 = dSCompiler2.multIndirection.length;
        int[][][] iArr3 = new int[length + length2][];
        System.arraycopy(iArr2, 0, iArr3, 0, length);
        for (int i12 = 0; i12 < length2; i12++) {
            int[][] iArr4 = dSCompiler2.multIndirection[i12];
            ArrayList arrayList = new ArrayList(iArr4.length * 2);
            for (int i13 = 0; i13 < iArr4.length; i13++) {
                int[] iArr5 = iArr4[i13];
                arrayList.add(new int[]{iArr5[0], iArr[iArr5[1]], iArr5[2] + length});
                int[] iArr6 = iArr4[i13];
                arrayList.add(new int[]{iArr6[0], iArr6[1] + length, iArr[iArr6[2]]});
            }
            ArrayList arrayList2 = new ArrayList(arrayList.size());
            for (int i14 = 0; i14 < arrayList.size(); i14++) {
                int[] iArr7 = (int[]) arrayList.get(i14);
                if (iArr7[0] > 0) {
                    for (int i15 = i14 + 1; i15 < arrayList.size(); i15++) {
                        int[] iArr8 = (int[]) arrayList.get(i15);
                        if (iArr7[1] == iArr8[1] && iArr7[2] == iArr8[2]) {
                            iArr7[0] = iArr7[0] + iArr8[0];
                            iArr8[0] = 0;
                        }
                    }
                    arrayList2.add(iArr7);
                }
            }
            iArr3[length + i12] = (int[][]) arrayList2.toArray(new int[arrayList2.size()]);
        }
        return iArr3;
    }

    private static int[][] compileSizes(int i10, int i11, DSCompiler dSCompiler) {
        int i12 = 0;
        int[][] iArr = (int[][]) Array.newInstance(Integer.TYPE, i10 + 1, i11 + 1);
        if (i10 == 0) {
            Arrays.fill(iArr[0], 1);
        } else {
            System.arraycopy(dSCompiler.sizes, 0, iArr, 0, i10);
            iArr[i10][0] = 1;
            while (i12 < i11) {
                int[] iArr2 = iArr[i10];
                int i13 = i12 + 1;
                iArr2[i13] = iArr2[i12] + iArr[i10 - 1][i13];
                i12 = i13;
            }
        }
        return iArr;
    }

    private static int convertIndex(int i10, int i11, int[][] iArr, int i12, int i13, int[][] iArr2) throws NumberIsTooLargeException {
        int[] iArr3 = new int[i12];
        System.arraycopy(iArr[i10], 0, iArr3, 0, FastMath.min(i11, i12));
        return getPartialDerivativeIndex(i12, i13, iArr2, iArr3);
    }

    public static DSCompiler getCompiler(int i10, int i11) throws NumberIsTooLargeException {
        DSCompiler dSCompiler;
        DSCompiler[][] dSCompilerArr = compilers.get();
        if (dSCompilerArr != null && dSCompilerArr.length > i10) {
            DSCompiler[] dSCompilerArr2 = dSCompilerArr[i10];
            if (dSCompilerArr2.length > i11 && (dSCompiler = dSCompilerArr2[i11]) != null) {
                return dSCompiler;
            }
        }
        DSCompiler[][] dSCompilerArr3 = (DSCompiler[][]) Array.newInstance((Class<?>) DSCompiler.class, FastMath.max(i10, dSCompilerArr == null ? 0 : dSCompilerArr.length) + 1, FastMath.max(i11, dSCompilerArr == null ? 0 : dSCompilerArr[0].length) + 1);
        if (dSCompilerArr != null) {
            for (int i12 = 0; i12 < dSCompilerArr.length; i12++) {
                DSCompiler[] dSCompilerArr4 = dSCompilerArr[i12];
                System.arraycopy(dSCompilerArr4, 0, dSCompilerArr3[i12], 0, dSCompilerArr4.length);
            }
        }
        for (int i13 = 0; i13 <= i10 + i11; i13++) {
            int max = FastMath.max(0, i13 - i10);
            while (max <= FastMath.min(i11, i13)) {
                int i14 = i13 - max;
                DSCompiler[] dSCompilerArr5 = dSCompilerArr3[i14];
                if (dSCompilerArr5[max] == null) {
                    dSCompilerArr5[max] = new DSCompiler(i14, max, i14 == 0 ? null : dSCompilerArr3[i14 - 1][max], max != 0 ? dSCompilerArr5[max - 1] : null);
                }
                max++;
            }
        }
        c.a(compilers, dSCompilerArr, dSCompilerArr3);
        return dSCompilerArr3[i10][i11];
    }

    public void acos(double[] dArr, int i10, double[] dArr2, int i11) {
        double d10;
        double d11;
        int i12;
        DSCompiler dSCompiler = this;
        double[] dArr3 = new double[dSCompiler.order + 1];
        double d12 = dArr[i10];
        dArr3[0] = FastMath.acos(d12);
        int i13 = dSCompiler.order;
        if (i13 > 0) {
            double[] dArr4 = new double[i13];
            dArr4[0] = -1.0d;
            double d13 = d12 * d12;
            double d14 = 1.0d / (1.0d - d13);
            double sqrt = FastMath.sqrt(d14);
            dArr3[1] = dArr4[0] * sqrt;
            int i14 = 2;
            int i15 = 2;
            while (i15 <= dSCompiler.order) {
                int i16 = i15 - 1;
                dArr4[i16] = i16 * dArr4[i15 - 2];
                double d15 = 0.0d;
                while (i16 >= 0) {
                    double d16 = (d15 * d13) + dArr4[i16];
                    if (i16 > i14) {
                        int i17 = i16 - 1;
                        d10 = d16;
                        d11 = d13;
                        dArr4[i16 - 2] = (i17 * dArr4[i17]) + (((i15 * 2) - i16) * dArr4[i16 - 3]);
                        i12 = 2;
                    } else {
                        d10 = d16;
                        d11 = d13;
                        i12 = i14;
                        if (i16 == i12) {
                            dArr4[0] = dArr4[1];
                            i16 -= 2;
                            i14 = i12;
                            d15 = d10;
                            d13 = d11;
                        }
                    }
                    i16 -= 2;
                    i14 = i12;
                    d15 = d10;
                    d13 = d11;
                }
                double d17 = d13;
                int i18 = i14;
                if ((i15 & 1) == 0) {
                    d15 *= d12;
                }
                sqrt *= d14;
                dArr3[i15] = d15 * sqrt;
                i15++;
                i14 = i18;
                d13 = d17;
                dSCompiler = this;
            }
        }
        compose(dArr, i10, dArr3, dArr2, i11);
    }

    public void acosh(double[] dArr, int i10, double[] dArr2, int i11) {
        double d10;
        double d11;
        int i12;
        double[] dArr3 = new double[this.order + 1];
        double d12 = dArr[i10];
        dArr3[0] = FastMath.acosh(d12);
        int i13 = this.order;
        if (i13 > 0) {
            double[] dArr4 = new double[i13];
            dArr4[0] = 1.0d;
            double d13 = d12 * d12;
            double d14 = 1.0d / (d13 - 1.0d);
            double sqrt = FastMath.sqrt(d14);
            dArr3[1] = dArr4[0] * sqrt;
            int i14 = 2;
            int i15 = 2;
            while (i15 <= this.order) {
                int i16 = i15 - 1;
                double[] dArr5 = dArr4;
                dArr5[i16] = (1 - i15) * dArr5[i15 - 2];
                double d15 = 0.0d;
                while (i16 >= 0) {
                    double d16 = (d15 * d13) + dArr5[i16];
                    if (i16 > i14) {
                        d10 = d16;
                        d11 = d13;
                        dArr5[i16 - 2] = ((1 - i16) * dArr5[i16 - 1]) + ((i16 - (i15 * 2)) * dArr5[i16 - 3]);
                        i12 = 2;
                    } else {
                        d10 = d16;
                        d11 = d13;
                        i12 = i14;
                        if (i16 == i12) {
                            dArr5[0] = -dArr5[1];
                            i16 -= 2;
                            i14 = i12;
                            d15 = d10;
                            d13 = d11;
                        }
                    }
                    i16 -= 2;
                    i14 = i12;
                    d15 = d10;
                    d13 = d11;
                }
                double d17 = d13;
                int i17 = i14;
                if ((i15 & 1) == 0) {
                    d15 *= d12;
                }
                sqrt *= d14;
                dArr3[i15] = d15 * sqrt;
                i15++;
                i14 = i17;
                dArr4 = dArr5;
                d13 = d17;
            }
        }
        compose(dArr, i10, dArr3, dArr2, i11);
    }

    public void add(double[] dArr, int i10, double[] dArr2, int i11, double[] dArr3, int i12) {
        for (int i13 = 0; i13 < getSize(); i13++) {
            dArr3[i12 + i13] = dArr[i10 + i13] + dArr2[i11 + i13];
        }
    }

    public void asin(double[] dArr, int i10, double[] dArr2, int i11) {
        double d10;
        double d11;
        int i12;
        double[] dArr3 = new double[this.order + 1];
        double d12 = dArr[i10];
        dArr3[0] = FastMath.asin(d12);
        int i13 = this.order;
        if (i13 > 0) {
            double[] dArr4 = new double[i13];
            dArr4[0] = 1.0d;
            double d13 = d12 * d12;
            double d14 = 1.0d / (1.0d - d13);
            double sqrt = FastMath.sqrt(d14);
            dArr3[1] = dArr4[0] * sqrt;
            int i14 = 2;
            int i15 = 2;
            while (i15 <= this.order) {
                int i16 = i15 - 1;
                dArr4[i16] = i16 * dArr4[i15 - 2];
                double d15 = 0.0d;
                while (i16 >= 0) {
                    double d16 = (d15 * d13) + dArr4[i16];
                    if (i16 > i14) {
                        int i17 = i16 - 1;
                        d10 = d16;
                        d11 = d13;
                        dArr4[i16 - 2] = (i17 * dArr4[i17]) + (((i15 * 2) - i16) * dArr4[i16 - 3]);
                        i12 = 2;
                    } else {
                        d10 = d16;
                        d11 = d13;
                        i12 = i14;
                        if (i16 == i12) {
                            dArr4[0] = dArr4[1];
                            i16 -= 2;
                            i14 = i12;
                            d15 = d10;
                            d13 = d11;
                        }
                    }
                    i16 -= 2;
                    i14 = i12;
                    d15 = d10;
                    d13 = d11;
                }
                double d17 = d13;
                int i18 = i14;
                if ((i15 & 1) == 0) {
                    d15 *= d12;
                }
                sqrt *= d14;
                dArr3[i15] = d15 * sqrt;
                i15++;
                i14 = i18;
                d13 = d17;
            }
        }
        compose(dArr, i10, dArr3, dArr2, i11);
    }

    public void asinh(double[] dArr, int i10, double[] dArr2, int i11) {
        double d10;
        double d11;
        int i12;
        double[] dArr3 = new double[this.order + 1];
        double d12 = dArr[i10];
        dArr3[0] = FastMath.asinh(d12);
        int i13 = this.order;
        if (i13 > 0) {
            double[] dArr4 = new double[i13];
            dArr4[0] = 1.0d;
            double d13 = d12 * d12;
            double d14 = 1.0d / (d13 + 1.0d);
            double sqrt = FastMath.sqrt(d14);
            dArr3[1] = dArr4[0] * sqrt;
            int i14 = 2;
            int i15 = 2;
            while (i15 <= this.order) {
                int i16 = i15 - 1;
                double[] dArr5 = dArr4;
                dArr5[i16] = (1 - i15) * dArr5[i15 - 2];
                double d15 = 0.0d;
                while (i16 >= 0) {
                    double d16 = (d15 * d13) + dArr5[i16];
                    if (i16 > i14) {
                        int i17 = i16 - 1;
                        d10 = d16;
                        d11 = d13;
                        dArr5[i16 - 2] = (i17 * dArr5[i17]) + ((i16 - (i15 * 2)) * dArr5[i16 - 3]);
                        i12 = 2;
                    } else {
                        d10 = d16;
                        d11 = d13;
                        i12 = i14;
                        if (i16 == i12) {
                            dArr5[0] = dArr5[1];
                            i16 -= 2;
                            i14 = i12;
                            d15 = d10;
                            d13 = d11;
                        }
                    }
                    i16 -= 2;
                    i14 = i12;
                    d15 = d10;
                    d13 = d11;
                }
                double d17 = d13;
                int i18 = i14;
                if ((i15 & 1) == 0) {
                    d15 *= d12;
                }
                sqrt *= d14;
                dArr3[i15] = d15 * sqrt;
                i15++;
                i14 = i18;
                dArr4 = dArr5;
                d13 = d17;
            }
        }
        compose(dArr, i10, dArr3, dArr2, i11);
    }

    public void atan(double[] dArr, int i10, double[] dArr2, int i11) {
        double d10;
        int i12;
        DSCompiler dSCompiler = this;
        double[] dArr3 = new double[dSCompiler.order + 1];
        double d11 = dArr[i10];
        dArr3[0] = FastMath.atan(d11);
        int i13 = dSCompiler.order;
        if (i13 > 0) {
            double[] dArr4 = new double[i13];
            dArr4[0] = 1.0d;
            double d12 = d11 * d11;
            double d13 = 1.0d / (d12 + 1.0d);
            dArr3[1] = 1.0d * d13;
            int i14 = 2;
            int i15 = 2;
            double d14 = d13;
            while (i15 <= dSCompiler.order) {
                int i16 = i15 - 1;
                double[] dArr5 = dArr4;
                dArr5[i16] = (-i15) * dArr5[i15 - 2];
                double d15 = 0.0d;
                while (i16 >= 0) {
                    double d16 = (d15 * d12) + dArr5[i16];
                    if (i16 > i14) {
                        int i17 = i16 - 1;
                        d10 = d16;
                        dArr5[i16 - 2] = (i17 * dArr5[i17]) + ((i17 - (i15 * 2)) * dArr5[i16 - 3]);
                        i12 = 2;
                    } else {
                        d10 = d16;
                        i12 = i14;
                        if (i16 == i12) {
                            dArr5[0] = dArr5[1];
                            i16 -= 2;
                            i14 = i12;
                            d15 = d10;
                        }
                    }
                    i16 -= 2;
                    i14 = i12;
                    d15 = d10;
                }
                int i18 = i14;
                if ((i15 & 1) == 0) {
                    d15 *= d11;
                }
                d14 *= d13;
                dArr3[i15] = d15 * d14;
                i15++;
                dSCompiler = this;
                i14 = i18;
                dArr4 = dArr5;
            }
        }
        compose(dArr, i10, dArr3, dArr2, i11);
    }

    public void atan2(double[] dArr, int i10, double[] dArr2, int i11, double[] dArr3, int i12) {
        double[] dArr4 = new double[getSize()];
        multiply(dArr2, i11, dArr2, i11, dArr4, 0);
        int size = getSize();
        double[] dArr5 = new double[size];
        multiply(dArr, i10, dArr, i10, dArr5, 0);
        add(dArr4, 0, dArr5, 0, dArr5, 0);
        rootN(dArr5, 0, 2, dArr4, 0);
        if (dArr2[i11] >= 0.0d) {
            add(dArr4, 0, dArr2, i11, dArr5, 0);
            divide(dArr, i10, dArr5, 0, dArr4, 0);
            atan(dArr4, 0, dArr5, 0);
            for (int i13 = 0; i13 < size; i13++) {
                dArr3[i12 + i13] = dArr5[i13] * 2.0d;
            }
        } else {
            subtract(dArr4, 0, dArr2, i11, dArr5, 0);
            divide(dArr, i10, dArr5, 0, dArr4, 0);
            atan(dArr4, 0, dArr5, 0);
            double d10 = dArr5[0];
            dArr3[i12] = (d10 <= 0.0d ? -3.141592653589793d : 3.141592653589793d) - (d10 * 2.0d);
            for (int i14 = 1; i14 < size; i14++) {
                dArr3[i12 + i14] = dArr5[i14] * (-2.0d);
            }
        }
        dArr3[i12] = FastMath.atan2(dArr[i10], dArr2[i11]);
    }

    public void atanh(double[] dArr, int i10, double[] dArr2, int i11) {
        double d10;
        int i12;
        DSCompiler dSCompiler = this;
        double[] dArr3 = new double[dSCompiler.order + 1];
        double d11 = dArr[i10];
        dArr3[0] = FastMath.atanh(d11);
        int i13 = dSCompiler.order;
        if (i13 > 0) {
            double[] dArr4 = new double[i13];
            dArr4[0] = 1.0d;
            double d12 = d11 * d11;
            double d13 = 1.0d / (1.0d - d12);
            dArr3[1] = 1.0d * d13;
            int i14 = 2;
            int i15 = 2;
            double d14 = d13;
            while (i15 <= dSCompiler.order) {
                int i16 = i15 - 1;
                dArr4[i16] = i15 * dArr4[i15 - 2];
                double d15 = 0.0d;
                while (i16 >= 0) {
                    double d16 = (d15 * d12) + dArr4[i16];
                    if (i16 > i14) {
                        int i17 = i16 - 1;
                        d10 = d16;
                        dArr4[i16 - 2] = (i17 * dArr4[i17]) + ((((i15 * 2) - i16) + 1) * dArr4[i16 - 3]);
                        i12 = 2;
                    } else {
                        d10 = d16;
                        i12 = i14;
                        if (i16 == i12) {
                            dArr4[0] = dArr4[1];
                            i16 -= 2;
                            i14 = i12;
                            d15 = d10;
                        }
                    }
                    i16 -= 2;
                    i14 = i12;
                    d15 = d10;
                }
                int i18 = i14;
                if ((i15 & 1) == 0) {
                    d15 *= d11;
                }
                d14 *= d13;
                dArr3[i15] = d15 * d14;
                i15++;
                i14 = i18;
                dSCompiler = this;
            }
        }
        compose(dArr, i10, dArr3, dArr2, i11);
    }

    public void checkCompatibility(DSCompiler dSCompiler) throws DimensionMismatchException {
        if (this.parameters != dSCompiler.parameters) {
            throw new DimensionMismatchException(this.parameters, dSCompiler.parameters);
        }
        if (this.order != dSCompiler.order) {
            throw new DimensionMismatchException(this.order, dSCompiler.order);
        }
    }

    public void compose(double[] dArr, int i10, double[] dArr2, double[] dArr3, int i11) {
        int i12 = 0;
        while (true) {
            int[][][] iArr = this.compIndirection;
            if (i12 >= iArr.length) {
                return;
            }
            double d10 = 0.0d;
            for (int[] iArr2 : iArr[i12]) {
                double d11 = iArr2[0] * dArr2[iArr2[1]];
                for (int i13 = 2; i13 < iArr2.length; i13++) {
                    d11 *= dArr[iArr2[i13] + i10];
                }
                d10 += d11;
            }
            dArr3[i11 + i12] = d10;
            i12++;
        }
    }

    public void cos(double[] dArr, int i10, double[] dArr2, int i11) {
        double[] dArr3 = new double[this.order + 1];
        dArr3[0] = FastMath.cos(dArr[i10]);
        if (this.order > 0) {
            dArr3[1] = -FastMath.sin(dArr[i10]);
            for (int i12 = 2; i12 <= this.order; i12++) {
                dArr3[i12] = -dArr3[i12 - 2];
            }
        }
        compose(dArr, i10, dArr3, dArr2, i11);
    }

    public void cosh(double[] dArr, int i10, double[] dArr2, int i11) {
        double[] dArr3 = new double[this.order + 1];
        dArr3[0] = FastMath.cosh(dArr[i10]);
        if (this.order > 0) {
            dArr3[1] = FastMath.sinh(dArr[i10]);
            for (int i12 = 2; i12 <= this.order; i12++) {
                dArr3[i12] = dArr3[i12 - 2];
            }
        }
        compose(dArr, i10, dArr3, dArr2, i11);
    }

    public void divide(double[] dArr, int i10, double[] dArr2, int i11, double[] dArr3, int i12) {
        double[] dArr4 = new double[getSize()];
        pow(dArr2, i10, -1, dArr4, 0);
        multiply(dArr, i10, dArr4, 0, dArr3, i12);
    }

    public void exp(double[] dArr, int i10, double[] dArr2, int i11) {
        double[] dArr3 = new double[this.order + 1];
        Arrays.fill(dArr3, FastMath.exp(dArr[i10]));
        compose(dArr, i10, dArr3, dArr2, i11);
    }

    public void expm1(double[] dArr, int i10, double[] dArr2, int i11) {
        double[] dArr3 = new double[this.order + 1];
        dArr3[0] = FastMath.expm1(dArr[i10]);
        Arrays.fill(dArr3, 1, this.order + 1, FastMath.exp(dArr[i10]));
        compose(dArr, i10, dArr3, dArr2, i11);
    }

    public int getFreeParameters() {
        return this.parameters;
    }

    public int getOrder() {
        return this.order;
    }

    public int getPartialDerivativeIndex(int... iArr) throws DimensionMismatchException, NumberIsTooLargeException {
        if (iArr.length == getFreeParameters()) {
            return getPartialDerivativeIndex(this.parameters, this.order, this.sizes, iArr);
        }
        throw new DimensionMismatchException(iArr.length, getFreeParameters());
    }

    public int[] getPartialDerivativeOrders(int i10) {
        return this.derivativesIndirection[i10];
    }

    public int getSize() {
        return this.sizes[this.parameters][this.order];
    }

    public void linearCombination(double d10, double[] dArr, int i10, double d11, double[] dArr2, int i11, double[] dArr3, int i12) {
        for (int i13 = 0; i13 < getSize(); i13++) {
            dArr3[i12 + i13] = MathArrays.linearCombination(d10, dArr[i10 + i13], d11, dArr2[i11 + i13]);
        }
    }

    public void log(double[] dArr, int i10, double[] dArr2, int i11) {
        double[] dArr3 = new double[this.order + 1];
        dArr3[0] = FastMath.log(dArr[i10]);
        if (this.order > 0) {
            double d10 = 1.0d / dArr[i10];
            double d11 = d10;
            for (int i12 = 1; i12 <= this.order; i12++) {
                dArr3[i12] = d11;
                d11 *= (-i12) * d10;
            }
        }
        compose(dArr, i10, dArr3, dArr2, i11);
    }

    public void log10(double[] dArr, int i10, double[] dArr2, int i11) {
        double[] dArr3 = new double[this.order + 1];
        dArr3[0] = FastMath.log10(dArr[i10]);
        if (this.order > 0) {
            double d10 = 1.0d / dArr[i10];
            double log = d10 / FastMath.log(10.0d);
            for (int i12 = 1; i12 <= this.order; i12++) {
                dArr3[i12] = log;
                log *= (-i12) * d10;
            }
        }
        compose(dArr, i10, dArr3, dArr2, i11);
    }

    public void log1p(double[] dArr, int i10, double[] dArr2, int i11) {
        double[] dArr3 = new double[this.order + 1];
        dArr3[0] = FastMath.log1p(dArr[i10]);
        if (this.order > 0) {
            double d10 = 1.0d / (dArr[i10] + 1.0d);
            double d11 = d10;
            for (int i12 = 1; i12 <= this.order; i12++) {
                dArr3[i12] = d11;
                d11 *= (-i12) * d10;
            }
        }
        compose(dArr, i10, dArr3, dArr2, i11);
    }

    public void multiply(double[] dArr, int i10, double[] dArr2, int i11, double[] dArr3, int i12) {
        int i13 = 0;
        while (true) {
            int[][][] iArr = this.multIndirection;
            if (i13 >= iArr.length) {
                return;
            }
            double d10 = 0.0d;
            for (int[] iArr2 : iArr[i13]) {
                d10 += iArr2[0] * dArr[iArr2[1] + i10] * dArr2[i11 + iArr2[2]];
            }
            dArr3[i12 + i13] = d10;
            i13++;
        }
    }

    public void pow(double d10, double[] dArr, int i10, double[] dArr2, int i11) {
        int i12 = 1;
        int i13 = this.order + 1;
        double[] dArr3 = new double[i13];
        if (d10 == 0.0d) {
            double d11 = dArr[i10];
            if (d11 == 0.0d) {
                dArr3[0] = 1.0d;
                double d12 = Double.POSITIVE_INFINITY;
                while (i12 < i13) {
                    d12 = -d12;
                    dArr3[i12] = d12;
                    i12++;
                }
            } else if (d11 < 0.0d) {
                Arrays.fill(dArr3, Double.NaN);
            }
        } else {
            dArr3[0] = FastMath.pow(d10, dArr[i10]);
            double log = FastMath.log(d10);
            while (i12 < i13) {
                dArr3[i12] = dArr3[i12 - 1] * log;
                i12++;
            }
        }
        compose(dArr, i10, dArr3, dArr2, i11);
    }

    public void remainder(double[] dArr, int i10, double[] dArr2, int i11, double[] dArr3, int i12) {
        double IEEEremainder = FastMath.IEEEremainder(dArr[i10], dArr2[i11]);
        double rint = FastMath.rint((dArr[i10] - IEEEremainder) / dArr2[i11]);
        dArr3[i12] = IEEEremainder;
        for (int i13 = 1; i13 < getSize(); i13++) {
            dArr3[i12 + i13] = dArr[i10 + i13] - (dArr2[i11 + i13] * rint);
        }
    }

    public void rootN(double[] dArr, int i10, int i11, double[] dArr2, int i12) {
        double pow;
        double[] dArr3 = new double[this.order + 1];
        if (i11 == 2) {
            double sqrt = FastMath.sqrt(dArr[i10]);
            dArr3[0] = sqrt;
            pow = 0.5d / sqrt;
        } else if (i11 == 3) {
            double cbrt = FastMath.cbrt(dArr[i10]);
            dArr3[0] = cbrt;
            pow = 1.0d / ((3.0d * cbrt) * cbrt);
        } else {
            double d10 = i11;
            double pow2 = FastMath.pow(dArr[i10], 1.0d / d10);
            dArr3[0] = pow2;
            pow = 1.0d / (d10 * FastMath.pow(pow2, i11 - 1));
        }
        double d11 = 1.0d / i11;
        double d12 = 1.0d / dArr[i10];
        for (int i13 = 1; i13 <= this.order; i13++) {
            dArr3[i13] = pow;
            pow *= (d11 - i13) * d12;
        }
        compose(dArr, i10, dArr3, dArr2, i12);
    }

    public void sin(double[] dArr, int i10, double[] dArr2, int i11) {
        double[] dArr3 = new double[this.order + 1];
        dArr3[0] = FastMath.sin(dArr[i10]);
        if (this.order > 0) {
            dArr3[1] = FastMath.cos(dArr[i10]);
            for (int i12 = 2; i12 <= this.order; i12++) {
                dArr3[i12] = -dArr3[i12 - 2];
            }
        }
        compose(dArr, i10, dArr3, dArr2, i11);
    }

    public void sinh(double[] dArr, int i10, double[] dArr2, int i11) {
        double[] dArr3 = new double[this.order + 1];
        dArr3[0] = FastMath.sinh(dArr[i10]);
        if (this.order > 0) {
            dArr3[1] = FastMath.cosh(dArr[i10]);
            for (int i12 = 2; i12 <= this.order; i12++) {
                dArr3[i12] = dArr3[i12 - 2];
            }
        }
        compose(dArr, i10, dArr3, dArr2, i11);
    }

    public void subtract(double[] dArr, int i10, double[] dArr2, int i11, double[] dArr3, int i12) {
        for (int i13 = 0; i13 < getSize(); i13++) {
            dArr3[i12 + i13] = dArr[i10 + i13] - dArr2[i11 + i13];
        }
    }

    public void tan(double[] dArr, int i10, double[] dArr2, int i11) {
        int i12;
        double d10;
        int i13;
        double d11;
        boolean z10;
        double[] dArr3 = new double[this.order + 1];
        double tan = FastMath.tan(dArr[i10]);
        boolean z11 = false;
        dArr3[0] = tan;
        int i14 = this.order;
        if (i14 > 0) {
            int i15 = 2;
            double[] dArr4 = new double[i14 + 2];
            dArr4[1] = 1.0d;
            double d12 = tan * tan;
            int i16 = 1;
            while (i16 <= this.order) {
                int i17 = i16 + 1;
                dArr4[i17] = i16 * dArr4[i16];
                double d13 = 0.0d;
                int i18 = i17;
                while (i18 >= 0) {
                    double d14 = (d13 * d12) + dArr4[i18];
                    if (i18 > i15) {
                        int i19 = i18 - 1;
                        d10 = d12;
                        double d15 = i19 * dArr4[i19];
                        int i20 = i18 - 3;
                        i13 = i17;
                        d11 = d14;
                        dArr4[i18 - 2] = d15 + (i20 * dArr4[i20]);
                        i12 = 2;
                    } else {
                        i12 = i15;
                        d10 = d12;
                        i13 = i17;
                        d11 = d14;
                        if (i18 == i12) {
                            z10 = false;
                            dArr4[0] = dArr4[1];
                            i18 -= 2;
                            i15 = i12;
                            z11 = z10;
                            d13 = d11;
                            i17 = i13;
                            d12 = d10;
                        }
                    }
                    z10 = false;
                    i18 -= 2;
                    i15 = i12;
                    z11 = z10;
                    d13 = d11;
                    i17 = i13;
                    d12 = d10;
                }
                double d16 = d12;
                int i21 = i17;
                boolean z12 = z11;
                int i22 = i15;
                if ((i16 & 1) == 0) {
                    d13 *= tan;
                }
                dArr3[i16] = d13;
                i15 = i22;
                i16 = i21;
                z11 = z12;
                d12 = d16;
            }
        }
        compose(dArr, i10, dArr3, dArr2, i11);
    }

    public void tanh(double[] dArr, int i10, double[] dArr2, int i11) {
        int i12;
        double d10;
        int i13;
        double d11;
        boolean z10;
        double[] dArr3 = new double[this.order + 1];
        double tanh = FastMath.tanh(dArr[i10]);
        boolean z11 = false;
        dArr3[0] = tanh;
        int i14 = this.order;
        if (i14 > 0) {
            int i15 = 2;
            double[] dArr4 = new double[i14 + 2];
            dArr4[1] = 1.0d;
            double d12 = tanh * tanh;
            int i16 = 1;
            while (i16 <= this.order) {
                int i17 = i16 + 1;
                dArr4[i17] = (-i16) * dArr4[i16];
                double d13 = 0.0d;
                int i18 = i17;
                while (i18 >= 0) {
                    double d14 = (d13 * d12) + dArr4[i18];
                    if (i18 > i15) {
                        int i19 = i18 - 1;
                        d10 = d12;
                        double d15 = i19 * dArr4[i19];
                        int i20 = i18 - 3;
                        i13 = i17;
                        d11 = d14;
                        dArr4[i18 - 2] = d15 - (i20 * dArr4[i20]);
                        i12 = 2;
                    } else {
                        i12 = i15;
                        d10 = d12;
                        i13 = i17;
                        d11 = d14;
                        if (i18 == i12) {
                            z10 = false;
                            dArr4[0] = dArr4[1];
                            i18 -= 2;
                            i15 = i12;
                            z11 = z10;
                            d13 = d11;
                            i17 = i13;
                            d12 = d10;
                        }
                    }
                    z10 = false;
                    i18 -= 2;
                    i15 = i12;
                    z11 = z10;
                    d13 = d11;
                    i17 = i13;
                    d12 = d10;
                }
                double d16 = d12;
                int i21 = i17;
                boolean z12 = z11;
                int i22 = i15;
                if ((i16 & 1) == 0) {
                    d13 *= tanh;
                }
                dArr3[i16] = d13;
                i15 = i22;
                i16 = i21;
                z11 = z12;
                d12 = d16;
            }
        }
        compose(dArr, i10, dArr3, dArr2, i11);
    }

    public double taylor(double[] dArr, int i10, double... dArr2) throws MathArithmeticException {
        double d10 = 0.0d;
        for (int size = getSize() - 1; size >= 0; size--) {
            int[] partialDerivativeOrders = getPartialDerivativeOrders(size);
            double d11 = dArr[i10 + size];
            for (int i11 = 0; i11 < partialDerivativeOrders.length; i11++) {
                int i12 = partialDerivativeOrders[i11];
                if (i12 > 0) {
                    try {
                        d11 *= FastMath.pow(dArr2[i11], i12) / CombinatoricsUtils.factorial(partialDerivativeOrders[i11]);
                    } catch (NotPositiveException e10) {
                        throw new MathInternalError(e10);
                    }
                }
            }
            d10 += d11;
        }
        return d10;
    }

    public void linearCombination(double d10, double[] dArr, int i10, double d11, double[] dArr2, int i11, double d12, double[] dArr3, int i12, double[] dArr4, int i13) {
        for (int i14 = 0; i14 < getSize(); i14++) {
            dArr4[i13 + i14] = MathArrays.linearCombination(d10, dArr[i10 + i14], d11, dArr2[i11 + i14], d12, dArr3[i12 + i14]);
        }
    }

    private static int getPartialDerivativeIndex(int i10, int i11, int[][] iArr, int... iArr2) throws NumberIsTooLargeException {
        int i12 = 0;
        int i13 = i11;
        int i14 = 0;
        for (int i15 = i10 - 1; i15 >= 0; i15--) {
            int i16 = iArr2[i15];
            i14 += i16;
            if (i14 > i11) {
                throw new NumberIsTooLargeException(Integer.valueOf(i14), Integer.valueOf(i11), true);
            }
            while (true) {
                int i17 = i16 - 1;
                if (i16 > 0) {
                    i12 += iArr[i15][i13];
                    i16 = i17;
                    i13--;
                }
            }
        }
        return i12;
    }

    public void linearCombination(double d10, double[] dArr, int i10, double d11, double[] dArr2, int i11, double d12, double[] dArr3, int i12, double d13, double[] dArr4, int i13, double[] dArr5, int i14) {
        for (int i15 = 0; i15 < getSize(); i15++) {
            dArr5[i14 + i15] = MathArrays.linearCombination(d10, dArr[i10 + i15], d11, dArr2[i11 + i15], d12, dArr3[i12 + i15], d13, dArr4[i13 + i15]);
        }
    }

    public void pow(double[] dArr, int i10, double d10, double[] dArr2, int i11) {
        int i12 = this.order;
        double[] dArr3 = new double[i12 + 1];
        double pow = FastMath.pow(dArr[i10], d10 - i12);
        for (int i13 = this.order; i13 > 0; i13--) {
            dArr3[i13] = pow;
            pow *= dArr[i10];
        }
        dArr3[0] = pow;
        double d11 = d10;
        for (int i14 = 1; i14 <= this.order; i14++) {
            dArr3[i14] = dArr3[i14] * d11;
            d11 *= d10 - i14;
        }
        compose(dArr, i10, dArr3, dArr2, i11);
    }

    public void pow(double[] dArr, int i10, int i11, double[] dArr2, int i12) {
        if (i11 == 0) {
            dArr2[i12] = 1.0d;
            Arrays.fill(dArr2, i12 + 1, i12 + getSize(), 0.0d);
            return;
        }
        int i13 = this.order;
        double[] dArr3 = new double[i13 + 1];
        if (i11 > 0) {
            int min = FastMath.min(i13, i11);
            double pow = FastMath.pow(dArr[i10], i11 - min);
            while (min > 0) {
                dArr3[min] = pow;
                pow *= dArr[i10];
                min--;
            }
            dArr3[0] = pow;
        } else {
            double d10 = 1.0d / dArr[i10];
            double pow2 = FastMath.pow(d10, -i11);
            for (int i14 = 0; i14 <= this.order; i14++) {
                dArr3[i14] = pow2;
                pow2 *= d10;
            }
        }
        double d11 = i11;
        for (int i15 = 1; i15 <= this.order; i15++) {
            dArr3[i15] = dArr3[i15] * d11;
            d11 *= i11 - i15;
        }
        compose(dArr, i10, dArr3, dArr2, i12);
    }

    public void pow(double[] dArr, int i10, double[] dArr2, int i11, double[] dArr3, int i12) {
        double[] dArr4 = new double[getSize()];
        log(dArr, i10, dArr4, 0);
        double[] dArr5 = new double[getSize()];
        multiply(dArr4, 0, dArr2, i11, dArr5, 0);
        exp(dArr5, 0, dArr3, i12);
    }
}
