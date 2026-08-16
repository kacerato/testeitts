package org.apache.commons.math3.ode.nonstiff;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.math3.FieldElement;
import org.apache.commons.math3.fraction.BigFraction;
import org.apache.commons.math3.linear.Array2DRowFieldMatrix;
import org.apache.commons.math3.linear.Array2DRowRealMatrix;
import org.apache.commons.math3.linear.ArrayFieldVector;
import org.apache.commons.math3.linear.FieldDecompositionSolver;
import org.apache.commons.math3.linear.FieldLUDecomposition;
import org.apache.commons.math3.linear.FieldMatrix;
import org.apache.commons.math3.linear.MatrixUtils;
import org.apache.commons.math3.linear.QRDecomposition;
import org.apache.commons.math3.linear.RealMatrix;

public class AdamsNordsieckTransformer {
    private static final Map<Integer, AdamsNordsieckTransformer> CACHE = new HashMap();

    private final double[] f100234c1;
    private final Array2DRowRealMatrix update;

    private AdamsNordsieckTransformer(int i10) {
        int i11 = i10 - 1;
        FieldMatrix<BigFraction> buildP = buildP(i11);
        FieldDecompositionSolver solver = new FieldLUDecomposition(buildP).getSolver();
        BigFraction[] bigFractionArr = new BigFraction[i11];
        Arrays.fill(bigFractionArr, BigFraction.ONE);
        BigFraction[] bigFractionArr2 = (BigFraction[]) solver.solve(new ArrayFieldVector((FieldElement[]) bigFractionArr, false)).toArray();
        BigFraction[][] data = buildP.getData();
        for (int length = data.length - 1; length > 0; length--) {
            data[length] = data[length - 1];
        }
        BigFraction[] bigFractionArr3 = new BigFraction[i11];
        data[0] = bigFractionArr3;
        Arrays.fill(bigFractionArr3, BigFraction.ZERO);
        this.update = MatrixUtils.bigFractionMatrixToRealMatrix(solver.solve(new Array2DRowFieldMatrix((FieldElement[][]) data, false)));
        this.f100234c1 = new double[i11];
        for (int i12 = 0; i12 < i11; i12++) {
            this.f100234c1[i12] = bigFractionArr2[i12].doubleValue();
        }
    }

    private FieldMatrix<BigFraction> buildP(int i10) {
        BigFraction[][] bigFractionArr = (BigFraction[][]) Array.newInstance((Class<?>) BigFraction.class, i10, i10);
        for (int i11 = 1; i11 <= bigFractionArr.length; i11++) {
            BigFraction[] bigFractionArr2 = bigFractionArr[i11 - 1];
            int i12 = -i11;
            int i13 = 1;
            int i14 = i12;
            while (i13 <= bigFractionArr2.length) {
                int i15 = i13 - 1;
                i13++;
                bigFractionArr2[i15] = new BigFraction(i14 * i13);
                i14 *= i12;
            }
        }
        return new Array2DRowFieldMatrix((FieldElement[][]) bigFractionArr, false);
    }

    public static AdamsNordsieckTransformer getInstance(int i10) {
        AdamsNordsieckTransformer adamsNordsieckTransformer;
        Map<Integer, AdamsNordsieckTransformer> map = CACHE;
        synchronized (map) {
            try {
                adamsNordsieckTransformer = map.get(Integer.valueOf(i10));
                if (adamsNordsieckTransformer == null) {
                    adamsNordsieckTransformer = new AdamsNordsieckTransformer(i10);
                    map.put(Integer.valueOf(i10), adamsNordsieckTransformer);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return adamsNordsieckTransformer;
    }

    @Deprecated
    public int getNSteps() {
        return this.f100234c1.length;
    }

    public Array2DRowRealMatrix initializeHighOrderDerivatives(double d10, double[] dArr, double[][] dArr2, double[][] dArr3) {
        double d11;
        double[] dArr4 = this.f100234c1;
        int i10 = 1;
        int[] iArr = {dArr4.length + 1, dArr4.length + 1};
        char c10 = 0;
        Class<Double> cls = Double.TYPE;
        double[][] dArr5 = (double[][]) Array.newInstance(cls, iArr);
        double[][] dArr6 = (double[][]) Array.newInstance(cls, this.f100234c1.length + 1, dArr2[0].length);
        double[] dArr7 = dArr2[0];
        double[] dArr8 = dArr3[0];
        int i11 = 1;
        while (i11 < dArr2.length) {
            double d12 = dArr[i11] - dArr[c10];
            double d13 = d12 / d10;
            double d14 = 1.0d / d10;
            int i12 = i11 * 2;
            int i13 = i12 - 2;
            double[] dArr9 = dArr5[i13];
            int i14 = i12 - i10;
            double[] dArr10 = i14 < dArr5.length ? dArr5[i14] : null;
            double[][] dArr11 = dArr5;
            int i15 = 0;
            while (i15 < dArr9.length) {
                d14 *= d13;
                dArr9[i15] = d12 * d14;
                if (dArr10 != null) {
                    d11 = d13;
                    dArr10[i15] = (i15 + 2) * d14;
                } else {
                    d11 = d13;
                }
                i15++;
                d13 = d11;
            }
            double[] dArr12 = dArr2[i11];
            double[] dArr13 = dArr3[i11];
            double[] dArr14 = dArr6[i13];
            double[] dArr15 = i14 < dArr6.length ? dArr6[i14] : null;
            for (int i16 = 0; i16 < dArr12.length; i16++) {
                dArr14[i16] = (dArr12[i16] - dArr7[i16]) - (dArr8[i16] * d12);
                if (dArr15 != null) {
                    dArr15[i16] = dArr13[i16] - dArr8[i16];
                }
            }
            i11++;
            dArr5 = dArr11;
            c10 = 0;
            i10 = 1;
        }
        RealMatrix solve = new QRDecomposition(new Array2DRowRealMatrix(dArr5, false)).getSolver().solve(new Array2DRowRealMatrix(dArr6, false));
        Array2DRowRealMatrix array2DRowRealMatrix = new Array2DRowRealMatrix(solve.getRowDimension() - 1, solve.getColumnDimension());
        for (int i17 = 0; i17 < array2DRowRealMatrix.getRowDimension(); i17++) {
            for (int i18 = 0; i18 < array2DRowRealMatrix.getColumnDimension(); i18++) {
                array2DRowRealMatrix.setEntry(i17, i18, solve.getEntry(i17, i18));
            }
        }
        return array2DRowRealMatrix;
    }

    public Array2DRowRealMatrix updateHighOrderDerivativesPhase1(Array2DRowRealMatrix array2DRowRealMatrix) {
        return this.update.multiply(array2DRowRealMatrix);
    }

    public void updateHighOrderDerivativesPhase2(double[] dArr, double[] dArr2, Array2DRowRealMatrix array2DRowRealMatrix) {
        double[][] dataRef = array2DRowRealMatrix.getDataRef();
        for (int i10 = 0; i10 < dataRef.length; i10++) {
            double[] dArr3 = dataRef[i10];
            double d10 = this.f100234c1[i10];
            for (int i11 = 0; i11 < dArr3.length; i11++) {
                dArr3[i11] = dArr3[i11] + ((dArr[i11] - dArr2[i11]) * d10);
            }
        }
    }
}
