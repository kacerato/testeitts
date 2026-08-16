package org.apache.commons.math3.transform;

import java.io.Serializable;
import org.apache.commons.math3.analysis.FunctionUtils;
import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.complex.Complex;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.ArithmeticUtils;
import org.apache.commons.math3.util.FastMath;

public class FastSineTransformer implements RealTransformer, Serializable {
    static final long serialVersionUID = 20120211;
    private final DstNormalization normalization;

    public FastSineTransformer(DstNormalization dstNormalization) {
        this.normalization = dstNormalization;
    }

    public double[] fst(double[] dArr) throws MathIllegalArgumentException {
        double[] dArr2 = new double[dArr.length];
        if (!ArithmeticUtils.isPowerOfTwo(dArr.length)) {
            throw new MathIllegalArgumentException(LocalizedFormats.NOT_POWER_OF_TWO_CONSIDER_PADDING, Integer.valueOf(dArr.length));
        }
        if (dArr[0] != 0.0d) {
            throw new MathIllegalArgumentException(LocalizedFormats.FIRST_ELEMENT_NOT_ZERO, Double.valueOf(dArr[0]));
        }
        int length = dArr.length;
        if (length == 1) {
            dArr2[0] = 0.0d;
            return dArr2;
        }
        double[] dArr3 = new double[length];
        dArr3[0] = 0.0d;
        int i10 = length >> 1;
        dArr3[i10] = dArr[i10] * 2.0d;
        for (int i11 = 1; i11 < i10; i11++) {
            double sin = FastMath.sin((i11 * 3.141592653589793d) / length);
            double d10 = dArr[i11];
            int i12 = length - i11;
            double d11 = dArr[i12];
            double d12 = sin * (d10 + d11);
            double d13 = (d10 - d11) * 0.5d;
            dArr3[i11] = d12 + d13;
            dArr3[i12] = d12 - d13;
        }
        Complex[] transform = new FastFourierTransformer(DftNormalization.STANDARD).transform(dArr3, TransformType.FORWARD);
        dArr2[0] = 0.0d;
        dArr2[1] = transform[0].getReal() * 0.5d;
        for (int i13 = 1; i13 < i10; i13++) {
            int i14 = i13 * 2;
            dArr2[i14] = -transform[i13].getImaginary();
            dArr2[i14 + 1] = transform[i13].getReal() + dArr2[i14 - 1];
        }
        return dArr2;
    }

    @Override
    public double[] transform(double[] dArr, TransformType transformType) {
        if (this.normalization == DstNormalization.ORTHOGONAL_DST_I) {
            return TransformUtils.scaleArray(fst(dArr), FastMath.sqrt(2.0d / dArr.length));
        }
        if (transformType == TransformType.FORWARD) {
            return fst(dArr);
        }
        return TransformUtils.scaleArray(fst(dArr), 2.0d / dArr.length);
    }

    @Override
    public double[] transform(UnivariateFunction univariateFunction, double d10, double d11, int i10, TransformType transformType) {
        double[] sample = FunctionUtils.sample(univariateFunction, d10, d11, i10);
        sample[0] = 0.0d;
        return transform(sample, transformType);
    }
}
