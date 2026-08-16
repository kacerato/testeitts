package org.apache.commons.math3.transform;

import java.io.Serializable;
import java.lang.reflect.Array;
import org.apache.commons.math3.analysis.FunctionUtils;
import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.complex.Complex;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.MathIllegalStateException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.ArithmeticUtils;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;

public class FastFourierTransformer implements Serializable {
    static final boolean $assertionsDisabled = false;
    static final long serialVersionUID = 20120210;
    private final DftNormalization normalization;
    private static final double[] W_SUB_N_R = {1.0d, -1.0d, 6.123233995736766E-17d, 0.7071067811865476d, 0.9238795325112867d, 0.9807852804032304d, 0.9951847266721969d, 0.9987954562051724d, 0.9996988186962042d, 0.9999247018391445d, 0.9999811752826011d, 0.9999952938095762d, 0.9999988234517019d, 0.9999997058628822d, 0.9999999264657179d, 0.9999999816164293d, 0.9999999954041073d, 0.9999999988510269d, 0.9999999997127567d, 0.9999999999281892d, 0.9999999999820472d, 0.9999999999955118d, 0.999999999998878d, 0.9999999999997194d, 0.9999999999999298d, 0.9999999999999825d, 0.9999999999999957d, 0.9999999999999989d, 0.9999999999999998d, 0.9999999999999999d, 1.0d, 1.0d, 1.0d, 1.0d, 1.0d, 1.0d, 1.0d, 1.0d, 1.0d, 1.0d, 1.0d, 1.0d, 1.0d, 1.0d, 1.0d, 1.0d, 1.0d, 1.0d, 1.0d, 1.0d, 1.0d, 1.0d, 1.0d, 1.0d, 1.0d, 1.0d, 1.0d, 1.0d, 1.0d, 1.0d, 1.0d, 1.0d, 1.0d};
    private static final double[] W_SUB_N_I = {2.4492935982947064E-16d, -1.2246467991473532E-16d, -1.0d, -0.7071067811865475d, -0.3826834323650898d, -0.19509032201612825d, -0.0980171403295606d, -0.049067674327418015d, -0.024541228522912288d, -0.012271538285719925d, -0.006135884649154475d, -0.003067956762965976d, -0.0015339801862847655d, -7.669903187427045E-4d, -3.8349518757139556E-4d, -1.917475973107033E-4d, -9.587379909597734E-5d, -4.793689960306688E-5d, -2.396844980841822E-5d, -1.1984224905069705E-5d, -5.9921124526424275E-6d, -2.996056226334661E-6d, -1.4980281131690111E-6d, -7.490140565847157E-7d, -3.7450702829238413E-7d, -1.8725351414619535E-7d, -9.362675707309808E-8d, -4.681337853654909E-8d, -2.340668926827455E-8d, -1.1703344634137277E-8d, -5.8516723170686385E-9d, -2.9258361585343192E-9d, -1.4629180792671596E-9d, -7.314590396335798E-10d, -3.657295198167899E-10d, -1.8286475990839495E-10d, -9.143237995419748E-11d, -4.571618997709874E-11d, -2.285809498854937E-11d, -1.1429047494274685E-11d, -5.714523747137342E-12d, -2.857261873568671E-12d, -1.4286309367843356E-12d, -7.143154683921678E-13d, -3.571577341960839E-13d, -1.7857886709804195E-13d, -8.928943354902097E-14d, -4.4644716774510487E-14d, -2.2322358387255243E-14d, -1.1161179193627622E-14d, -5.580589596813811E-15d, -2.7902947984069054E-15d, -1.3951473992034527E-15d, -6.975736996017264E-16d, -3.487868498008632E-16d, -1.743934249004316E-16d, -8.71967124502158E-17d, -4.35983562251079E-17d, -2.179917811255395E-17d, -1.0899589056276974E-17d, -5.449794528138487E-18d, -2.7248972640692436E-18d, -1.3624486320346218E-18d};

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$org$apache$commons$math3$transform$DftNormalization;

        static {
            int[] iArr = new int[DftNormalization.values().length];
            $SwitchMap$org$apache$commons$math3$transform$DftNormalization = iArr;
            try {
                iArr[DftNormalization.STANDARD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$transform$DftNormalization[DftNormalization.UNITARY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public FastFourierTransformer(DftNormalization dftNormalization) {
        this.normalization = dftNormalization;
    }

    private static void bitReversalShuffle2(double[] dArr, double[] dArr2) {
        int length = dArr.length;
        int i10 = length >> 1;
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12++) {
            if (i12 < i11) {
                double d10 = dArr[i12];
                dArr[i12] = dArr[i11];
                dArr[i11] = d10;
                double d11 = dArr2[i12];
                dArr2[i12] = dArr2[i11];
                dArr2[i11] = d11;
            }
            int i13 = i10;
            while (i13 <= i11 && i13 > 0) {
                i11 -= i13;
                i13 >>= 1;
            }
            i11 += i13;
        }
    }

    private static void normalizeTransformedData(double[][] dArr, DftNormalization dftNormalization, TransformType transformType) {
        int i10 = 0;
        double[] dArr2 = dArr[0];
        double[] dArr3 = dArr[1];
        int length = dArr2.length;
        int i11 = AnonymousClass1.$SwitchMap$org$apache$commons$math3$transform$DftNormalization[dftNormalization.ordinal()];
        if (i11 != 1) {
            if (i11 != 2) {
                throw new MathIllegalStateException();
            }
            double sqrt = 1.0d / FastMath.sqrt(length);
            while (i10 < length) {
                dArr2[i10] = dArr2[i10] * sqrt;
                dArr3[i10] = dArr3[i10] * sqrt;
                i10++;
            }
            return;
        }
        if (transformType == TransformType.INVERSE) {
            double d10 = 1.0d / length;
            while (i10 < length) {
                dArr2[i10] = dArr2[i10] * d10;
                dArr3[i10] = dArr3[i10] * d10;
                i10++;
            }
        }
    }

    public static void transformInPlace(double[][] dArr, DftNormalization dftNormalization, TransformType transformType) {
        int i10 = 2;
        if (dArr.length != 2) {
            throw new DimensionMismatchException(dArr.length, 2);
        }
        int i11 = 0;
        double[] dArr2 = dArr[0];
        double[] dArr3 = dArr[1];
        if (dArr2.length != dArr3.length) {
            throw new DimensionMismatchException(dArr3.length, dArr2.length);
        }
        int length = dArr2.length;
        if (!ArithmeticUtils.isPowerOfTwo(length)) {
            throw new MathIllegalArgumentException(LocalizedFormats.NOT_POWER_OF_TWO_CONSIDER_PADDING, Integer.valueOf(length));
        }
        if (length == 1) {
            return;
        }
        if (length == 2) {
            double d10 = dArr2[0];
            double d11 = dArr3[0];
            double d12 = dArr2[1];
            double d13 = dArr3[1];
            dArr2[0] = d10 + d12;
            dArr3[0] = d11 + d13;
            dArr2[1] = d10 - d12;
            dArr3[1] = d11 - d13;
            normalizeTransformedData(dArr, dftNormalization, transformType);
            return;
        }
        bitReversalShuffle2(dArr2, dArr3);
        if (transformType == TransformType.INVERSE) {
            for (int i12 = 0; i12 < length; i12 += 4) {
                int i13 = i12 + 1;
                int i14 = i12 + 2;
                int i15 = i12 + 3;
                double d14 = dArr2[i12];
                double d15 = dArr3[i12];
                double d16 = dArr2[i14];
                double d17 = dArr3[i14];
                double d18 = dArr2[i13];
                double d19 = dArr3[i13];
                double d20 = dArr2[i15];
                double d21 = dArr3[i15];
                dArr2[i12] = d14 + d16 + d18 + d20;
                dArr3[i12] = d15 + d17 + d19 + d21;
                double d22 = d14 - d18;
                dArr2[i13] = d22 + (d21 - d17);
                double d23 = d15 - d19;
                dArr3[i13] = d23 + (d16 - d20);
                dArr2[i14] = ((d14 - d16) + d18) - d20;
                dArr3[i14] = ((d15 - d17) + d19) - d21;
                dArr2[i15] = d22 + (d17 - d21);
                dArr3[i15] = d23 + (d20 - d16);
            }
        } else {
            for (int i16 = 0; i16 < length; i16 += 4) {
                int i17 = i16 + 1;
                int i18 = i16 + 2;
                int i19 = i16 + 3;
                double d24 = dArr2[i16];
                double d25 = dArr3[i16];
                double d26 = dArr2[i18];
                double d27 = dArr3[i18];
                double d28 = dArr2[i17];
                double d29 = dArr3[i17];
                double d30 = dArr2[i19];
                double d31 = dArr3[i19];
                dArr2[i16] = d24 + d26 + d28 + d30;
                dArr3[i16] = d25 + d27 + d29 + d31;
                double d32 = d24 - d28;
                dArr2[i17] = d32 + (d27 - d31);
                double d33 = d25 - d29;
                dArr3[i17] = d33 + (d30 - d26);
                dArr2[i18] = ((d24 - d26) + d28) - d30;
                dArr3[i18] = ((d25 - d27) + d29) - d31;
                dArr2[i19] = d32 + (d31 - d27);
                dArr3[i19] = d33 + (d26 - d30);
            }
        }
        int i20 = 4;
        while (i20 < length) {
            int i21 = i20 << 1;
            i10++;
            double d34 = W_SUB_N_R[i10];
            double d35 = W_SUB_N_I[i10];
            if (transformType == TransformType.INVERSE) {
                d35 = -d35;
            }
            int i22 = i11;
            while (i22 < length) {
                int i23 = i22 + i20;
                double d36 = 1.0d;
                double d37 = 0.0d;
                while (i11 < i20) {
                    int i24 = i22 + i11;
                    double d38 = dArr2[i24];
                    double d39 = dArr3[i24];
                    int i25 = i23 + i11;
                    double d40 = dArr2[i25];
                    double d41 = dArr3[i25];
                    double d42 = d36 * d40;
                    double d43 = d37 * d41;
                    dArr2[i24] = (d38 + d42) - d43;
                    double d44 = d41 * d36;
                    double d45 = d40 * d37;
                    dArr3[i24] = d39 + d44 + d45;
                    dArr2[i25] = d38 - (d42 - d43);
                    dArr3[i25] = d39 - (d44 + d45);
                    double d46 = (d36 * d34) - (d37 * d35);
                    d37 = (d36 * d35) + (d37 * d34);
                    i11++;
                    d36 = d46;
                }
                i22 += i21;
                i11 = 0;
            }
            i20 = i21;
        }
        normalizeTransformedData(dArr, dftNormalization, transformType);
    }

    @Deprecated
    public Object mdfft(Object obj, TransformType transformType) {
        MultiDimensionalComplexMatrix multiDimensionalComplexMatrix = (MultiDimensionalComplexMatrix) new MultiDimensionalComplexMatrix(obj).clone();
        int[] dimensionSizes = multiDimensionalComplexMatrix.getDimensionSizes();
        for (int i10 = 0; i10 < dimensionSizes.length; i10++) {
            mdfft(multiDimensionalComplexMatrix, transformType, i10, new int[0]);
        }
        return multiDimensionalComplexMatrix.getArray();
    }

    public Complex[] transform(double[] dArr, TransformType transformType) {
        double[][] dArr2 = {MathArrays.copyOf(dArr, dArr.length), new double[dArr.length]};
        transformInPlace(dArr2, this.normalization, transformType);
        return TransformUtils.createComplexArray(dArr2);
    }

    @Deprecated
    public static class MultiDimensionalComplexMatrix implements Cloneable {
        protected int[] dimensionSize;
        protected Object multiDimensionalComplexArray;

        public MultiDimensionalComplexMatrix(Object obj) {
            this.multiDimensionalComplexArray = obj;
            int i10 = 0;
            for (Object obj2 = obj; obj2 instanceof Object[]; obj2 = obj2[0]) {
                i10++;
            }
            this.dimensionSize = new int[i10];
            int i11 = 0;
            while (obj instanceof Object[]) {
                Object[] objArr = obj;
                this.dimensionSize[i11] = objArr.length;
                obj = objArr[0];
                i11++;
            }
        }

        public Object clone() {
            MultiDimensionalComplexMatrix multiDimensionalComplexMatrix = new MultiDimensionalComplexMatrix(Array.newInstance((Class<?>) Complex.class, this.dimensionSize));
            clone(multiDimensionalComplexMatrix);
            return multiDimensionalComplexMatrix;
        }

        public Complex get(int... iArr) throws DimensionMismatchException {
            if (iArr == null) {
                if (this.dimensionSize.length <= 0) {
                    return null;
                }
                throw new DimensionMismatchException(0, this.dimensionSize.length);
            }
            if (iArr.length != this.dimensionSize.length) {
                throw new DimensionMismatchException(iArr.length, this.dimensionSize.length);
            }
            Object obj = this.multiDimensionalComplexArray;
            for (int i10 = 0; i10 < this.dimensionSize.length; i10++) {
                obj = ((Object[]) obj)[iArr[i10]];
            }
            return (Complex) obj;
        }

        public Object getArray() {
            return this.multiDimensionalComplexArray;
        }

        public int[] getDimensionSizes() {
            return (int[]) this.dimensionSize.clone();
        }

        public Complex set(Complex complex, int... iArr) throws DimensionMismatchException {
            int i10 = 0;
            if (iArr == null) {
                if (this.dimensionSize.length <= 0) {
                    return null;
                }
                throw new DimensionMismatchException(0, this.dimensionSize.length);
            }
            if (iArr.length != this.dimensionSize.length) {
                throw new DimensionMismatchException(iArr.length, this.dimensionSize.length);
            }
            Object[] objArr = (Object[]) this.multiDimensionalComplexArray;
            while (true) {
                int[] iArr2 = this.dimensionSize;
                if (i10 >= iArr2.length - 1) {
                    Complex complex2 = (Complex) objArr[iArr[iArr2.length - 1]];
                    objArr[iArr[iArr2.length - 1]] = complex;
                    return complex2;
                }
                objArr = (Object[]) objArr[iArr[i10]];
                i10++;
            }
        }

        private void clone(MultiDimensionalComplexMatrix multiDimensionalComplexMatrix) {
            int[] iArr;
            int[] iArr2 = new int[this.dimensionSize.length];
            int i10 = 1;
            int i11 = 0;
            while (true) {
                iArr = this.dimensionSize;
                if (i11 >= iArr.length) {
                    break;
                }
                i10 *= iArr[i11];
                i11++;
            }
            int[][] iArr3 = (int[][]) Array.newInstance(Integer.TYPE, i10, iArr.length);
            for (int[] iArr4 : iArr3) {
                System.arraycopy(iArr2, 0, iArr4, 0, this.dimensionSize.length);
                int i12 = 0;
                while (true) {
                    int[] iArr5 = this.dimensionSize;
                    if (i12 < iArr5.length) {
                        int i13 = iArr2[i12] + 1;
                        iArr2[i12] = i13;
                        if (i13 < iArr5[i12]) {
                            break;
                        }
                        iArr2[i12] = 0;
                        i12++;
                    }
                }
            }
            for (int[] iArr6 : iArr3) {
                multiDimensionalComplexMatrix.set(get(iArr6), iArr6);
            }
        }
    }

    public Complex[] transform(UnivariateFunction univariateFunction, double d10, double d11, int i10, TransformType transformType) {
        return transform(FunctionUtils.sample(univariateFunction, d10, d11, i10), transformType);
    }

    @Deprecated
    private void mdfft(MultiDimensionalComplexMatrix multiDimensionalComplexMatrix, TransformType transformType, int i10, int[] iArr) {
        int[] dimensionSizes = multiDimensionalComplexMatrix.getDimensionSizes();
        int i11 = 0;
        if (iArr.length == dimensionSizes.length) {
            Complex[] complexArr = new Complex[dimensionSizes[i10]];
            for (int i12 = 0; i12 < dimensionSizes[i10]; i12++) {
                iArr[i10] = i12;
                complexArr[i12] = multiDimensionalComplexMatrix.get(iArr);
            }
            Complex[] transform = transform(complexArr, transformType);
            while (i11 < dimensionSizes[i10]) {
                iArr[i10] = i11;
                multiDimensionalComplexMatrix.set(transform[i11], iArr);
                i11++;
            }
            return;
        }
        int[] iArr2 = new int[iArr.length + 1];
        System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
        if (iArr.length == i10) {
            iArr2[i10] = 0;
            mdfft(multiDimensionalComplexMatrix, transformType, i10, iArr2);
        } else {
            while (i11 < dimensionSizes[iArr.length]) {
                iArr2[iArr.length] = i11;
                mdfft(multiDimensionalComplexMatrix, transformType, i10, iArr2);
                i11++;
            }
        }
    }

    public Complex[] transform(Complex[] complexArr, TransformType transformType) {
        double[][] createRealImaginaryArray = TransformUtils.createRealImaginaryArray(complexArr);
        transformInPlace(createRealImaginaryArray, this.normalization, transformType);
        return TransformUtils.createComplexArray(createRealImaginaryArray);
    }
}
