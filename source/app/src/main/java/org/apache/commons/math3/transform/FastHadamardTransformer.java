package org.apache.commons.math3.transform;

import java.io.Serializable;
import org.apache.commons.math3.analysis.FunctionUtils;
import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.ArithmeticUtils;

public class FastHadamardTransformer implements RealTransformer, Serializable {
    static final long serialVersionUID = 20120211;

    public double[] fht(double[] dArr) throws MathIllegalArgumentException {
        int length = dArr.length;
        int i10 = length / 2;
        if (ArithmeticUtils.isPowerOfTwo(length)) {
            double[] dArr2 = new double[length];
            double[] dArr3 = (double[]) dArr.clone();
            int i11 = 1;
            while (true) {
                double[] dArr4 = dArr2;
                dArr2 = dArr3;
                dArr3 = dArr4;
                if (i11 >= length) {
                    return dArr2;
                }
                for (int i12 = 0; i12 < i10; i12++) {
                    int i13 = i12 * 2;
                    dArr3[i12] = dArr2[i13] + dArr2[i13 + 1];
                }
                for (int i14 = i10; i14 < length; i14++) {
                    int i15 = (i14 * 2) - length;
                    dArr3[i14] = dArr2[i15] - dArr2[i15 + 1];
                }
                i11 <<= 1;
            }
        } else {
            throw new MathIllegalArgumentException(LocalizedFormats.NOT_POWER_OF_TWO, Integer.valueOf(length));
        }
    }

    @Override
    public double[] transform(double[] dArr, TransformType transformType) {
        if (transformType == TransformType.FORWARD) {
            return fht(dArr);
        }
        return TransformUtils.scaleArray(fht(dArr), 1.0d / dArr.length);
    }

    @Override
    public double[] transform(UnivariateFunction univariateFunction, double d10, double d11, int i10, TransformType transformType) {
        return transform(FunctionUtils.sample(univariateFunction, d10, d11, i10), transformType);
    }

    public int[] transform(int[] iArr) {
        return fht(iArr);
    }

    public int[] fht(int[] iArr) throws MathIllegalArgumentException {
        int length = iArr.length;
        int i10 = length / 2;
        if (ArithmeticUtils.isPowerOfTwo(length)) {
            int[] iArr2 = new int[length];
            int[] iArr3 = (int[]) iArr.clone();
            int i11 = 1;
            while (true) {
                int[] iArr4 = iArr2;
                iArr2 = iArr3;
                iArr3 = iArr4;
                if (i11 >= length) {
                    return iArr2;
                }
                for (int i12 = 0; i12 < i10; i12++) {
                    int i13 = i12 * 2;
                    iArr3[i12] = iArr2[i13] + iArr2[i13 + 1];
                }
                for (int i14 = i10; i14 < length; i14++) {
                    int i15 = (i14 * 2) - length;
                    iArr3[i14] = iArr2[i15] - iArr2[i15 + 1];
                }
                i11 <<= 1;
            }
        } else {
            throw new MathIllegalArgumentException(LocalizedFormats.NOT_POWER_OF_TWO, Integer.valueOf(length));
        }
    }
}
